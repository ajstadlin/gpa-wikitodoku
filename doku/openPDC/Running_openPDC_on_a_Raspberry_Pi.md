{{https://github.com/GridProtectionAlliance/openPDC/blob/master/Source/Documentation/wiki/openPDC_Logo.png|The Open Source Phasor Data Concentrator}}

====== Open Source Phasor Data Concentrator ======


----

<code>
|    |    |    |
</code>
----|----|----|----|\\
[[http://www.gridprotectionalliance.org|**Grid Protection Alliance**]] | [[https://github.com/GridProtectionAlliance/openPDC|**openPDC Project on GitHub**]] | [[https://github.com/GridProtectionAlliance/openPDC/tree/master/Source/Documentation/wiki/openPDC_Home.md|**openPDC Wiki Home**]] | [[https://github.com/GridProtectionAlliance/openPDC/tree/master/Source/Documentation/wiki/openPDC_Documentation_Home.md|**Documentation**]] |\\
%%**%%*

====== Running the openPDC on a Raspberry Pi and Pi 2 ======

To avoid needing to compile Mono and speed up the installation process, we have posted an image for download with the needed version of Mono (i.e., version 3.12.1 that includes [[http://www.mono-project.com/news/2015/03/07/mono-tls-vulnerability/|FREAK security fix]]\\
) and the openPDC (i.e., version 2.1.64) preinstalled for running on a Raspberry Pi and Pi 2 with the Raspbian OS. Download the zip file below that contains the image:

  * [[http://www.gridprotectionalliance.org/products/openPDC/Releases/2.1/POSIX/openPDC_Raspbian.zip|openPDC Raspbian Image]] (2.08GB zipped)

Unzip the downloaded image file on a computer with an SD card reader. Note that the image size, when unzipped, is 6GB - as a result you will need an SD card at least that large to hold the image, 8 GB is the recommended minimum. Make sure to read raspberrypi.org's information on [[http://www.raspberrypi.org/documentation/installation/sd-cards.md|SD Cards]]. Use the following instructions for deploying the image onto an SD card:

  * [[http://www.raspberrypi.org/documentation/installation/installing-images/windows.md|Windows]]
  * [[http://www.raspberrypi.org/documentation/installation/installing-images/mac.md|Mac OS]]
  * [[http://www.raspberrypi.org/documentation/installation/installing-images/linux.md%22%3ELinux|Linux]]

For the initial boot it is recommended to start the Raspberry Pi up with a connected monitor and keyboard. When the Raspberry Pi is first powered on with the openPDC image on the SD card, the system will request a username and\\
password - these are the defaults for a Raspbian OS image, specifically:

<code>
Login: pi
Password: raspberry
</code>
After you enter the default credentials, the Raspbian configuration application (raspi-config) will launch. The following steps should be executed at a minimum:

  * Run the "Expand Filesystem" command to make all SD card space available
  * Run the "Change User Password" command for the default user //pi//
  * Run the "Enable Boot to Desktop/Scratch" command to set desired boot operation

Once you have configured the Raspberry Pi, select "Finish" from the configuration tool to reboot the system. The openPDC is set to automatically run at startup as a daemon with security enabled. Run the following command from a terminal session to access the openPDC:

<code>
mono /opt/openPDC/openPDCConsole.exe
</code>
This will start the openPDC remote console session. Authentication is required, enter "pi" as the user name and the current password for this user. The console may make a few authentication attempts with the provided credentials testing various authentication options. Once authenticated, type "version" in the console and press Enter - this will show the running openPDC version and current OS details.

The default openPDC configuration comes with a sample device and an available IEEE C37.118 output stream. If the Raspberry Pi is connected to a network, the outputs can be exercised immediately. The IEEE C37.118 output stream will be listening on TCP port 8900 for both commands and data.

For best openPDC performance, the Raspberry Pi 2 is recommended. The new Raspberry Pi 2 Model B has 4 cores, 1 GB of RAM and better CPU performance all of which provide a very practical and performant micro-environment for running the openPDC.

The openPDC also runs on the original Raspberry Pi (same image for both platforms). For optimal performance on this single core system it is recommended that the configuration of the openPDC on the Raspberry Pi be reduced to its primary tasks.

For more details, read the [[https://github.com/GridProtectionAlliance/openPDC/tree/master/Source/Documentation/wiki/Running_openPDC_on_Linux_and_Mac.md|openPDC Linux Deployment Instructions]]

Thanks!<html><br /></html>\\
Ritchie


----

====== openPDC on Raspberry Pi Example Procedures ======

  * [[https://github.com/GridProtectionAlliance/openPDC/tree/master/Source/Documentation/wiki/Running_openPDC_on_a_Raspberry_Pi.files/Example-openPDC_on_RaspberryPi-3B_Raspbian_Jessie.pdf|openPDC on Raspberry Pi 3 Model B, Raspbian Jessie Full Desktop]]
  * [[https://github.com/GridProtectionAlliance/openPDC/tree/master/Source/Documentation/wiki/Running_openPDC_on_a_Raspberry_Pi.files/Example-openPDC_on_RaspberryPi-3B_Raspbian_Jessie_Lite.pdf|openPDC on Raspberry Pi 3 Model B, Raspbian Jessie Lite]]
  * [[https://github.com/GridProtectionAlliance/openPDC/tree/master/Source/Documentation/wiki/Running_openPDC_on_a_Raspberry_Pi.files/Example-openPDC_on_RaspberryPi-Zero_Raspbian_Jessie_Lite.pdf|openPDC on Raspberry Pi Zero, Raspbian Jessie Lite]]


----

==== Comments ====

<HTML><ul></HTML>
<HTML><li></HTML><HTML><p></HTML>May 6, 2015 at 2:37:23 AM, Id# C31632 - [[https://www.codeplex.com/site/users/view/Andrew__M|Andrew%%__%%M]]<html><br /></html><HTML></p></HTML>
> <HTML><p></HTML>Thanks Ritchie - yes, the Pi 2 is running quite nicely. I've got four 100MB files built up so far - so yes, Historian is running well. Heck of a data collection platform for under $100 Pi 2, 32GB MicroSD, Case, Power Supply, and a RS232 serial port adapter.<HTML></p></HTML>
<HTML></li></HTML>
<HTML><li></HTML><HTML><p></HTML>May 5, 2015 at 8:19:53 PM, Id# C31628 - [[https://www.codeplex.com/site/users/view/ritchiecarroll|ritchiecarroll]]<html><br /></html><HTML></p></HTML>
> <HTML><p></HTML>Hi Andrew - yes, as you have already discovered, the openHistorian is already there - although we still need to post a config file that has this already enabled as per instructions. And BTW, the performance on the Pi 2 is very nice.<HTML></p></HTML>
<HTML></li></HTML>
<HTML><li></HTML><HTML><p></HTML>Apr 21, 2015 at 10:04:49 PM, Id# C31580 - [[https://www.codeplex.com/site/users/view/Andrew__M|Andrew%%__%%M]]<html><br /></html><HTML></p></HTML>
> <HTML><p></HTML>Does the openPDC image for Raspberry Pi have the openHistorian 1.0 built in to it? I'm going to give it a try with a Pi 2, but don't have the hardware yet. Thanks!<HTML></p></HTML>
<HTML></li></HTML>
<HTML><li></HTML><HTML><p></HTML>Mar 20, 2015 at 8:48:21 PM, Id# C31476 - [[https://www.codeplex.com/site/users/view/ritchiecarroll|ritchiecarroll]]<html><br /></html><HTML></p></HTML>
> <HTML><p></HTML>It's ready...<HTML></p></HTML>
<HTML></li></HTML>
<HTML><li></HTML><HTML><p></HTML>Mar 19, 2015 at 6:01:06 PM, Id# C31475 - [[https://www.codeplex.com/site/users/view/Alessio_M|Alessio_M]]<html><br /></html><HTML></p></HTML>
> <HTML><p></HTML>Hi there, Any news on the openPDC image for Raspberry Pi? Thanks<HTML></p></HTML>
<HTML></li></HTML><HTML></ul></HTML>


----

Edited Mar 27, 2015 1:30:35 AM by [[https://github.com/ritchiecarroll|ritchiecarroll]], version 10<html><br /></html>\\
Migrated Oct 4, 2015 by [[https://github.com/ajstadlin|%%//%%aj]] from [[https://openpdc.codeplex.com/wikipage?title=Running%20openPDC%20on%20a%20Raspberry%20Pi|CodePlex]]<html><br /></html>\\
Edited Aug 14, 2016 11:45:00 AM by [[https://github.com/ajstadlin|%%//%%aj]]


----

===  ===

Copyright 2016 [[http://www.gridprotectionalliance.org|Grid Protection Alliance]]

