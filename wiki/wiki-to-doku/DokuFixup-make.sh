#! /bin/sh -x
mcs DokuFixup.cs
exec mono DokuFixup.exe --input='../openpdc/Getting-Started.md' --output=test