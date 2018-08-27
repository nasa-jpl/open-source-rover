import os
import re
import csv
import glob
import math
from pprint import pprint
from collections import defaultdict


# Read in parts list for for each sub assembly
build_docs = [i for i in glob.glob('Mechanical{sep}**{sep}Latex Docs{sep}**.tex'
                                   .format(sep=os.sep))]

# We know its a parts list table by the formatting of the cells
table_pattern = r"\\begin{tabular}{\|N\|Q\|Q\|I\|N\|Q\|Q\|I\|}(.*?)\\end{tabular}"
row_pattern = r"\\hline\s+(.*?)\s+\\\\"

sub_assembly_part_counts = defaultdict(lambda: {'count': 0, 'sections': set(), 'name': ''})
# Loop over each latex file
for build_doc in build_docs:
    section_name = build_doc.split(os.sep)[1]
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
                    if name != '' and str.isnumeric(number[-1]):
                        sub_assembly_part_counts[number]['name'] = name
                        sub_assembly_part_counts[number]['sections'].add(section_name)
                        sub_assembly_part_counts[number]['count'] += int(count) if count is not '' else 0


master_parts_list = []
# Read in the parts referance info and use to create the master list of parts
with open('parts_list_reference.csv') as f:
    reader = csv.DictReader(f)
    for row in reader:
        part_details = dict(row)

        ref_code = part_details['Project Ref Code']

        part_details['Sold in Packs of'] = int(part_details['Sold in Packs of'])
        part_details['Total Used in Project'] = sub_assembly_part_counts.get(ref_code, {}).get('count', 1)
        # Mack one value a float to have proper division
        part_details['Quanity to Buy'] = math.ceil(part_details['Total Used in Project'] / float(part_details['Sold in Packs of']))
        sections = list(sub_assembly_part_counts.get(ref_code, {}).get('sections', []))
        sections.sort()
        part_details['Used in Sections'] = ', '.join(sections)

        master_parts_list.append(part_details)

        # remove part from sub_assembly_part_counts, this way we can see what is left over
        if ref_code in sub_assembly_part_counts:
            del sub_assembly_part_counts[ref_code]

# These are the parts that were not in the master list
pprint(dict(sub_assembly_part_counts))
print(("\nThese parts were found in the build docs but not in the parts_list_reference.csv"
       "\nPlease add to parts_list_reference.csv and re run this script"))


with open('master_parts_list.csv', 'w') as f:
    writer = csv.DictWriter(f, fieldnames=master_parts_list[0].keys())

    writer.writeheader()
    writer.writerows(master_parts_list)
