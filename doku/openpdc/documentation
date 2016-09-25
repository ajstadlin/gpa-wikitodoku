[[openPDC_Home.md|{{:openPDC_Logo.png|The Open Source Phasor Data Concentrator}}]]

|**[[http://www.gridprotectionalliance.org|Grid Protection Alliance]]**|**[[https://github.com/GridProtectionAlliance/openPDC|openPDC Project on GitHub]]**|**[[openPDC_Documentation_Home.md|Documentation]]**|

== Note on IPv4 vs IPv6 in the openPDC: ==

The default IP stack for most new Windows systems is IPv6, this means all connections will default to IPv6 unless otherwise specified. If you want the openPDC to use IPv4, the server and client connections can be configured to use the IPv4 stack by specifying “;interface=0.0.0.0” in the relevant configuration settings and connection strings. The interface setting is used to specify the IP address of the network interface controller (NIC) to use for the connection – an IP of zero means that the default NIC should be used for the connection; the format of the interface IP setting determines the IP stack version, i.e., IPv4 or IPv6, to use for the connection, for example, to force use of IPv6 you would use “;interface=::0”.

  * User's Documentation
    * [[Getting_Started.md|Getting Started]]
    * [[FAQ.md|Frequently Asked Questions]]
    * [[Use_and_Configuration_Guides.md|Use and Configuration Guides]]
    * [[Introducing_the_openPDC_Manager.md|Overview of the openPDC Management System]]
    * [[openPDC_Manager_Configuration.md|How to Use the openPDC Manager]]
    * [[FAQ.files/Default_openPDC_Ports.rtf|Default openPDC Ports]]
    * [[Running_openPDC_on_Linux_and_Mac.md|Running openPDC on Linux / Mac]] //**NEW**//
    * [[Running_openPDC_on_a_Raspberry_Pi.md|Running openPDC on a Raspberry Pi]] //**NEW**//
    * [[openPDC_Data_Quality_Reports.md|Data Quality Reporting Services]] //**NEW**//
    * [[Custom_Point_Tag_Naming_Convention.md|Custom Point Tag Naming Convention]] //**NEW**//
    * [[Enabling_Security_for_Historian_Web_Services.md|Enabling Security for Historian Web Services]]
    * [[GEP_Subscription_Tester.md|The GEP Subscription Tester]]
    * [[Running_openPDC_in_Virtual_Machine.md|Running the openPDC in Virtual Machine]]
    * [[Move_Local_Historian_to_Another_Folder.md|Moving Historian to Another Location]]
    * [[Using_a_Gateway_Style_Connection_between_openPDCs_and_for_openPGs.md|Using a "Gateway Style Connection" between openPDCs and/or openPGs]]
    * [[Controlling_UDP_Data_Loss.md|Controlling UDP data loss]]
    * [[Remote_Console_Security.md|Remote Console Security]]
    * [[Help_Me_Choose_Diagrams.md|Help Me Choose Diagrams]]
    * [[Config_File.md|Configuration File Settings]]
    * [[Settings_for_Uniform_CPU_Utilization.md|Setting for Uniform CPU Utilization]]
    * [[Configuration_Commands.md|openPDC Console Commands to Adjust Configuration Settings]]
    * [[OSI-PI_Adapters.md|openPDC OSI-PI Adapters]] //**UPDATED**//
    * [[Data_Quality_Monitoring.md|Data Quality Monitoring Adapters]]
    * [[Connection_Strings.md|Adapter Connection String Syntax]]
    * [[https://docs.google.com/spreadsheet/ccc?key=0AsRzeFw8l0JLdDNjN3hscml2ZV9SWVZGOS1jT0lqOWc&usp=sharing|openHistorian 1.0 Archive Size Calculator]] ++ [[Use_and_Configuration_Guides.files/Archive_Sizing_Spreadsheet_473120.xlsx|Archived XLSX]]
    * [[Historian_Distribution_Notes.md|Distributed Historian Setup Notes]]
    * [[Automated_Archive_Data_Recovery_Operation.md|Automated Archive Data Recovery Operation]] (a.k.a. Missing Data Gap Filling)
    * [[Automated_Connection_Failover.md|Automated Connection Failover Operation]]
    * [[Adjusting_Output_Stream_Labels_to_Meet_ISO_Naming_Convention.md|Adjusting Output Stream Labels to Meet ISO Naming Standard]]
    * [[http://pmuconnectiontester.codeplex.com/documentation|PMU Connection Tester]] (accessed via host site)
    * [[Manual_Configuration.md|How to Manually Configure the openPDC]]
    * [[How_to_Bulk_Apply_line-to-line_Sqrt3_Adjustment_to_all_Voltage_Magnitudes.md|How to Bulk Apply line-to-line Sqrt(3) Adjustment to all Voltage Magnitudes]]
    * [[openPDC_Overview.md|Single Page Overview]]
  * Developer's Documentation
    * [[Developers_Getting_Started.md|Getting Started]]
    * [[Developers_Frequently_Asked_Questions.md|Frequently Asked Questions]]
    * [[Developers_Build_the_openPDC_Manager.md|Build the openPDC Manager]]
    * [[Developers_Data_Access_Options.md|Data Access Options for the openPDC]]
    * [[Developers_Device_to_Data_in_5_Easy_Steps.md|Device to Data in 5 Easy Steps]]
    * [[Developers_About_the_Code.md|High-level Code Structure and Class Relationships]]
    * [[Developers_Custom_Adapters.md|How to Create a Custom Adapter]]
    * [[Developers_Two_Custom_Adapter_Examples.md|Two Custom Adapter Examples]]
    * [[Developers_Multiple_Adapter_Synchronization.md|Multiple Adapter Synchronization]]
    * [[Developers_Automated_Phasor_Tag_Naming_Convention.md|Automated Phasor Tag Naming Convention]]
    * [[Developers_About_the_Signal_Reference.md|About the Signal Reference Field]]
    * [[Developers_Using_Hadoop.md|Processing openPDC data with Hadoop]]
    * [[Developers_Code_Change_Notes.md|Code Change Notes]]

**Note:** you can get a quick optimization of the openPDC run-time assemblies by using the .NET native image cache NGen. To apply these optimizations after the openPDC has been installed, run the following commands from an administrative console:

  * ''%%CD "C:\\Program Files\\openPDC\\"%%''
  * ''%%C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\ngen install openPDC.exe%%''
  * ''%%C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\ngen install TVA.PhasorProtocols.dll%%''
  * ''%%C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\ngen install HistorianAdapters.dll%%''
  * ''%%C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\ngen install PowerCalculations.dll%%''
  * ''%%C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\ngen install ICCPExport.dll%%''

The most recent system API help and documentation can be downloaded from the [[Nightly_Builds.md|Nightly Builds]] - it's included with the binaries. This help can be used as standalone, compiled help files (.chm) or can be directly [[Developers_Getting_Started.md|integrated within Visual Studio]]. We have also made our help system available online: [[http://www.gridsolutions.org/NightlyBuilds/openPDC/Help/|Synchrophasor Protocol Classes Documentation]]


----

  * Sep 12, 2016 HTML to Markdown by [[https://github.com/chefsteph9|chefsteph9]]
  * Oct 5, 2015 Migrated from [[http://openpdc.codeplex.com/documentation|CodePlex]] by [[https://github.com/ajstadlin|ajs]]
  * May 29, 2015 4:39 PM Last edited by [[https://github.com/ritchiecarroll|ritchiecarroll]], version 97


----

Copyright 2016 [[http://www.gridprotectionalliance.org|Grid Protection Alliance]]

