#!/bin/sh
set +x
set -e
## 10/03/16 Updated

# Copy Static /files
rm -Rf ../../doku/openpdc/files  || :
cp -Rf /home/pi/GPA/openpdc/Source/Documentation/wiki/files ../../doku/openpdc/.  ||:

# Copy Static /files
rm -Rf ../../doku/openpdc/Getting_Started.files  || :
cp -Rf /home/pi/GPA/openpdc/Source/Documentation/wiki/Getting_Started.files ../../doku/openpdc/getting_started.files  ||:

rm -f ../../doku/openpdc/getting-started || :
pandoc --from=markdown_github --to=dokuwiki --output='../../doku/openpdc/getting-started' '/home/pi/GPA/openpdc/Source/Documentation/wiki/Getting_Started.md' || :

rm -f ../../doku/openpdc/documentation || :
pandoc --from=markdown_github --to=dokuwiki --output='../../doku/openpdc/documentation' '/home/pi/GPA/openpdc/Source/Documentation/wiki/openPDC_Documentation_Home.md'  || :

rm -f ../../doku/openpdc/overview || :
pandoc --from=markdown_github --to=dokuwiki --output='../../doku/openpdc/overview' '/home/pi/GPA/openpdc/README.md'  || :

exit