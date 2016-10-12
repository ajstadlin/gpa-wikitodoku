#**************************************************************
# WikiToDoku.py
#==============================================================
# Routines using pandoc to convert GitHub Markdown files to DokuWiki
#
# Note:  Requires Python 3.5.2 for os.scandir(),
#        Not compatible with earlier Pythons
#
# File Extensions:
#   .md = markdown_github format
#   .doku = dokuwiki format
#
# GitHub markdown allows embedded HTML content.
# This program will check for the <HTML> header tag in the .md files.
# If the <HTML> tag is found in the header, then the file will be
# converted from html to markdown_github and then converted
# from markdown_github to dokuwiki format in a 2 step process.
#
# Source Files will be typically found in the sourceDirectory:
#   /home/username/GPA/Project/Source/Documentation/wiki
#
# Target Files will typically be found in the targetDirectory:
#   /home/username/GPA/dokuwiki/project
#--------------------------------------------------------------
# 10/12/16 AJ:  TODO:  Modified to detect and convert HTML files
# 10/11/16 AJ:  Test for Directory Exists before mkdir()
# 10/10/16 AJ:  Derived from UpdateWiki.py, 
#**************************************************************
import os
import subprocess

sourceDirectory = ""
targetDirectory = ""

###
# Processes the top level of the source directory tree.
# Subdirectories are recursively traversed
#   and subdirectory tree structure is copied to the target directory tree
# Markdown files are processed and saved in the target directories.
# Non-Markdown files are copied to the target directories.
# Paramters:                         # Examples:
#    sourcedir = Project/Wiki        # /home/aj/GPA/openPDC/Source/Documentation/wiki
#    targetdir = DokuWiki/Project    # /home/aj/GPA/dokuwiki/openpdc
###
def UpdateWiki(sourcedir, targetdir):
    global sourceDirectory, targetDirectory
    sourceDirectory = sourcedir
    targetDirectory = targetdir
    print("From Source Directory = " + sourceDirectory)
    print("  to Target Directory = " + targetDirectory)
        
    if not os.path.exists(targetDirectory):
        print(" -> Creating Target Directory... " + targetDirectory)
        os.mkdir(targetDirectory)

    print("Processing...")
    for file in os.scandir(sourceDirectory):
        if file.is_dir(follow_symlinks=False) and file.name != ".git":
            UpdateFolder(file.path)

        else:
            #if file.name.endswith(".md"):
                # TODO:  Check first line of .md file for <HTML> tag.
                #        If <HTML> tag is found, replace the .md extension with .html
                
            if file.name.endswith(".md"):
                print("Converting from GitHub Markdown to Dokuwiki File = " + targetDirectory + "/" + os.path.splitext(file.name)[0] + ".dok")
                subprocess.run(["pandoc", "-s", "-o", targetDirectory + "/" + os.path.splitext(file.name)[0] + ".dok", "-f", "markdown_github", "-t", "dokuwiki", file.path])

            elif file.name.endswith(".htm") or file.name.endswith(".html"):
                print("Converting from HTML to Markdown = " + targetDirectory + "/" + os.path.splitext(file.name)[0] + ".xxx")
                subprocess.run(["pandoc", "-s", "-o", targetDirectory + "/" + os.path.splitext(file.name)[0] + ".xxx", "-f", "html", "-t", "markdown_github", file.path])
                print(" ... from Markdown to Dokuwiki File = " + targetDirectory + "/" + os.path.splitext(file.name)[0] + ".dok")
                subprocess.run(["pandoc", "-s", "-o", targetDirectory + "/" + os.path.splitext(file.name)[0] + ".dok", "-f", "markdown_github", "-t", "dokuwiki", targetDirectory + "/" + os.path.splitext(file.name)[0] + ".xxx"])
                # TODO os.filedelete(targetDirectory + "/" + os.path.splitext(file.name)[0] + ".xxx")

            else:
                print(" Copying to File = " + targetDirectory + "/" + file.name)
                # TODO os.filecopy(file.path, targetDirectory + "/" + file.name)


###
# Processes a sub directory in the source directory tree.
# Subdirectories are recursively traversed
#   and subdirectory tree structure is copied to the target directory tree
# Markdown files are processed and saved in the target directories.
# Non-Markdown files are copied to the target directories.
###
def UpdateFolder(subdir):
    global sourceDirectory, targetDirectory
    relativePath = os.path.relpath(subdir, sourceDirectory).lower()
    print("Relative Path = " + relativePath)
    print("  From Source = " + subdir)
    print("    to Target = " + targetDirectory + "/" + relativePath)
    if not os.path.exists(targetDirectory + "/" + relativePath):
        print(" -> Creating Target Subdirectory = " + targetDirectory + "/" + relativePath)
        os.mkdir(targetDirectory + "/" + relativePath)

    for file in os.scandir(subdir):
        if file.is_dir(follow_symlinks=False) and file.name != ".git":
            print(">> Recursively Process Child Folder: " + file.path)
            UpdateFolder(file.path)
            
        else:
            #if file.name.endswith(".md"):
                # TODO:  Check first line of .md file for <HTML> tag.
                #        If <HTML> tag is found, replace the .md extension with .html
                
            if file.name.endswith(".md"):
                print("Converting from GitHub Markdown to Dokuwiki File = " + targetDirectory + "/" + relativePath + "/" + os.path.splitext(file.name)[0] + ".dok")
                subprocess.run(["pandoc", "-s", "-o", targetDirectory + "/" + relativePath + "/" + os.path.splitext(file.name)[0] + ".dok", "-f", "markdown_github", "-t", "dokuwiki", file.path])

            elif file.name.endswith(".htm") or file.name.endswith(".html"):
                print("Converting from HTML to Markdown = " + targetDirectory + "/" + relativePath + "/" + os.path.splitext(file.name)[0] + ".xxx")
                subprocess.run(["pandoc", "-s", "-o", targetDirectory + "/" + relativePath + "/" + os.path.splitext(file.name)[0] + ".xxx", "-f", "html", "-t", "markdown_github", file.path])
                print(" ... from Markdown to Dokuwiki File = " + targetDirectory + "/" + relativePath + "/" + os.path.splitext(file.name)[0] + ".dok")
                subprocess.run(["pandoc", "-s", "-o", targetDirectory + "/" + relativePath + "/" + os.path.splitext(file.name)[0] + ".dok", "-f", "markdown_github", "-t", "dokuwiki", targetDirectory + "/" + relativePath + "/" + os.path.splitext(file.name)[0] + ".xxx"])
                # TODO os.filedelete(targetDirectory + "/" + relativePath + "/" + os.path.splitext(file.name)[0] + ".xxx")

            else:
                print(" Copying to File = " + targetDirectory + "/" + relativePath  + "/" + file.name)
                # TODO os.filecopy(file.path, targetDirectory + "/" + relativePath + "/" + file.name)


def WriteFile(file, relativePath):
    fileName = file.name.toLower()    
    subprocess.run(["pandoc", "-s", "-o", targetDirectory + "/" + relativePath + "/" + os.path.splitext(file.name)[0] + ".dok", "-f", "markdown_github", "-t", "dokuwiki", file.path])



print("WikiToDoku.py Utility, rev Oct 12, 2016")
print("=======================================")

UpdateWiki("/home/aj/GPA/openPDC/Source/Documentation/wiki", "/home/aj/GPA/dokuwiki/openpdc")   # UpdateWiki(os.getcwd()) 
