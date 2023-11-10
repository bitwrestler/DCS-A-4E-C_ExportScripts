# DCS-A-4E-C ExportScript
DCS Export-Scripts configuration for the community A-4E-C plane

This is a work in progress to specify a valid DCS Export-Scripts (https://github.com/s-d-a/DCS-ExportScripts) script for the Community Edition A-4E-C aircraft (https://github.com/heclak/community-a4e-c).

The purpose is so that Stream Deck with the DCS plugin can be used to control the aircraft. Export-Scripts has all official planes, but I could not find one for the A-4E-C.


/dev - contains sample files and scripts to pull debugging data and generate settings
    generator.lua - script to generate some lua code tht defines the ExportScript clickabledata elements
    generator_globals.lua - "header" includes needed for generator.lua to be able to load aircraft .lua script
    i_18n.lua - fake script in order to get aircraft script to compile
    most other scripts - linked from the aircraft dir
/dev/samples - just a couple other working export scripts and aircraft clickabledata used as examples
/ExportModules - dir for the Export Script
    A-4E-C.lua - export script