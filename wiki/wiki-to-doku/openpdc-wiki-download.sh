#!/bin/sh
## 10/02/16 Updated

rm ../openpdc/Getting-Started.md
wget --output-document='../openpdc/Getting-Started.md' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.md'

# static files can simply be copied to their final doku folder
mkdir ../../doku/openpdc/getting_started.files
rm ../../doku/openpdc/getting_started.files/1.png
wget --output-document='../../doku/openpdc/getting_started.files/1.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/1.png'

rm ../../doku/openpdc/getting_started.files/2.png
wget --output-document='../../doku/openpdc/getting_started.files/2.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/2.png'

rm ../../doku/openpdc/getting_started.files/3.png
wget --output-document='../../doku/openpdc/getting_started.files/3.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/3.png'

rm ../../doku/openpdc/getting_started.files/4.png
wget --output-document='../../doku/openpdc/getting_started.files/4.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/4.png'

rm ../../doku/openpdc/getting_started.files/5.png
wget --output-document='../../doku/openpdc/getting_started.files/5.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/5.png'

rm ../../doku/openpdc/getting_started.files/6.png
wget --output-document='../../doku/openpdc/getting_started.files/6.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/6.png'

rm ../../doku/openpdc/getting_started.files/7.png
wget --output-document='../../doku/openpdc/getting_started.files/7.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/7.png'

rm ../../doku/openpdc/getting_started.files/8.png
wget --output-document='../../doku/openpdc/getting_started.files/8.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/8.png'

rm ../../doku/openpdc/getting_started.files/9.png
wget --output-document='../../doku/openpdc/getting_started.files/9.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/9.png'

rm ../../doku/openpdc/getting_started.files/10.png
wget --output-document='../../doku/openpdc/getting_started.files/10.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/10.png'

rm ../../doku/openpdc/getting_started.files/11.png
wget --output-document='../../doku/openpdc/getting_started.files/11.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/11.png'

rm ../../doku/openpdc/getting_started.files/pmu-1.png
wget --output-document='../../doku/openpdc/getting_started.files/pmu-1.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/PMU-1.png'

rm ../../doku/openpdc/getting_started.files/bpa_pdcstream_extra_parameters.png
wget --output-document='../../doku/openpdc/getting_started.files/bpa_pdcstream_extra_parameters.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/bpa_pdcstream_extra_parameters.png'

rm ../../doku/openpdc/getting_started.files/bpa_pdcstream_pmu_connection_tester_command_channel.png
wget --output-document='../../doku/openpdc/getting_started.files/bpa_pdcstream_pmu_connection_tester_command_channel.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/bpa_pdcstream_pmu_connection_tester_command_channel.png'

rm ../../doku/openpdc/getting_started.files/bpa_pdcstream_pmu_connection_tester_main_window.png
wget --output-document='../../doku/openpdc/getting_started.files/bpa_pdcstream_pmu_connection_tester_main_window.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/bpa_pdcstream_pmu_connection_tester_main_window.png'

rm ../../doku/openpdc/getting_started.files/connect_disconnect_command.png
wget --output-document='../../doku/openpdc/getting_started.files/connect_disconnect_command.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/connect_disconnect_command.PNG'

rm ../../doku/openpdc/getting_started.files/list_command_2.png
wget --output-document='../../doku/openpdc/getting_started.files/list_command_2.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/list_command_2.PNG'

rm ../../doku/openpdc/getting_started.files/list_o_command.png
wget --output-document='../../doku/openpdc/getting_started.files/list_o_command.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/list_o_command.PNG'

rm ../../doku/openpdc/getting_started.files/pmu_connection_tester_command_channel.png
wget --output-document='../../doku/openpdc/getting_started.files/pmu_connection_tester_command_channel.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/pmu_connection_tester_command_channel.png'

rm ../../doku/openpdc/getting_started.files/pmu_connection_tester_main_window.png
wget --output-document='../../doku/openpdc/getting_started.files/pmu_connection_tester_main_window.png' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Getting_Started.files/pmu_connection_tester_main_window.png'



rm ../openpdc/openPDC_Documentation_Home.md
wget --output-document='../openpdc/openPDC_Documentation_Home.md' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/openPDC_Documentation_Home.md'

rm ../openpdc/README.md
wget --output-document='../openpdc/README.md' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/README.md'

rm ../openpdc/Adjusting_Output_Stream_Labels_to_Meet_ISO_Naming_Convention.md
wget --output-document='../openpdc/Adjusting_Output_Stream_Labels_to_Meet_ISO_Naming_Convention.md' 'https://raw.githubusercontent.com/GridProtectionAlliance/openPDC/master/Source/Documentation/wiki/Adjusting_Output_Stream_Labels_to_Meet_ISO_Naming_Convention.md'

exit