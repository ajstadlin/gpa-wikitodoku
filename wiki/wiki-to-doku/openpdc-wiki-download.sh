#!/bin/sh
## 09/20/16 Updated

rm ../openpdc/Getting-Started.md
wget --output-document='../openpdc/Getting-Started.md' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.md'

rm ../openpdc/openPDC_Documentation_Home.md
wget --output-document='../openpdc/openPDC_Documentation_Home.md' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/openPDC_Documentation_Home.md'

rm ../openpdc/README.md
wget --output-document='../openpdc/README.md' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/README.md'

exit