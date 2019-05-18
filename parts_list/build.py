import os
import re
import csv
import glob
from xlsxwriter.workbook import Workbook
import math
from collections import defaultdict
from collections import defaultdict

# Read in parts list for for each Mechanical subassembly
build_docs = [i for i in glob.glob('../Mechanical{sep}**{sep}Latex Docs{sep}**.tex'
                                   .format(sep=os.sep))]
# Also read in parts lists in all the Electrical build documents
build_docs = build_docs + [i for i in glob.glob('../Electrical{sep}Latex Docs{sep}**{sep}**.tex'
                                   .format(sep=os.sep))]

# We know its a parts list table by the formatting of the cells
table_pattern = r"\\begin{tabular}{\|N\|Q\|Q\|I\|N\|Q\|Q\|I\|}(.*?)\\end{tabular}"
row_pattern = r"\\hline\s+(.*?)\s+\\\\"
price_pattern = r"([\d.]+)"

sub_assembly_part_counts = defaultdict(lambda: {'count': 0, 'sections': set(), 'name': ''})
# Loop over each latex file
for build_doc in build_docs:
    section_name = build_doc.split(os.sep)[-1].split('.tex')[0].split(' Build Doc')[0]
    with open(build_doc, 'r') as f:
        # Find all of the part list tables in the doc
        tables = re.finditer(table_pattern, f.read(), re.MULTILINE | re.DOTALL)
        for table in tables:
            # Get the rows of each table in the build doc
            rows = re.finditer(row_pattern, table.group(1), re.MULTILINE | re.DOTALL)
            for idx, row in enumerate(rows):
                if idx == 0:
                    # ignore the first header row
                    continue
                fields = row.group(1).split('&')
                fields = list(map(str.strip, fields))

                # The table is 2 parts wide, get both parts from the row
                for part in [fields[:3], fields[4:-1]]:
                    name, number, count = part
                    # Check if the row is not blank and the part is not modified
                    if name != '' and str.isnumeric(number[-1:]):
                        sub_assembly_part_counts[number]['name'] = name
                        sub_assembly_part_counts[number]['sections'].add(section_name)
                        sub_assembly_part_counts[number]['count'] += int(count) if (count != '' and count != 'N/A') else 0


master_parts_list = []
# Read in the parts reference info and use to create the master list of parts
with open('parts_list_reference.csv') as f:
    reader = csv.DictReader(f)
    for row in reader:
        part_details = dict(row)

        ref_code = part_details['Project Ref Code']

        part_details['Sold in Packs of'] = int(part_details['Sold in Packs of'])
        # Try and get the count of parts from the build documents.  If this fails, default to quantity 1.
        if not part_details['Total Used in Project override']:
            total_count = sub_assembly_part_counts.get(ref_code, {}).get('count', 1)
        else:
            # Override the calculated parts count if needed
            total_count = int(part_details['Total Used in Project override'])
        part_details['Total Used in Project'] = 1 if total_count == 0 else total_count
        # Make one value a float to have proper division
        part_details['Quantity to Buy'] = (math.ceil(part_details['Total Used in Project'] /
                                           float(part_details['Sold in Packs of'])))

        # Calc the total price of the parts needed
        part_details['Price Total'] = ''
        if part_details['Price Each'].strip():
            price_each_parse = re.search(price_pattern, part_details['Price Each'])
            if price_each_parse:
                price_each = float(price_each_parse.group(1))
                price_total = part_details['Quantity to Buy'] * price_each
                part_details['Price Total'] = '${0:.2f}'.format(price_total)

        # See what sections this part is used in
        sections = list(sub_assembly_part_counts.get(ref_code, {}).get('sections', []))
        sections.sort()
        part_details['Used in Sections'] = ', '.join(sections)

        master_parts_list.append(part_details)

        # remove part from sub_assembly_part_counts, this way we can see what is left over
        if ref_code in sub_assembly_part_counts:
            del sub_assembly_part_counts[ref_code]

# These are the parts that were not in the parts reference but found in the build docs
# Add to master parts list as quantity 1
print(("\nThese parts were found in the build docs but not in the parts_list_reference.csv"
       "\nWill default to quantity of 1 in the master list\n"))
for part_ref, part_data in sub_assembly_part_counts.items():
    master_parts_list.append({'Project Ref Code': part_ref,
                              'Part Name': part_data['name'],
                              'Total Used in Project': 1,
                              'Used in Sections': ', '.join(list(part_data['sections']))})
    print("\t", part_ref, "-", part_data['name'])

# Write a master .csv file
with open('master_parts_list_raw.csv', 'w') as f:
    # Hardcode the list to be in the order that we want
    fieldnames = ['Part Name',
                  'Project Ref Code',
                  'Model/Config',
                  'Site',
                  'Link',
                  'Sold in Packs of',
                  'Total Used in Project',
                  'Quantity to Buy',
                  'Price Each',
                  'Price Total',
                  'Used in Sections',
                  ]
    writer = csv.DictWriter(f, fieldnames=fieldnames, extrasaction='ignore')

    writer.writeheader()
    writer.writerows(master_parts_list)

# We also wish to create a formatted .xlsx file with the JPL disclaimers and format that matches the old master parts list
workbook = Workbook('../master_parts_list.xlsx', {'strings_to_numbers': True})
worksheet = workbook.add_worksheet('Sheet1')
# Write header information
worksheet.write('A1', 'The cost information contained in this document is of a budgetary and planning nature and is intended for informational purposes only.  It does not constitute a commitment on the part of JPL and/or Caltech.')
worksheet.write('A2', 'Authors: Eric Junkins, Michael (Mik) Cox, Jet Propulsion Laboratory, California Institute of Technology')
worksheet.write('A3', '© 2018 California Institute of Technology. Government sponsorship acknowledged')

# Cell formats
bold_format = workbook.add_format({'bold': True, 'font_size': 14})
column_header_format = workbook.add_format({'bold': True, 'font_size': 14, 'align': 'center', 'valign': 'vcenter', 'text_wrap': True})
price_column_format = workbook.add_format({'num_format': '"$"#,##0.00'})
price_total_format = workbook.add_format({'bold': True, 'font_size': 14, 'num_format': '"$"#,##0.00'})

# Create total cost box
worksheet.write('J2', 'Total')
worksheet.write_formula('K2', '=SUM(J5:J200)', price_total_format)

with open('master_parts_list_raw.csv', 'r') as csvfile:
    table = csv.reader(csvfile)
    i = 3
    for row in table:
        # Strip number signs off of .csv values
        row[8] = row[8].replace('$', '')
        row[9] = row[9].replace('$', '')
        worksheet.write_row(i, 0, row)
        i += 1

# Format the main header information & total cost box
worksheet.set_row(0, 30, bold_format)
worksheet.set_row(1, 30, bold_format)
worksheet.set_row(2, 30, bold_format)
# Format the column headers and price columns
worksheet.set_row(3, 60, column_header_format)
worksheet.autofilter('A4:K4')
worksheet.set_column('A:A', 37)
worksheet.set_column('B:B', 12)
worksheet.set_column('C:C', 26)
worksheet.set_column('D:D', 12.5)
worksheet.set_column('E:E', 40)
worksheet.set_column('F:F', 12)
worksheet.set_column('G:G', 12)
worksheet.set_column('H:H', 12)
worksheet.set_column('I:I', 12, price_column_format)
worksheet.set_column('J:J', 12, price_column_format)
worksheet.set_column('K:K', 25)

workbook.close()
