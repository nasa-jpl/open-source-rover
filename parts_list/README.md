## Adding new parts to the parts list

1. Add an image of the part at /images/components. This image will be utilized
within the documentation to represent the part, often in the "part tables" at the
start of a section.

2. Add a line to the /parts_list/master_parts_list_raw.csv file describing the new part.
This CSV file is a standard text file; do not use Excel or Numbers to edit it as
doing so will change the encoding. The format is:

    > Part Name,Project Ref Code,Model/Config,Site,Link,Sold in Packs of,Total Used in Project,Quantity to Buy,Price Each,Price Total,Used in Sections
