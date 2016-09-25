#!/bin/sh
## 09/20/16 Updated

rm ../../doku/openpdc/getting-started
pandoc --from=markdown_github --to=dokuwiki --output='../../doku/openpdc/getting-started' '../openpdc/Getting-Started.md' 

rm ../../doku/openpdc/documentation
pandoc --from=markdown_github --to=dokuwiki --output='../../doku/openpdc/documentation' '../openpdc/openPDC_Documentation_Home.md' 

rm ../../doku/openpdc/overview
pandoc --from=markdown_github --to=dokuwiki --output='../../doku/openpdc/overview' '../openpdc/README.md' 

exit