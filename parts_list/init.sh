#!/bin/bash

#Checking for OS, used for determining APT-GET vs YUM, etc
while getopts "o:p:" option
do
  case "${option}" in
  o)
    OS=${OPTARG,,};;
  p)
    program=${OPTARG,,};;
  esac
done
#set default
if [ "$OS" = "" ]; then
  #default to ubuntu
  OS="ubuntu"
fi

if [ "$OS" != "debian" ] && [ "$OS" != "ubuntu" ] && [ "$OS" != "mac" ]; then
  echo -e "\n\nFATAL ERROR: UNKNOWN OPERATING SYSTEM: $OS"
  echo "usage:"
  echo -e "\trun -o ubuntu"
  echo -e "\trun -o debian"
  echo -e "\trun -p transform"
  echo -e "\trun -p extract"
  echo -e "\nIf you are confident that your system has the required software"
  echo "installed, you can attempt to run the python code directly, but"
  echo -e "the outcome is not guaranteed to be successful.\n\n"
  exit
fi

printf "\n***************************************************\n"
printf "* Generating Parts List \n"
printf "***************************************************\n\n"

echo -e "\tVALIDATING SOFTWARE REQUIREMENTS"
echo -e "\t--------------------------------"

#Ensure Python 3 is installed
if command -v python3 &>/dev/null; then
    echo -e "\t-PYTHON 3: FOUND"
else
    echo -e "\t-PYTHON 3 REQUIRED: Attempting to install"

    if [ "$OS" == "ubuntu" ]; then
      sudo apt-get --assume-yes install python3
    elif [ "$OS" == "debian" ]; then
      sudo yum install -y python3
    elif [ "$OS" == "mac" ]; then
      echo -e "\t Auto installation not supported for your OS.\n\tPlease install Python 3 and try again"
      exit 1
    fi
fi

#Check for the existence of PIP
pip=$(python3 -m pip --vers 2>&1)
if echo "$pip" | grep -q "No module named pip"
then
    echo -e "\t-PIP3 REQUIRED: Attempting to install"
    if [ "$OS" == "ubuntu" ]; then
      sudo apt-get --assume-yes install python3-pip
    elif [ "$OS" == "debian" ]; then
      sudo yum install -y python3-pip
    elif [ "$OS" == "mac" ]; then
      echo -e "\t Auto installation not supported for your OS.\n\tPlease install PIP3 and try again"
      exit
    fi
else
    echo -e "\t-PIP3: FOUND"
fi

#xlsxwriter is required
xlsxwriter=$(python3 -m pip --disable-pip-version-check list --format=legacy | grep 'XlsxWriter')
if [ -z "$xlsxwriter" ]
then
      echo -e "\t-xlsxwriter REQUIRED: Installing..."
      python3  -m pip --disable-pip-version-check install xlsxwriter
else
      echo -e "\t-xlsxwriter: FOUND"
fi

printf "\nInitalization Complete\n"

printf "\n****************************************************\n"
printf "* Running parts list builder        *\n"
printf "****************************************************\n"
python3 build.py
