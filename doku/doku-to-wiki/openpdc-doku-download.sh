#!/bin/sh
cd openpdc
rm overview
wget --output-document='overview' 'https://gridprotectionalliance.org/wiki/doku.php?id=openpdc:overview&do=export_raw'
exit