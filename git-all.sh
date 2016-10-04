#!/bin/sh
# echo ON
set -x
# Error Handling disabled, and ignored by || : or || true
set -e
##******************************************************************
## Clones all of the GPA Git Repositories
## After cloned, Updates the Repositories
##==================================================================
## Do Not Clone PRIVATE or FORKED Repositories
## Consider Not Cloning Repositories without Wiki type documentation
##------------------------------------------------------------------
## 10/03/16 AJ - Updated
##**********************************

echo Creating GPA Directory
mkdir ~/GPA || :

# Clone and Fetch the Project Git Repositories
# If has already been cloned, the git clone... is expected to fail (OK)
# Arbitrarily, the repositories are processed in alphabetical order below.

# BroccoliSharp
#git clone https://github.com/GridProtectionAlliance/BroccoliSharp.git ~/GPA/BroccoliSharp
#cd ~/GPA/BroccoliSharp
#git fetch

# ARMORE
#git clone https://github.com/GridProtectionAlliance/ARMORE.git ~/GPA/armore
#cd ~/GPA/armore
#git fetch

# DashAdmin
#git clone https://github.com/GridProtectionAlliance/DashAdmin.git ~/GPA/dashadmin
#cd ~/GPA/dashadmin
#git fetch

# DeviceDefinitionParser
#git clone https://github.com/GridProtectionAlliance/DeviceDefinitionParser.git ~/GPA/devicedefinitionparser
#cd ~/GPA/devicedefinitionparser
#git fetch

# gepstester
#git clone https://github.com/GridProtectionAlliance/openPDC.git ~/GPA/gepstester
#cd ~/GPA/gepstester
#git fetch

# grafana-plugin-repository
#git clone https://github.com/GridProtectionAlliance/grafana-plugin-repository.git ~/GPA/grafana-plugin-repository
#cd ~/GPA/grafana-plugin-repository
#git fetch

# gsf
#git clone https://github.com/GridProtectionAlliance/gsf.git ~/GPA/gsf
#cd ~/GPA/gsf
#git fetch

# GTCPQDashboard
#git clone https://github.com/GridProtectionAlliance/GTCPQDashboard.git ~/GPA/gtcpqdashboard
#cd ~/GPA/gtcpqdashboard
#git fetch

# openEAS
#git clone https://github.com/GridProtectionAlliance/openEAS.git ~/GPA/openeas
#cd ~/GPA/openeas
#git fetch

# openECA
#git clone https://github.com/GridProtectionAlliance/openECA.git ~/GPA/openeca
#cd ~/GPA/openeca
#git fetch
  
# openHistorian
#git clone https://github.com/GridProtectionAlliance/openHistorian.git ~/GPA/openhistorian
#cd ~/GPA/openhistorian
#git fetch

# openHistorian-grafana
#git clone https://github.com/GridProtectionAlliance/openHistorian-grafana.git ~/GPA/openhistorian-grafana
#cd ~/GPA/openhistorian-grafana
#git fetch

# openMIC
#git clone https://github.com/GridProtectionAlliance/openMIC.git ~/GPA/openmic
#cd ~/GPA/openmic
#git fetch

# openPDC
git clone https://github.com/GridProtectionAlliance/openPDC.git ~/GPA/openPDC  || :
cd ~/GPA/openPDC || :
git fetch || :

# openSEE
#git clone https://github.com/GridProtectionAlliance/openSEE.git ~/GPA/opensee
#cd ~/GPA/opensee
#git fetch

# openSPM
#git clone https://github.com/GridProtectionAlliance/openSPM.git ~/GPA/openspm
#cd ~/GPA/openspm
#git fetch
   
# openXDA
#git clone https://github.com/GridProtectionAlliance/openXDA.git ~/GPA/openxda
#cd ~/GPA/openxda
#git fetch

# pdqtracker
#git clone https://github.com/GridProtectionAlliance/pdqtracker.git ~/GPA/pdqtracker
#cd ~/GPA/pdqtracker
#git fetch

# phasorsplitter
#git clone https://github.com/GridProtectionAlliance/openPDC.git ~/GPA/phasorsplitter
#cd ~/GPA/phasorsplitter
#git fetch
  
# PMUConnectionTester
#git clone https://github.com/GridProtectionAlliance/PMUConnectionTester.git ~/GPA/pmuconnectiontester
#cd ~/GPA/pmuconnectiontester
#git fetch

# PQDashboard
#git clone https://github.com/GridProtectionAlliance/PQDashboard.git ~/GPA/pqdashboard
#cd ~/GPA/pqdashboard
#git fetch
    
# PQDIFExplorer
#git clone https://github.com/GridProtectionAlliance/PQDIFExplorer.git ~/GPA/pqdifexplorer
#cd ~/GPA/pqdifexplorer
#git fetch
    
# PQMark
#git clone https://github.com/GridProtectionAlliance/PQMark.git ~/GPA/pqmark
#cd ~/GPA/pqmark
#git fetch

# projectalpha
#git clone https://github.com/GridProtectionAlliance/projectalpha.git ~/GPA/projectalpha
#cd ~/GPA/projectalpha
#git fetch
    
# SIEGate
#git clone https://github.com/GridProtectionAlliance/SIEGate.git ~/GPA/siegate
#cd ~/GPA/siegate
#git fetch

# SOEEngine
#git clone https://github.com/GridProtectionAlliance/SOEEngine.git ~/GPA/soeengine
#cd ~/GPA/soeengine
#git fetch

# SOETools
#git clone https://github.com/GridProtectionAlliance/SOETools.git ~/GPA/soetools
#cd ~/GPA/soetools
#git fetch
   
# substationSBG
#git clone https://github.com/GridProtectionAlliance/substationSBG.git ~/GPA/substationsbg
#cd ~/GPA/substationsbg
#git fetch

