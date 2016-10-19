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
## 10/15/16 AJ - Updated
##**********************************

echo Creating GPA Directory
mkdir ~/GPA || :

# Clone and pull the Project Git Repositories
# If has already been cloned, the git clone... is expected to fail (OK)
# Arbitrarily, the repositories are processed in alphabetical order below.

# BroccoliSharp
#git clone https://github.com/GridProtectionAlliance/BroccoliSharp.git ~/GPA/BroccoliSharp
#cd ~/GPA/BroccoliSharp
#git pull

# ARMORE
#git clone https://github.com/GridProtectionAlliance/ARMORE.git ~/GPA/armore
#cd ~/GPA/armore
#git pull

# DashAdmin
#git clone https://github.com/GridProtectionAlliance/DashAdmin.git ~/GPA/dashadmin
#cd ~/GPA/dashadmin
#git pull

# DeviceDefinitionParser
#git clone https://github.com/GridProtectionAlliance/DeviceDefinitionParser.git ~/GPA/devicedefinitionparser
#cd ~/GPA/devicedefinitionparser
#git pull

# gepstester
#git clone https://github.com/GridProtectionAlliance/openPDC.git ~/GPA/gepstester
#cd ~/GPA/gepstester
#git pull

# grafana-plugin-repository
#git clone https://github.com/GridProtectionAlliance/grafana-plugin-repository.git ~/GPA/grafana-plugin-repository
#cd ~/GPA/grafana-plugin-repository
#git pull

# gsf
#git clone https://github.com/GridProtectionAlliance/gsf.git ~/GPA/gsf
#cd ~/GPA/gsf
#git pull

# GTCPQDashboard
#git clone https://github.com/GridProtectionAlliance/GTCPQDashboard.git ~/GPA/gtcpqdashboard
#cd ~/GPA/gtcpqdashboard
#git pull

# openEAS
#git clone https://github.com/GridProtectionAlliance/openEAS.git ~/GPA/openeas
#cd ~/GPA/openeas
#git pull

# openECA
#git clone https://github.com/GridProtectionAlliance/openECA.git ~/GPA/openeca
#cd ~/GPA/openeca
#git pull
  
# openHistorian
#git clone https://github.com/GridProtectionAlliance/openHistorian.git ~/GPA/openhistorian
#cd ~/GPA/openhistorian
#git pull

# openHistorian-grafana
#git clone https://github.com/GridProtectionAlliance/openHistorian-grafana.git ~/GPA/openhistorian-grafana
#cd ~/GPA/openhistorian-grafana
#git pull

# openMIC
#git clone https://github.com/GridProtectionAlliance/openMIC.git ~/GPA/openmic
#cd ~/GPA/openmic
#git pull

# openPDC
git clone https://github.com/GridProtectionAlliance/openPDC.git ~/GPA/openPDC  || :
cd ~/GPA/openPDC || :
git pull || :

# openSEE
#git clone https://github.com/GridProtectionAlliance/openSEE.git ~/GPA/opensee
#cd ~/GPA/opensee
#git pull

# openSPM
#git clone https://github.com/GridProtectionAlliance/openSPM.git ~/GPA/openspm
#cd ~/GPA/openspm
#git pull
   
# openXDA
#git clone https://github.com/GridProtectionAlliance/openXDA.git ~/GPA/openxda
#cd ~/GPA/openxda
#git pull

# pdqtracker
#git clone https://github.com/GridProtectionAlliance/pdqtracker.git ~/GPA/pdqtracker
#cd ~/GPA/pdqtracker
#git pull

# phasorsplitter
#git clone https://github.com/GridProtectionAlliance/openPDC.git ~/GPA/phasorsplitter
#cd ~/GPA/phasorsplitter
#git pull
  
# PMUConnectionTester
#git clone https://github.com/GridProtectionAlliance/PMUConnectionTester.git ~/GPA/pmuconnectiontester
#cd ~/GPA/pmuconnectiontester
#git pull

# PQDashboard
#git clone https://github.com/GridProtectionAlliance/PQDashboard.git ~/GPA/pqdashboard
#cd ~/GPA/pqdashboard
#git pull
    
# PQDIFExplorer
#git clone https://github.com/GridProtectionAlliance/PQDIFExplorer.git ~/GPA/pqdifexplorer
#cd ~/GPA/pqdifexplorer
#git pull
    
# PQMark
#git clone https://github.com/GridProtectionAlliance/PQMark.git ~/GPA/pqmark
#cd ~/GPA/pqmark
#git pull

# projectalpha
#git clone https://github.com/GridProtectionAlliance/projectalpha.git ~/GPA/projectalpha
#cd ~/GPA/projectalpha
#git pull
    
# SIEGate
#git clone https://github.com/GridProtectionAlliance/SIEGate.git ~/GPA/siegate
#cd ~/GPA/siegate
#git pull

# SOEEngine
#git clone https://github.com/GridProtectionAlliance/SOEEngine.git ~/GPA/soeengine
#cd ~/GPA/soeengine
#git pull

# SOETools
#git clone https://github.com/GridProtectionAlliance/SOETools.git ~/GPA/soetools
#cd ~/GPA/soetools
#git pull
   
# substationSBG
#git clone https://github.com/GridProtectionAlliance/substationSBG.git ~/GPA/substationsbg
#cd ~/GPA/substationsbg
#git pull

