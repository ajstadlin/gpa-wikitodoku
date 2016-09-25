# gpa-wiki Repository #

---

## wiki Directory ##
* wiki-to-doku = Wiki to DokuWiki migration utilities
** _namespace_-doku-download.sh = Script for downloading the GPA DokuWiki documents for a specific namespace.

* _Documentation Namespaces_

## doku Directory ##
* doku-towiki = DokuWiki to Wiki migration utilities
** _namespace_-wiki-download.sh = Script for downloading the GPA DokuWiki documents for a specific namespace.

* _Documentation Namespaces_

## Documentation Namespaces ##
* openpdc

---

# Documentation Conventions #

## Documents ##

Wiki documents can be typically be named using the convention similar to:  _Document_Title_Using_MixedCase.extension_

DokuWiki documents can be typically named using the convention similar to:  _projectnamespace:document_title_using_lowercase_

## Local Static Files ##

Local Static Files are files referenced by links in the Documentation.  These files are typically graphic files, archived PDF documents, etc.  The purpose for storing them locally with the documentation is to control their lifecycle and prevent broken links.

### Generic Static Files Referenced by Multiple Documents ###

Generic Static Files common to multiple documents can be stored in a single project subfolder.  Examples include license text, logo graphics, icons, etc.

Wiki files can be stored in the _ProjectNamespace/files_ folder.  For example:  openPDC/files/openPDC_Logo.png

DokuWiki files can be stored in the _projectnamespace:files_ folder.  For example:  openpdc:files:openpdc_logo.png

### Document Specific Unique Static Files ###

Document specific files should be stored in a folder that can easily be related to the document linking to them.  These files may have the same file names as other files, but are unique in their content related to the documentation.  Using Document Specific sub folders for Document Specific files eliminates conflicts if, for example, openPDC_On_POSIX.md and openPDC_On_Windows both refer to a graphic file named _screenshot.png_.

Wiki document specific files can be stored in the _ProjectNamespace/Document_Title_Using_MixedCase.files_ folder.  For example:  openPDC/openPDC_On_RaspberryPi.files/Screenshot01.png

DokuWiki document specific files can be stored in the _projectnamespace:document_title_using_lowercase:files_ folder.  For example:  openpdc:openpdc_on_raspberrypi:files:Screenshot01.png

---

Sep 20, 2016 updated
