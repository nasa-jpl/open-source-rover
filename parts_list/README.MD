## BUILDING PARTS LIST
To build the parts list, execute the initialization script (init.sh). You
may need to provide the file with execution permissions (e.g. chmod 755 init.sh)
prior to running.

This program ensures the required libraries are installed and enables the addition of
other libraries and functionality in the future, all while utilizing the same execution
method (./init.sh).

## ADDING NEW PARTS
If your updates use parts already found in the master_parts_list.xlsx, you
only need to run the init.sh script as described above (see: BUILDING PARTS LIST).

If your modification uses a new part that is not found in master_parts_list.xlsx, there are
two actions required to rebuild the master parts list:

1. Add an image of the part at /images/parts_list. This image will be utilized
within the documentation to represent the part, often in the "part tables" at the
start of a section.

2. Add a line to the /parts_list/parts_list_reference.csv file describing the new part.
This CSV file is a standard text file; do not use Excel or Numbers to edit it as
doing so will change the encoding and break the build mechanism. The format is:
>Part Name, Sold in packs of, Site, Project Reference Code, Price Each, Link.

An example:

>Pattern F Bracket,1,ServoCity,S7,585592,$2.79,https://www.servocity.com/flat-bracket-f,
