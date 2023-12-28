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
<ul><li>/samples - just a couple other working export scripts and aircraft clickabledata used as examples (symbolic links)</li></ul>
<li>/ExportModules - dir for the Export Script
    <ul>
    <li>A-4E-C.lua - export script. This goes into the [Saved games]/[DCS dir]/Scripts/DCS-ExportScript/ExportModules directory. With DCS running and the A4E as your plane in a mission, these values are exported and, with something like the Stream Deck DCS plugin, allows the functions of the plane to be remote controlled.</li>
    </ul>
</li>
<li>/StreamDeck - StreamDeck profiles
    <ul>
    <li>DCS - A4.streamDecProfile - Stream Deck XL profile for A4 using these exports</li>
    </ul>
</li>
</ul>

## Dynamic Numbering
The A4 aircraft, like a few of the official ED aircraft, uses dynamic numbering for the devices, clickables, and ids. This means that if the order of any of those things changes (or if something is added or removed in the middle of the list), it will throw off this ExportScript (and therefore whatever device uses these exports). That is why I added a comprehensive comment after the numeric mapping. My hopes are that if something changes in a future A4 release, I can code a conversion script to translate to the new numbers. I certanily do not want to re-setup my StreamDeck again.

## Known Issues
<ol>
<li>
There is something strange about the ground Radar Mode knob and the Radar Tilt knob (left hand panel). Even though I believe the exports to be correct and the plane can be controlled (i.e. the knobs move when I hit a button on the Stream Deck and the correct values seem to be returned), those features do not actually function via the export. The Radar won't actually turn on or switch modes. The tilt doesn't actaully do anything. Nevertheless, the game controller setup works fine. So, in the supplied StreamDeck profile, I use a hot key to manipulate those controls instead of the normal DCS plugin route.
</li>
<li>
The Radar Altimeter control and the Nav Computer controls are strange. They are buttons and rotation knobs in one. I could not figure out how to do both things with the Stream Deck DCS plugin. So, those are mapped with hotkey control binds.
</li>
</ol>
