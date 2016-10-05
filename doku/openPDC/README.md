{{http://www.gridprotectionalliance.org/images/products/icons%2064/openPDC.png|Round Logo}}{{https://www.gridprotectionalliance.org/images/products/openPDC.png|openPDC}}

Open Source Phasor Data Concentrator

The [[https://www.gridprotectionalliance.org/products.asp#PDC|openPDC]] administered by the [[https://www.gridprotectionalliance.org/|Grid Protection Alliance]] (GPA) is a complete Phasor Data Concentrator software system designed to process streaming time-series data in real-time. Measured data gathered with GPS-time from many hundreds of input sources is time-sorted and provided to user defined actions as well as to custom outputs for archival.

====== Overview ======

A phasor data concentrator is designed to receive streaming synchrophasor data from phasor measurement units (PMUs) installed on power transmission lines and align this data by GPS time-tag (i.e., it "concentrates" the data based on time). The output of a PDC is a time-synchronized dataset that is forwarded on one or more software applications. For more information on the functional requirements of a PDC see: [[http://www.gridprotectionalliance.org/docs/products/openPDC/C37.244-2013.pdf|Phasor Data Concentrator Requirements]]

The openPDC is much more than just a data concentrator, it is a flexible platform for processing high-speed time-series data that can adapt with changing technology to provide a future-proof phasor data architecture. The openPDC can be used to distribute data (both real-time and historical) to consuming applications and can be installed anywhere within the synchrophasor infrastructure, even on fanless computers that run in a substation environment.

Although the primary purpose of the openPDC is concentration and management of real-time streaming synchrophasors, by having its functionality based on GPA's [[http://www.gridprotectionalliance.org/technology.asp#TSL|Time-Series Library]] the openPDC inherits a modular design that allows it to be classified as a generic [[http://en.wikipedia.org/wiki/Event_stream_processing|event stream processor:]]

{{http://www.gridprotectionalliance.org/docs/products/openPDC/FlowDiagram.png|openPDC Flow Diagram}}

====== Features ======

The openPDC implements a number of standard phasor protocols which can be used to receive data from devices. The supported protocols include IEEE C37.118, IEC 61850-90-5, IEEE 1344, BPA PDCstream, F-NET, SEL Fast Message, and Macrodyne among others.

Using the [[http://www.gridprotectionalliance.org/technology.asp#TSL|Time-Series Library]], the openPDC can be configured to archive to any historian system, however, the system also includes an available built-in historian, the openHistorian, for data archival. The local historian comes with a visualization and extraction tool, a high-speed local API and web services, all of which can be used to extract and monitor the data being archived in real-time. The files produced by the historian can also be [[https://github.com/GridProtectionAlliance/openPDC/blob/master/Source/Documentation/wiki/Developers_Using_Hadoop.md|analyzed using Hadoop]].

With version 2.1 or later, the openPDC can be deployed in [[http://www.gridprotectionalliance.org/docs/products/openPDC/openPDConPOSIX.pdf|POSIX environments]] as well as on Windows.

//Other features include://

  * Lossless phasor data transformation and replication with the ability to create a configurable number of output streams
  * Extensive performance statistic history such as average latency, data quality and time code errors
  * Generic configuration database with support for Microsoft SQL Server and Oracle as well as free alternatives such as MySQL and SQLite
  * Distributed multi-node architecture supported for high availability and throughput
  * Provided output adapters for multiple historians including the [[http://www.gridprotectionalliance.org/products.asp#Historian|openHistorian]], [[http://www.osisoft.com/|OSI-PI Historian]] and [[http://hadoop.apache.org/|Hadoop]].
  * Automated data availability reporting

====== Documentation and Support ======

  * Documentation for openPDC can be found [[https://github.com/GridProtectionAlliance/openPDC/blob/master/Source/Documentation/wiki/openPDC_Documentation_Home.md|here]].
  * See: [[https://github.com/GridProtectionAlliance/openPDC/blob/master/Source/Documentation/wiki/Getting_Started.md|Getting Started with the openPDC]].
  * Get in contact with our development team on our new [[http://discussions.gridprotectionalliance.org/c/gpa-products/openpdc|discussion board]].
  * Check out our [[http://openpdc.codeplex.com/discussions|old discussion board]] to see if your question has already been answered.
  * Check out the [[https://gridprotectionalliance.org/wiki/doku.php?id=openpdc:overview|wiki]].

====== Deployment ======

  * For Windows:

  - Make sure your system meets all the requirements below.

  * Choose a [[#downloads|download]] below.
  * Unzip if necessary.
  * Run "Setup.exe".
  * Follow the wizard.
  * Enjoy.
  * For POSIX OS:
  * See [[https://gpags.sharepoint.com/TeamSite/_layouts/15/WopiFrame.aspx?guestaccesstoken=ADyQzHPxsfTh9qs4glPelL78SoBA1pTJV1%2fWy6b0ct4%3d&docid=08819043371f24a089e4924e86525dd69&action=view|Deploying the openPDC on POSIX Platforms]].

===== Requirements =====

  * .NET 4.6 or higher.
  * 64-bit Windows 7 or newer or POSIX OS, e.g. Linux or Mac.
  * Database management system such as:
  * SQL Server (Recommended)
  * MySQL
  * Oracle
  * PostgreSQL
  * SQLite (Not recommended for production use) - included.

===== Downloads =====

  * Download the latest stable release [[https://github.com/GridProtectionAlliance/openPDC/releases/tag/v2.2|here]] (v2.2).
  * Older releases are also available [[http://openpdc.codeplex.com/releases/view/615595|here]].
  * Download the nightly build [[http://www.gridprotectionalliance.org/nightlybuilds/openPDC/Beta-VS2012/Synchrophasor.Installs.zip|here]].

====== Contributing ======

If you would like to contribute please:

  - Read our [[https://www.gridprotectionalliance.org/docs/GPA_Coding_Guidelines_2011_03.pdf|styleguide.]]

  * Fork the repository.
  * Code like a boss.
  * Create a pull request.

====== License ======

openPDC is licensed under the [[https://opensource.org/licenses/MIT|MIT license]].
