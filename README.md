# DCS-A-4E-C ExportScript
DCS Export-Scripts configuration for the community A-4E-C plane

This is a work in progress to specify a valid DCS Export-Scripts (https://github.com/s-d-a/DCS-ExportScripts) script for the Community Edition A-4E-C aircraft (https://github.com/heclak/community-a4e-c).

The purpose is so that Stream Deck, with the DCS plugin (https://github.com/enertial/streamdeck-dcs-interface), can be used to control the aircraft. Of course, once the export script is made, it can be used for lots of things. Export-Scripts has all official planes, but I could not find one for the A-4E-C.

<ul>
<li>
    /dev - contains sample files and scripts to pull debugging data and generate settings. You probably don't need stuff in here unless you are planning on updating the export if a new A4 renumbers the controls.
    <ul>
    <li>GenerateExportConfigArgs.lua - script to generate some lua code that defines the ExportScript clickabledata elements</li>
    <li>generator_globals.lua - "header" includes and common functions needed for GenerateExportConfigArgs.lua to be able to load aircraft .lua script</li>
    <li>i_18n.lua - fake script in order to get aircraft script to compile</li>
    <li>most other scripts - linked from the aircraft dir</li>
    </ul>
</li>
<li>/dev/samples - just a couple other working export scripts and aircraft clickabledata used as examples (syumbolic links)</li>
<li>/ExportModules - dir for the Export Script
    <ul>
    <li>A-4E-C.lua - export script</li>
    </ul>
</li>
<li>/StreamDeck - StreamDeck profiles
    <ul>
    <li>DCS - A4.steamDecProfile - Steam Deck XL prfile for A4 using these exports</li>
    </ul>
</li>
</ul>