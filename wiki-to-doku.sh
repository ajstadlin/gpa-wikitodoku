#!/bin/bash
set +x
set -e
## 10/04/16 Updated
## Note:  pandoc does not recognize ~/ as the /home/user folder, 

# Relative Path assumes we are running from the path: /home/aj/GPA/gpa-wikitodoku 
# Process openPDC
rm -Rf ./doku/openPDC  || :
mkdir ./doku/openPDC  || :

# Copy Static Files
cp -Rf ../openPDC/Source/Documentation/wiki/archives ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/files ./doku/openPDC/.  ||:

cp -Rf ../openPDC/Source/Documentation/wiki/August_2010_version_1_2_release_Features.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Automated_Archive_Data_Recovery_Operation.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Automated_Connection_Failover.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Contributors ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Data_Quality_Monitoring.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Developers_About_the_Code.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Developers_Custom_Adapters.files ./doku/openPDC/.  ||:

cp -Rf ../openPDC/Source/Documentation/wiki/Getting_Started.files ./doku/openPDC/.  ||:

# Convert Markdown_Github to DokuWiki
rm -f ./doku/openPDC/Getting_Started.md || :
pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Getting_Started.md' '../openPDC/Source/Documentation/wiki/Getting_Started.md' || :

rm -f ./doku/openPDC/openPDC_Documentation_Home.md || :
pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/openPDC_Documentation_Home.md' '../openPDC/Source/Documentation/wiki/openPDC_Documentation_Home.md'  || :

rm -f ./doku/openPDC/README.md || :
pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/README.md' '../openPDC/README.md'  || :


exit
