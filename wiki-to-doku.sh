#!/bin/bash
set +x
set -e
## 10/04/16 Updated, markdown files in subfolders included
## Note:  pandoc does not recognize ~/ as the /home/user folder, 

# Relative Path assumes we are running from the path: /home/aj/GPA/gpa-wikitodoku 
# Process openPDC
rm -Rf ./doku/openPDC  || :
mkdir ./doku/openPDC  || :

# Copy Static Files
cp -Rf ../openPDC/Source/Documentation/wiki/openPDC_Logo.png ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/archives ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/August_2010_version_1_2_release_Features.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Automated_Archive_Data_Recovery_Operation.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Automated_Connection_Failover.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Contributors ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Data_Quality_Monitoring.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Developers_About_the_Code.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Developers_Custom_Adapters.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Developers_Data_Access_Options.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Developers_Device_to_Data_in_5_Easy_Steps.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Developers_Frequently_Asked_Questions.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Developers_Multiple_Adapter_Synchronization.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Developers_Two_Custom_Adapter_Examples.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Developers_Using_Hadoop.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/FAQ.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/GEP_Subscription_Tester.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Getting_Started.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/GPA ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Help_Me_Choose_Diagrams.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Historian_Distribution_Notes.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Introducing_the_openPDC_Manager.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/June1.1FeatureList.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/License.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/openPDC_Data_Quality_Reports.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/openPDC_Manager_Configuration.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/openPDC_Overview.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/PMU_Connection_Tester.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Remote_Console_Security.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Running_openPDC_on_a_Raspberry_Pi.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Running_openPDC_on_Linux_and_Mac.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Settings_for_Uniform_CPU_Utilization.files ./doku/openPDC/.  ||:
cp -Rf ../openPDC/Source/Documentation/wiki/Use_and_Configuration_Guides.files ./doku/openPDC/.  ||:

# Convert Markdown_Github to DokuWiki
pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/README.md' '../openPDC/README.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Adjusting_Output_Stream_Labels_to_Meet_ISO_Naming_Convention.md' '../openPDC/Source/Documentation/wiki/Adjusting_Output_Stream_Labels_to_Meet_ISO_Naming_Convention.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/August_2010_version_1_2_Release_Features.md' '../openPDC/Source/Documentation/wiki/August_2010_version_1_2_Release_Features.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Automated_Archive_Data_Recovery_Operation.md' '../openPDC/Source/Documentation/wiki/Automated_Archive_Data_Recovery_Operation.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Automated_Connection_Failover.md' '../openPDC/Source/Documentation/wiki/Automated_Connection_Failover.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Code_Blog_Developers.md' '../openPDC/Source/Documentation/wiki/Code_Blog_Developers.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Config_File.md' '../openPDC/Source/Documentation/wiki/Config_File.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Configuration_Commands.md' '../openPDC/Source/Documentation/wiki/Configuration_Commands.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Connection_Strings.md' '../openPDC/Source/Documentation/wiki/Connection_Strings.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Controlling_UDP_Data_Loss.md' '../openPDC/Source/Documentation/wiki/Controlling_UDP_Data_Loss.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Custom_Point_Tag_Naming_Convention.md' '../openPDC/Source/Documentation/wiki/Custom_Point_Tag_Naming_Convention.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Data_Quality_Monitoring.md' '../openPDC/Source/Documentation/wiki/Data_Quality_Monitoring.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/DeveloperPath.md' '../openPDC/Source/Documentation/wiki/DeveloperPath.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Developers_About_the_Code.md' '../openPDC/Source/Documentation/wiki/Developers_About_the_Code.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Developers_About_the_Signal_Reference.md' '../openPDC/Source/Documentation/wiki/Developers_About_the_Signal_Reference.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Developers_Automated_Phasor_Tag_Naming_Convention.md' '../openPDC/Source/Documentation/wiki/Developers_Automated_Phasor_Tag_Naming_Convention.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Developers_Build_the_openPDC_Manager.md' '../openPDC/Source/Documentation/wiki/Developers_Build_the_openPDC_Manager.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Developers_Code_Change_Notes.md' '../openPDC/Source/Documentation/wiki/Developers_Code_Change_Notes.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Developers_Custom_Adapters.md' '../openPDC/Source/Documentation/wiki/Developers_Custom_Adapters.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Developers_Data_Access_Options.md' '../openPDC/Source/Documentation/wiki/Developers_Data_Access_Options.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Developers_Device_to_Data_in_5_Easy_Steps.md' '../openPDC/Source/Documentation/wiki/Developers_Device_to_Data_in_5_Easy_Steps.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Developers_Device_to_Data.md' '../openPDC/Source/Documentation/wiki/Developers_Device_to_Data.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Developers_Frequently_Asked_Questions.md' '../openPDC/Source/Documentation/wiki/Developers_Frequently_Asked_Questions.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Developers_Getting_Started.md' '../openPDC/Source/Documentation/wiki/Developers_Getting_Started.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Developers_Multiple_Adapter_Synchronization.md' '../openPDC/Source/Documentation/wiki/Developers_Multiple_Adapter_Synchronization.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Developers_Two_Custom_Adapter_Examples.md' '../openPDC/Source/Documentation/wiki/Developers_Two_Custom_Adapter_Examples.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Developers_Using_Hadoop.md' '../openPDC/Source/Documentation/wiki/Developers_Using_Hadoop.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Enabling_Security_for_Historian_Web_Services.md' '../openPDC/Source/Documentation/wiki/Enabling_Security_for_Historian_Web_Services.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Event_stream_processing.md' '../openPDC/Source/Documentation/wiki/Event_stream_processing.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Extensions.md' '../openPDC/Source/Documentation/wiki/Extensions.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/FAQ.md' '../openPDC/Source/Documentation/wiki/FAQ.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/GEP_Subscription_Tester.md' '../openPDC/Source/Documentation/wiki/GEP_Subscription_Tester.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Getting_Started.md' '../openPDC/Source/Documentation/wiki/Getting_Started.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Hadoop.md' '../openPDC/Source/Documentation/wiki/Hadoop.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Help_Me_Choose_Diagrams.md' '../openPDC/Source/Documentation/wiki/Help_Me_Choose_Diagrams.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Historian_Distribution_Notes.md' '../openPDC/Source/Documentation/wiki/Historian_Distribution_Notes.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/How_to_Bulk_Apply_line-to-line_Sqrt3_Adjustment_to_all_Voltage_Magnitudes.md' '../openPDC/Source/Documentation/wiki/How_to_Bulk_Apply_line-to-line_Sqrt3_Adjustment_to_all_Voltage_Magnitudes.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Introducing_the_openPDC_Manager.md' '../openPDC/Source/Documentation/wiki/Introducing_the_openPDC_Manager.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/June1.1FeatureList.md' '../openPDC/Source/Documentation/wiki/June1.1FeatureList.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/June_2010_Release.md' '../openPDC/Source/Documentation/wiki/June_2010_Release.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/license.md' '../openPDC/Source/Documentation/wiki/license.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Manual_Configuration.md' '../openPDC/Source/Documentation/wiki/Manual_Configuration.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/MIT.md' '../openPDC/Source/Documentation/wiki/MIT.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Move_Local_Historian_to_Another_Folder.md' '../openPDC/Source/Documentation/wiki/Move_Local_Historian_to_Another_Folder.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Nightly_Builds.md' '../openPDC/Source/Documentation/wiki/Nightly_Builds.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/October_2010_version_1.3.11_Maintenance_Release_Features.md' '../openPDC/Source/Documentation/wiki/October_2010_version_1.3.11_Maintenance_Release_Features.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/openPDC_Data_Quality_Reports.md' '../openPDC/Source/Documentation/wiki/openPDC_Data_Quality_Reports.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/openPDC_Documentation_Home.md' '../openPDC/Source/Documentation/wiki/openPDC_Documentation_Home.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/openPDC_Home.md' '../openPDC/Source/Documentation/wiki/openPDC_Home.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/openPDC_Manager_Configuration.md' '../openPDC/Source/Documentation/wiki/openPDC_Manager_Configuration.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/openPDC_Overview.md' '../openPDC/Source/Documentation/wiki/openPDC_Overview.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/openPDC_v1.1_Release_48110.md' '../openPDC/Source/Documentation/wiki/openPDC_v1.1_Release_48110.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/openPDC_v1.1_Release_48468.md' '../openPDC/Source/Documentation/wiki/openPDC_v1.1_Release_48468.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/openPDC_v1.4_Release_52461.md' '../openPDC/Source/Documentation/wiki/openPDC_v1.4_Release_52461.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/openPDC_v1.4_SP1_Release_64386.md' '../openPDC/Source/Documentation/wiki/openPDC_v1.4_SP1_Release_64386.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/openPDC_v1.4_SP2_Release_64388.md' '../openPDC/Source/Documentation/wiki/openPDC_v1.4_SP2_Release_64388.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/openPDC_v1.5_Release_76146.md' '../openPDC/Source/Documentation/wiki/openPDC_v1.5_Release_76146.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/openPDC_v1.5_SP1_Release_98475.md' '../openPDC/Source/Documentation/wiki//openPDC_v1.5_SP1_Release_98475.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/openPDC_v2.0_Release_109522.md' '../openPDC/Source/Documentation/wiki/openPDC_v2.0_Release_109522.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/openPDC_v2.1_SP1_Release_615595.md' '../openPDC/Source/Documentation/wiki/openPDC_v2.1_SP1_Release_615595.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/OSI-PI_Adapters.md' '../openPDC/Source/Documentation/wiki/OSI-PI_Adapters.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Phasor_measurement_unit.md' '../openPDC/Source/Documentation/wiki/Phasor_measurement_unit.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/PMU_Connection_Tester.md' '../openPDC/Source/Documentation/wiki/PMU_Connection_Tester.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/PMU_Connection_Tester_v4.4.0_109471.md' '../openPDC/Source/Documentation/wiki/PMU_Connection_Tester_v4.4.0_109471.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Remote_Console_Security.md' '../openPDC/Source/Documentation/wiki/Remote_Console_Security.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Running_openPDC_in_Virtual_Machine.md' '../openPDC/Source/Documentation/wiki/Running_openPDC_in_Virtual_Machine.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Running_openPDC_on_a_Raspberry_Pi.md' '../openPDC/Source/Documentation/wiki/Running_openPDC_on_a_Raspberry_Pi.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Running_openPDC_on_Linux_and_Mac.md' '../openPDC/Source/Documentation/wiki/Running_openPDC_on_Linux_and_Mac.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Settings_for_Uniform_CPU_Utilization.md' '../openPDC/Source/Documentation/wiki/Settings_for_Uniform_CPU_Utilization.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Use_and_Configuration_Guides.md' '../openPDC/Source/Documentation/wiki/Use_and_Configuration_Guides.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Using_a_Gateway_Style_Connection_between_openPDCs_and_for_openPGs.md' '../openPDC/Source/Documentation/wiki/Using_a_Gateway_Style_Connection_between_openPDCs_and_for_openPGs.md'  || :

# Markdown files in static Subfolders need to be deleted first


rm -f ./doku/openPDC/GPA/products.md
rm -f ./doku/openPDC/Remote_Console_Security.files/Remote_Console_Security_Version_3.md
rm -f ./doku/openPDC/Developers_Using_Hadoop.files/mapred_tutorial..md
rm -f ./doku/openPDC/License.files/MIT_Current-2015-0306.md
rm -f ./doku/openPDC/License.files/EPL_2015-0306-2010-0820.md
rm -f ./doku/openPDC/FAQ.files/How_to_Use_Open-Source_Hadoop_for_the_Smart_Grid.md
rm -f ./doku/openPDC/FAQ.files/JPatterson_floe_tv_2009-10-29_the-smartgrid-goes-open-source.md
rm -f ./doku/openPDC/FAQ.files/Simple_Moving_Average_Secondary_Sort_and_MapReduce_Part_2.md
rm -f ./doku/openPDC/FAQ.files/The_Smart_Grid_-_Hadoop_at_the_Tennessee_Valley_Authority_TVA.md
rm -f ./doku/openPDC/FAQ.files/Open-source_Hadoop_powers_Tennessee_smart_grid.md
rm -f ./doku/openPDC/FAQ.files/Simple_Moving_Average_Secondary_Sort_and_MapReduce_Part_3.md
rm -f ./doku/openPDC/FAQ.files/The_Android_of_the_Smart_Grid_openPDC.md
rm -f ./doku/openPDC/FAQ.files/OSCON_Data_2011_-_Lumberyard.md
rm -f ./doku/openPDC/FAQ.files/Simple_Moving_Average_Secondary_Sort_and_MapReduce_Part_1.md
rm -f ./doku/openPDC/FAQ.files/Hadoop_As_The_Platform_For_The_Smartgrid_At_TVA.md
rm -f ./doku/openPDC/Developers_Multiple_Adapter_Synchronization.files/Discussion_433859.md
rm -f ./doku/openPDC/Contributors/priyankarjk.md
rm -f ./doku/openPDC/Contributors/patpentz.md
rm -f ./doku/openPDC/Contributors/ritchiecarroll.md
rm -f ./doku/openPDC/Contributors/kevinjones.md
rm -f ./doku/openPDC/Contributors/rrobertson.md
rm -f ./doku/openPDC/Contributors/avinash_e.md
rm -f ./doku/openPDC/Contributors/jmartinbeg.md
rm -f ./doku/openPDC/Contributors/arkrohne.md
rm -f ./doku/openPDC/Contributors/ajstadlin.md
rm -f ./doku/openPDC/Contributors/staphen.md
rm -f ./doku/openPDC/Contributors/alexfoglia.md
rm -f ./doku/openPDC/PMU_Connection_Tester.files/PMU_Connection_Tester.md
rm -f ./doku/openPDC/Running_openPDC_on_a_Raspberry_Pi.files/linux.md
rm -f ./doku/openPDC/Running_openPDC_on_a_Raspberry_Pi.files/sd-cards.md
rm -f ./doku/openPDC/Running_openPDC_on_a_Raspberry_Pi.files/Mono-project_com_news_2015_03_07_mono-tls-vulnerability.md
rm -f ./doku/openPDC/Running_openPDC_on_a_Raspberry_Pi.files/mac.md
rm -f ./doku/openPDC/Running_openPDC_on_a_Raspberry_Pi.files/windows.md
rm -f ./doku/openPDC/Data_Quality_Monitoring.files/DataView_RowFilter_Syntax.md

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/GPA/products.md' '../openPDC/Source/Documentation/wiki/GPA/products.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Remote_Console_Security.files/Remote_Console_Security_Version_3.md' '../openPDC/Source/Documentation/wiki/Remote_Console_Security.files/Remote_Console_Security_Version_3.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Developers_Using_Hadoop.files/mapred_tutorial..md' '../openPDC/Source/Documentation/wiki/Developers_Using_Hadoop.files/mapred_tutorial..md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/License.files/MIT_Current-2015-0306.md' '../openPDC/Source/Documentation/wiki/License.files/MIT_Current-2015-0306.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/License.files/EPL_2015-0306-2010-0820.md' '../openPDC/Source/Documentation/wiki/License.files/EPL_2015-0306-2010-0820.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/FAQ.files/How_to_Use_Open-Source_Hadoop_for_the_Smart_Grid.md' '../openPDC/Source/Documentation/wiki/FAQ.files/How_to_Use_Open-Source_Hadoop_for_the_Smart_Grid.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/FAQ.files/JPatterson_floe_tv_2009-10-29_the-smartgrid-goes-open-source.md' '../openPDC/Source/Documentation/wiki/FAQ.files/JPatterson_floe_tv_2009-10-29_the-smartgrid-goes-open-source.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/FAQ.files/Simple_Moving_Average_Secondary_Sort_and_MapReduce_Part_2.md' '../openPDC/Source/Documentation/wiki/FAQ.files/Simple_Moving_Average_Secondary_Sort_and_MapReduce_Part_2.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/FAQ.files/The_Smart_Grid_-_Hadoop_at_the_Tennessee_Valley_Authority_TVA.md' '../openPDC/Source/Documentation/wiki/FAQ.files/The_Smart_Grid_-_Hadoop_at_the_Tennessee_Valley_Authority_TVA.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/FAQ.files/Open-source_Hadoop_powers_Tennessee_smart_grid.md' '../openPDC/Source/Documentation/wiki/FAQ.files/Open-source_Hadoop_powers_Tennessee_smart_grid.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/FAQ.files/Simple_Moving_Average_Secondary_Sort_and_MapReduce_Part_3.md' '../openPDC/Source/Documentation/wiki/FAQ.files/Simple_Moving_Average_Secondary_Sort_and_MapReduce_Part_3.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/FAQ.files/The_Android_of_the_Smart_Grid_openPDC.md' '../openPDC/Source/Documentation/wiki/FAQ.files/The_Android_of_the_Smart_Grid_openPDC.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/FAQ.files/OSCON_Data_2011_-_Lumberyard.md' '../openPDC/Source/Documentation/wiki/FAQ.files/OSCON_Data_2011_-_Lumberyard.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/FAQ.files/Simple_Moving_Average_Secondary_Sort_and_MapReduce_Part_1.md' '../openPDC/Source/Documentation/wiki/FAQ.files/Simple_Moving_Average_Secondary_Sort_and_MapReduce_Part_1.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/FAQ.files/Hadoop_As_The_Platform_For_The_Smartgrid_At_TVA.md' '../openPDC/Source/Documentation/wiki/FAQ.files/Hadoop_As_The_Platform_For_The_Smartgrid_At_TVA.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Developers_Multiple_Adapter_Synchronization.files/Discussion_433859.md' '../openPDC/Source/Documentation/wiki/Developers_Multiple_Adapter_Synchronization.files/Discussion_433859.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Contributors/priyankarjk.md' '../openPDC/Source/Documentation/wiki/Contributors/priyankarjk.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Contributors/patpentz.md' '../openPDC/Source/Documentation/wiki/Contributors/patpentz.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Contributors/ritchiecarroll.md' '../openPDC/Source/Documentation/wiki/Contributors/ritchiecarroll.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Contributors/kevinjones.md' '../openPDC/Source/Documentation/wiki/Contributors/kevinjones.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Contributors/rrobertson.md' '../openPDC/Source/Documentation/wiki/Contributors/rrobertson.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Contributors/avinash_e.md' '../openPDC/Source/Documentation/wiki/Contributors/avinash_e.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Contributors/jmartinbeg.md' '../openPDC/Source/Documentation/wiki/Contributors/jmartinbeg.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Contributors/arkrohne.md' '../openPDC/Source/Documentation/wiki/Contributors/arkrohne.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Contributors/ajstadlin.md' '../openPDC/Source/Documentation/wiki/Contributors/ajstadlin.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Contributors/staphen.md' '../openPDC/Source/Documentation/wiki/Contributors/staphen.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Contributors/alexfoglia.md' '../openPDC/Source/Documentation/wiki/Contributors/alexfoglia.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/PMU_Connection_Tester.files/PMU_Connection_Tester.md' '../openPDC/Source/Documentation/wiki/PMU_Connection_Tester.files/PMU_Connection_Tester.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Running_openPDC_on_a_Raspberry_Pi.files/linux.md' '../openPDC/Source/Documentation/wiki/Running_openPDC_on_a_Raspberry_Pi.files/linux.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Running_openPDC_on_a_Raspberry_Pi.files/sd-cards.md' '../openPDC/Source/Documentation/wiki/Running_openPDC_on_a_Raspberry_Pi.files/sd-cards.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Running_openPDC_on_a_Raspberry_Pi.files/Mono-project_com_news_2015_03_07_mono-tls-vulnerability.md' '../openPDC/Source/Documentation/wiki/Running_openPDC_on_a_Raspberry_Pi.files/Mono-project_com_news_2015_03_07_mono-tls-vulnerability.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Running_openPDC_on_a_Raspberry_Pi.files/mac.md' '../openPDC/Source/Documentation/wiki/Running_openPDC_on_a_Raspberry_Pi.files/mac.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Running_openPDC_on_a_Raspberry_Pi.files/windows.md' '../openPDC/Source/Documentation/wiki/Running_openPDC_on_a_Raspberry_Pi.files/windows.md'  || :

pandoc --from=markdown_github --to=dokuwiki --output='./doku/openPDC/Data_Quality_Monitoring.files/DataView_RowFilter_Syntax.md' '../openPDC/Source/Documentation/wiki/Data_Quality_Monitoring.files/DataView_RowFilter_Syntax.md'  || :


exit
