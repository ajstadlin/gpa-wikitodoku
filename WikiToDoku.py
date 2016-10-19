#**************************************************************
# WikiToDoku2.py
#==============================================================
# Routines using pandoc to convert GitHub Markdown files to DokuWiki
#
# Note:  Using Python 3.5.2
#        May not be compatible with earlier Pythons
#
# File Extensions:
#   .md = markdown_github format
#   .txt = dokuwiki or straight text format
#
# GitHub markdown allows embedded HTML content.
# This program will check for the <HTML> header tag in the .md files.
# If the <HTML> tag is found in the header, then the file will be
# converted from html to markdown_github and then converted
# from markdown_github to dokuwiki format in a 2 step process.
#
# After conversion the GitHub blob and tree project link prefixes are removed
# from the URLs to make them relative to the content root folder
#
# Source Files will be typically found in the sourceDirectory:
#   /home/username/GPA/Project/Source/Documentation/wiki/
#
# Target Dokuwiki *.txt Files will typically be found in Directories
# that are created as needed like the following:
#   /home/username/GPA/dokuwiki/data/pages/projectnamespace
#
# Target Dokuwiki other Files will typically be found in Directories
# that are created as needed like the following:
#   /home/username/GPA/dokuwiki/data/media/projectnamespace
#
# Immutable directory and path values will typically include the suffix "/" path separator.
# Variable directory and path values will typically not include a path separator suffix.
#
# Final dokuwiki/data/pages and media subfolders and file names need to all be in lower case!
#
# After this program is run, the following commands can be used to copy the content to Dokuwiki:
# ## switch to root
# su
# ## Erase the previous project files
# cd /var/lib/dokuwiki/data/pages
# rm -Rf openpdc
# cd /var/lib/dokuwiki/data/media
# rm -Rf openpdc
# ## Copy the new project files
# cp -Rf /home/aj/GPA/dokuwiki/data/pages/* /var/lib/dokuwiki/data/pages/.
# cp -Rf /home/aj/GPA/dokuwiki/data/media/* /var/lib/dokuwiki/data/media/.
#
#--------------------------------------------------------------
# 10/19/16 AJ:  Using os.walk instead of os.scandir + recursion
# 10/15/16 AJ:  ReplaceFileContent() function added
# 10/13/16 AJ:  Modified to detect and convert HTML files by "<html"
# 10/11/16 AJ:  Test for Directory Exists before mkdir()
# 10/10/16 AJ:  Derived from UpdateWiki.py, 
#**************************************************************
import os
import shutil
import string
import subprocess

# Staging Directories for Dokuwiki Pages and Media data files
dokuwikiDataPages = "/home/aj/GPA/dokuwiki/data/pages"
dokuwikiDataMedia = "/home/aj/GPA/dokuwiki/data/media"

# Project Documentation Sources Dictionary
# key = projectnamespace
# value = [SourceDirectory, BlobLinkPrefix, TreeLinkPrefix]
# Notes: Project URL Link Prefixes.
#   These are replaced with "[[" in the documents within the Project's namespace in the Dokuwiki.
#   These are replaced with "[[project:" in the documents within the other Projects' namespaces in the Dokuwiki.
#   GitHub "blob" paths typically point to binary or other unhandled file formats or file extensions.
#   GitHub "tree" paths usually point to documentation and code text files.

sourceProjects = [
["openpdc", "/home/aj/GPA/openPDC/Source/Documentation/wiki/",
"[[https://github.com/GridProtectionAlliance/openPDC/blob/master/Source/Documentation/wiki/",
"[[https://github.com/GridProtectionAlliance/openPDC/tree/master/Source/Documentation/wiki/"]
]
## TODO:  Extend this array with additional source projects

# RUN

print("WikiToDoku2.py Utility, rev Oct 19, 2016")
print("========================================")

for proj in sourceProjects:
    print("Project = " + proj[0])
    print(" Source = " + proj[1])
    print("   Blob = " + proj[2])
    print("   Tree = " + proj[3])

    # Create the dokuwiki/data/pages and media folders if needed
    if not os.path.exists(dokuwikiDataPages):
        print(" +> Creating Dokuwiki Data Pages Folder = " + dokuwikiDataPages)
        os.makedirs(dokuwikiDataPages)

    if not os.path.exists(dokuwikiDataMedia):
        print(" +> Creating Dokuwiki Data Media Folder = " + dokuwikiDataMedia)
        os.makedirs(dokuwikiDataMedia)

    for projpath, projsubfolders, projfiles in os.walk(proj[1]):
        # Check for and do not process folders prefixed with "." like ".git"
        if not (projpath.find(".") == 0):
            print("Project Source Subfolder > " + projpath)
            
            # Define the Dokuwiki Namespace for the Project subfolder in the Pages and Media folders
            #   The pages folders will look like:  ... dokuwiki/data/{pages|media}/{projectname}/{subfolder}
            projrelativefolder = projpath.replace(proj[1], "")
            dokupagesfolder = dokuwikiDataPages + "/" + proj[0].lower() + "/" + projrelativefolder.lower()
            dokumediafolder = dokuwikiDataMedia + "/" + proj[0].lower() + "/" + projrelativefolder.lower()

            # Process the Files in the current projfolder
            for projfile in projfiles:
                print("  Source File > " + projfile)
                projfilepath = projpath + "/" + projfile
                
                # Check for HTML format            
                ishtml = False
                if projfile.endswith(".md"):
                    # Check first line of the file for an <HTML> tag.
                    topline = "";
                    iofile = open(projfilepath, 'r')
                    # skipstrip blank lines until the top text line                    
                    while ((topline == "") and not (topline == None)):
                        topline = iofile.readline().lower().rstrip().lstrip()                
                    iofile.close
                
                    if (topline.strip().find("<html") == 0):
                        # <HTML> tag is found, replace the .md extension with .html
                        ishtml = True

                if projfile.endswith(".md") and (not ishtml):
                    if not os.path.exists(dokupagesfolder):
                        print("  ++> Creating Dokuwiki Pages Subfolder > " + dokupagesfolder)
                        os.makedirs(dokupagesfolder)
                    dokupagesfile = dokupagesfolder + "/" + os.path.splitext(projfile)[0].lower() + ".txt"
                    print(" *> Converting from GitHub Markdown to Dokuwiki File = " + dokupagesfile)
                    subprocess.run(["pandoc", "-s", "-o", dokupagesfile, "-f", "markdown_github", "-t", "dokuwiki", projfilepath])
                    ## TODO:  Perform post process links update

                elif ishtml or projfile.endswith(".htm") or projfile.endswith(".html"):
                    if not os.path.exists(dokupagesfolder):
                        print("  ++> Creating Dokuwiki Pages Subfolder > " + dokupagesfolder)
                        os.makedirs(dokupagesfolder)
                    dokutempfile = dokupagesfolder + "/" + os.path.splitext(projfile)[0].lower() + ".temp"
                    print("Converting from HTML to Markdown = " + dokutempfile)
                    subprocess.run(["pandoc", "-s", "-o", dokutempfile, "-f", "html", "-t", "markdown_github", projfilepath])
                    dokupagesfile = dokupagesfolder + "/" + os.path.splitext(projfile)[0].lower() + ".txt"
                    print(" ... from Markdown to Dokuwiki File = " + dokupagesfile)
                    subprocess.run(["pandoc", "-s", "-o", dokupagesfile, "-f", "markdown_github", "-t", "dokuwiki", dokutempfile])
                    os.remove(dokutempfile)
                    ## TODO:  Perform post process links update

                else:
                    if not os.path.exists(dokumediafolder):
                        print("  ++> Creating Dokuwiki Media Subfolder > " + dokumediafolder)
                        os.makedirs(dokumediafolder)
                    dokumediafile = dokumediafolder + "/" + projfile.lower();
                    print(" **> Copying Media File = " + dokumediafile)
                    if os.path.exists(dokumediafile):
                        os.remove(dokumediafile)
                    shutil.copy2(projfilepath, dokumediafile)
                    ## TODO:  Perform post process links update
           
        
            print("==========")
            print("

### TODO:  Post Process Links Update ###
#
# Walk all of the dokuwiki/data/pages/*.txt files
#    seek each [[...]] URL
#      if the URL starts with one of the sourceProject's blob or tree prefixes:
#          # create a relative link by removing the absolute prefix and convert to lower case
#          dokulink = URL.replace(prefix, "").lower()
#
#          # convert http "/" separators to dokuwiki ":" separators
#          dokulink = dokulink.replace("/", ":")
#
#          # strip the extensions from links that were converted to dokuwiki format
#          if (dokulink.endswith(".txt") or dokulink.endswith(".md") or dokulink.endswith(".htm") or dokulink.endswith(".html")
#              ## TODO:  strip off the extension
#                  

def ReplaceFileContent(filePath, originalText, replacedText):
    ###
    # Reads a file and does a global search and replace on its contents and writes it back.
    ###
    print(" >> Replacing " + originalText)
    print("         with " + replacedText)
    ioFile = open(filePath)
    ioText = ioFile.read().replace(originalText, replacedText)
    ioFile.close()
    ioFile = open(filePath, "w")
    ioFile.write(ioText)
    ioFile.close()


