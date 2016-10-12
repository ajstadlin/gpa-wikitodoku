#**************************************************************
# WikiToDoku.py
#==============================================================
# Routines using pandoc to convert GitHub Markdown files to DokuWiki
# Requires Python 3.x, not compatible with Python 2.x
#
# 10/10/16 AJ: Derived from UpdateWiki.py
#              Modified to detect and convert HTML files
#**************************************************************
import os
import subprocess

sourceDirectory = ""
targetDirectory = ""

def UpdateWiki(directory):
    global sourceDirectory, targetDirectory
    sourceDirectory = os.path.dirname(directory)
    # targetDirectory = "K:\data\pages\wikitest"
    targetDirectory = os.path.dirname("/home/aj/GPA/wikitest")
    if not os.path.exists(targetDirectory):
        print("Creating Target Directory -> " + targetDirectory)
        os.mkdir(targetDirectory)
    for file in os.scandir(sourceDirectory):
        if file.is_dir(follow_symlinks=False) and file.name != ".git":
            UpdateFolder(file.path)
        else:
            if file.name.endswith(".md"):
                subprocess.run(["pandoc", "-s", "-o", targetDirectory + "/" + os.path.splitext(file.name)[0] + ".txt", "-f", "markdown_github", "-t", "dokuwiki", file.path])


def UpdateFolder(directory):
    global sourceDirectory, targetDirectory
    relativePath = os.path.relpath(directory, sourceDirectory).lower().replace(".wiki", "")
    
    os.mkdir(targetDirectory + "/" + relativePath)
    for file in os.scandir(directory):
        if file.is_dir(follow_symlinks=False) and file.name != ".git":
            UpdateFolder(file.path)
        else:
            if file.name.endswith(".md"):
                subprocess.run(["pandoc", "-s", "-o", targetDirectory + "/" + relativePath + "/" + os.path.splitext(file.name)[0] + ".txt", "-f", "markdown_github", "-t", "dokuwiki", file.path])


def WriteFile(file, relativePath):
    fileName = file.name.toLower()    
    subprocess.run(["pandoc", "-s", "-o", targetDirectory + "/" + relativePath + "/" + os.path.splitext(file.name)[0] + ".txt", "-f", "markdown_github", "-t", "dokuwiki", file.path])


              
#UpdateWiki(os.getcwd())  # Process the Update from the Current Working Directory
UpdateWiki("/home/aj/GPA/openPDC/Source/Documentation/wiki")
