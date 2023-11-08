-- Module Name Export

ExportScript.FoundDCSModule = true
ExportScript.Version.A4E = "2.2.0" --matches 2.2. beta of A-4 model

--[[
So the A-4 community model uses dynamically numbered DCS ids and commands.
That means that if a new entry is inserted in the middle of the list, it will push all the numbers after it.
That is a bit of a problem for how ExportScripts works.
Pratically this means that a newer version of the A-4 model could break not only these definitions of the clickable items
but also will break other things that rely upon those ids not changing (i.e. StreamDeck DCS plugin)
]]

ExportScript.ConfigEveryFrameArguments = 
{
	--[[
	every frames arguments
	based of "mainpanel_init.lua"
	Example (http://www.lua.org/manual/5.1/manual.html#pdf-string.format)
	[DeviceID] = "Format"
	  [4] = "%.4f",  <- floating-point number with 4 digits after point
	 [19] = "%0.1f", <- floating-point number with 1 digit after point
	[129] = "%1d",   <- decimal number
	  [5] = "%.f",   <- floating point number rounded to a decimal number
	]]
}
ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	
	[525] = "%1d",  -- Dispenser 2 Counter (Device COUNTERMEASURES/32 Command/Button 3109 ID 525 Increment 0.0 Range 0-1)
	[530] = "%1d",  -- Chaff Power Switch (Device COUNTERMEASURES/32 Command/Button 3110 ID 530 Increment 1 Range 0-1)
	[522] = "%1d",  -- Dispenser Select (Device COUNTERMEASURES/32 Command/Button 3106 ID 522 Increment 1 Range -1-1)
	[524] = "%1d",  -- Dispenser 1 Counter (Device COUNTERMEASURES/32 Command/Button 3108 ID 524 Increment 0.0 Range 0-1)
	[523] = "%1d",  -- Chaff AUTO Pushbutton (ALE-29A Salvo) (Device COUNTERMEASURES/32 Command/Button 3107 ID 523 Increment 1 Range 0-1)
	[720] = "%1d",  -- Internal-External Fuel Switch (Device AVIONICS/2 Command/Button 3018 ID 720 Increment 1 Range 0-1)
	[663] = "%1d",  -- Standby Attitude Horizon (Device AVIONICS/2 Command/Button 3042 ID 663 Increment 1 Range 0-1)
	[853] = "%1d",  -- AoA Indexer Dimming Wheel (Device AVIONICS/2 Command/Button 3165 ID 853 Increment 1.0 Range -1-1)
	[110] = "%1d",  -- White Floodlights Control (Device AVIONICS/2 Command/Button 3081 ID 110 Increment 0.0 Range 0-1)
	[108] = "%1d",  -- Instrument Lights Brightness (Device AVIONICS/2 Command/Button 3084 ID 108 Increment -1 Range -1.0-1.0)
	[25] = "%1d",  -- Alternate Ejection Handle (Device AVIONICS/2 Command/Button 3149 ID 25 Increment 1 Range 0-1)
	[723] = "%1d",  -- Master Test Switch (Device AVIONICS/2 Command/Button 3039 ID 723 Increment 1 Range 0-1)
	[133] = "%1d",  -- JATO Arming Switch (Device AVIONICS/2 Command/Button 3158 ID 133 Increment 1 Range 0-1)
	[125] = "%1d",  -- Oxygen Switch (Device AVIONICS/2 Command/Button 3138 ID 125 Increment 1 Range 0-1)
	[106] = "%1d",  -- Instrument Lights Control (Device AVIONICS/2 Command/Button 3082 ID 106 Increment 0.0 Range 0-1)
	[827] = "%1d",  -- Altimeter Pressure (Device AVIONICS/2 Command/Button 3019 ID 827 Increment 0 Range 0-1)
	[139] = "%1d",  -- Accelerometer Reset (Device AVIONICS/2 Command/Button 3111 ID 139 Increment 1 Range 0-1)
	[24] = "%1d",  -- Shoulder Harness Control Handle (Device AVIONICS/2 Command/Button 3148 ID 24 Increment 1 Range 0-1)
	[107] = "%1d",  -- Console Lights Control (Device AVIONICS/2 Command/Button 3083 ID 107 Increment 0.0 Range 0-1)
	[134] = "%1d",  -- JATO Jettison Switch (Device AVIONICS/2 Command/Button 3159 ID 134 Increment 1 Range 0-1)
	[257] = "%1d",  -- Rain Removal Switch (unimplemented) (Device AVIONICS/2 Command/Button 3173 ID 257 Increment 1 Range 0-1)
	[885] = "%1d",  -- IAS Index (Device AVIONICS/2 Command/Button 3040 ID 885 Increment 1 Range 0-1.0)
	[225] = "%1d",  -- Windshield Defrost Switch (Device ELECTRIC_SYSTEM/3 Command/Button 3134 ID 225 Increment 1 Range -1-1)
	[224] = "%1d",  -- Cabin Pressure Switch (Device ELECTRIC_SYSTEM/3 Command/Button 3133 ID 224 Increment 1 Range 0-1)
	[226] = "%1d",  -- Cabin Temperature Knob (Device ELECTRIC_SYSTEM/3 Command/Button 3135 ID 226 Increment 0.0 Range 0-1)
	[1243] = "%1d",  -- Emergency Generator Release Handle (Device ELECTRIC_SYSTEM/3 Command/Button 3023 ID 1243 Increment 1 Range 0-1)
	[709] = "%1d",  -- Master Armament Switch (Device ELECTRIC_SYSTEM/3 Command/Button 3002 ID 709 Increment 1 Range 0-1)
	[252] = "%1d",  -- Emergency Generator Switch (Device ELECTRIC_SYSTEM/3 Command/Button 3022 ID 252 Increment 1 Range 0-1)
	[250] = "%.2f",  -- MCL Channel Selector Switch (Device MCL/37 Command/Button 3168 ID 250 Increment -0.05 Range 0-0.95)
	[253] = "%1d",  -- AN/ARA-63 MCL Power Switch (Device MCL/37 Command/Button 3169 ID 253 Increment -1 Range -1-1)
	[744] = "%.1f",  -- AWRS Mode Selector Switch (Device WEAPON_SYSTEM/6 Command/Button 3034 ID 744 Increment -0.1 Range 0-0.5)
	[702] = "%1d",  -- Bomb Arm Switch (Device WEAPON_SYSTEM/6 Command/Button 3026 ID 702 Increment -1 Range -1-1)
	[726] = "%.1f",  -- Shrike/Sidewinder Volume Knob (Device WEAPON_SYSTEM/6 Command/Button 3125 ID 726 Increment 0 Range -1.0-1.0)
	[393] = "%1d",  -- Gunpod Station RH Switch (Device WEAPON_SYSTEM/6 Command/Button 3011 ID 393 Increment 1 Range 0-1)
	[704] = "%1d",  -- Station 2 Selector Switch (Device WEAPON_SYSTEM/6 Command/Button 3004 ID 704 Increment 1 Range 0-1)
	[392] = "%1d",  -- Gunpod Station CTR Switch (Device WEAPON_SYSTEM/6 Command/Button 3010 ID 392 Increment 1 Range 0-1)
	[701] = "%1d",  -- Guns Charging Switch (Device WEAPON_SYSTEM/6 Command/Button 3001 ID 701 Increment 1 Range 0-1)
	[390] = "%1d",  -- Gunpod Switch (Device WEAPON_SYSTEM/6 Command/Button 3012 ID 390 Increment -1 Range -1-1)
	[707] = "%1d",  -- Station 5 Selector Switch (Device WEAPON_SYSTEM/6 Command/Button 3007 ID 707 Increment 1 Range 0-1)
	[742] = "%.2f",  -- AWRS Drop Interval Knob (Device WEAPON_SYSTEM/6 Command/Button 3032 ID 742 Increment 0 Range 0-0.9)
	[1241] = "%1d",  -- Emergency Stores Release Handle (Device WEAPON_SYSTEM/6 Command/Button 3027 ID 1241 Increment 1 Range 0-1)
	[708] = "%.1f",  -- Weapon Function Selector Switch (Device WEAPON_SYSTEM/6 Command/Button 3008 ID 708 Increment -0.1 Range 0-0.6)
	[705] = "%1d",  -- Station 3 Selector Switch (Device WEAPON_SYSTEM/6 Command/Button 3005 ID 705 Increment 1 Range 0-1)
	[391] = "%1d",  -- Gunpod Station LH Switch (Device WEAPON_SYSTEM/6 Command/Button 3009 ID 391 Increment 1 Range 0-1)
	[740] = "%.2f",  -- AWRS Quantity Selector Switch (Device WEAPON_SYSTEM/6 Command/Button 3031 ID 740 Increment -0.05 Range 0-0.55)
	[743] = "%1d",  -- AWRS Multiplier Switch (Device WEAPON_SYSTEM/6 Command/Button 3033 ID 743 Increment 1 Range 0-1)
	[700] = "%.1f",  -- Emergency Release Selector (Device WEAPON_SYSTEM/6 Command/Button 3025 ID 700 Increment -0.1 Range 0-0.6)
	[706] = "%1d",  -- Station 4 Selector Switch (Device WEAPON_SYSTEM/6 Command/Button 3006 ID 706 Increment 1 Range 0-1)
	[725] = "%.1f",  -- Shrike Selector Knob (Device WEAPON_SYSTEM/6 Command/Button 3137 ID 725 Increment -0.1 Range 0-0.4)
	[703] = "%1d",  -- Station 1 Selector Switch (Device WEAPON_SYSTEM/6 Command/Button 3003 ID 703 Increment 1 Range 0-1)
	[1242] = "%1d",  -- Manual Flight Control Handle (Device HYDRAULIC_SYSTEM/7 Command/Button 3136 ID 1242 Increment 1 Range 0-1)
	[146] = "%1d",  -- Elapsed-Time Clock (Device CLOCK/8 Command/Button 3105 ID 146 Increment 1 Range 0-1)
	[120] = "%.1f",  -- AN/APG-53A Radar Mode Switch (Device RADAR/10 Command/Button 3063 ID 120 Increment -0.1 Range 0-0.4)
	[721] = "%1d",  -- Radar Terrain Clearance Switch (Device RADAR/10 Command/Button 3055 ID 721 Increment 1 Range 0-1)
	[401] = "%.1f",  -- Radar Indicator Brilliance (Device RADAR/10 Command/Button 3058 ID 401 Increment 0.0 Range 0-1)
	[122] = "%.1f",  -- Radar Antenna Tilt Switch (Device RADAR/10 Command/Button 3065 ID 122 Increment 0.4 Range 0-1)
	[404] = "%.1f",  -- Radar Indicator Reticle (Device RADAR/10 Command/Button 3062 ID 404 Increment 0.0 Range 0-1)
	[121] = "%1d",  -- Radar AoA Compensation Switch (Device RADAR/10 Command/Button 3064 ID 121 Increment 1 Range 0-1)
	[400] = "%.1f",  -- Radar Indicator Storage (Device RADAR/10 Command/Button 3057 ID 400 Increment 0.0 Range 0-1)
	[722] = "%1d",  -- Radar Range Switch (Device RADAR/10 Command/Button 3056 ID 722 Increment 1 Range 0-1)
	[403] = "%.1f",  -- Radar Indicator Gain (Device RADAR/10 Command/Button 3060 ID 403 Increment 0.0 Range 0-1)
	[405] = "%1d",  -- Radar Indicator Filter Plate (Device RADAR/10 Command/Button 3061 ID 405 Increment 1 Range 0-1)
	[402] = "%.1f",  -- Radar Indicator Detail (Device RADAR/10 Command/Button 3059 ID 402 Increment 0.0 Range 0-1)
	[123] = "%.1f",  -- Radar Obstacle Tone Volume (Device RADAR/10 Command/Button 3068 ID 123 Increment 0.0 Range -1-1)
	[251] = "%1d",  -- Seat Adjustment Switch (Device SEAT/45 Command/Button 3175 ID 251 Increment 1 Range -1-1)
	[132] = "%1d",  -- Flap Handle (Device FLAPS/14 Command/Button 3015 ID 132 Increment -1 Range -1.0-1.0)
	[8] = "%1d",  -- Landing Gear Handle (Device GEAR/15 Command/Button 3020 ID 8 Increment 1 Range 0-1)
	[10] = "%1d",  -- Arresting Hook Handle (Device GEAR/15 Command/Button 3021 ID 10 Increment 1 Range 0-1)
	[1240] = "%1d",  -- Emergency Landing Gear Release Handle (Device GEAR/15 Command/Button 3036 ID 1240 Increment 1 Range 0-1)
	[84] = "%1d",  -- Spoiler Arm Switch (Device SPOILERS/16 Command/Button 3017 ID 84 Increment 1 Range 0-1)
	[0] = "%1d",  -- Canopy Lever (Device CANOPY/17 Command/Button 71 ID 0 Increment 1 Range 0-1)
	[603] = "%1d",  -- AN/APN-141 Radar Altimeter (Device RADARWARN/19 Command/Button 3038 ID 603 Increment 1 Range -1-0)
	[103] = "%1d",  -- Fuel Dump Switch (Device ENGINE/20 Command/Button 3143 ID 103 Increment -1 Range -1-1)
	[0] = "%1d",  -- Throttle Position Lock (Device ENGINE/20 Command/Button 3087 ID 0 Increment -1 Range -1-1)
	[100] = "%1d",  -- Engine Starter Switch (Device ENGINE/20 Command/Button 3013 ID 100 Increment 1 Range 0-1)
	[101] = "%1d",  -- Drop Tank Pressurization Switch (Device ENGINE/20 Command/Button 3144 ID 101 Increment -1 Range -1-1)
	[130] = "%1d",  -- Manual Fuel Shutoff Control Lever (Device ENGINE/20 Command/Button 3146 ID 130 Increment 1 Range 0-1)
	[104] = "%1d",  -- Fuel Control Switch (Device ENGINE/20 Command/Button 3145 ID 104 Increment 1 Range 0-1)
	[256] = "%1d",  -- Fuel Transfer Switch (Device ENGINE/20 Command/Button 3177 ID 256 Increment 1 Range 0-1)
	[131] = "%1d",  -- Manual Fuel Shutoff Control Catch (Device ENGINE/20 Command/Button 3147 ID 131 Increment 1 Range 0-1)
	[891] = "%1d",  -- Gunsight Day-Night Switch (Device GUNSIGHT/22 Command/Button 3029 ID 891 Increment 1 Range 0-1)
	[892] = "%1d",  -- Gunsight Elevation Control (Device GUNSIGHT/22 Command/Button 3028 ID 892 Increment 1.0 Range 0-1)
	[895] = "%1d",  -- Gunsight Light Control (Device GUNSIGHT/22 Command/Button 3030 ID 895 Increment 0 Range 0-1)
	[237] = "%1d",  -- Present Longitude Push-to-Set Knob (Device NAV/23 Command/Button 3151 ID 237 Increment 1 Range 0-1)
	[176] = "%.2f",  -- AN/ASN-41 Function Selector Switch (Device NAV/23 Command/Button 3047 ID 176 Increment -0.1 Range 0-0.4)
	[170] = "%.2f",  -- AN/APN-153 Doppler Navigation Radar Mode Switch (Device NAV/23 Command/Button 3045 ID 170 Increment -0.1 Range 0-0.4)
	[902] = "%.2f",  -- TACAN Channel 1s (Device NAV/23 Command/Button 3071 ID 902 Increment -0.1 Range 0-0.9)
	[248] = "%1d",  -- Destination Latitude Slew Knob (Device NAV/23 Command/Button 3166 ID 248 Increment -1 Range -1-1)
	[238] = "%1d",  -- Destination Latitude Push-to-Set Knob (Device NAV/23 Command/Button 3152 ID 238 Increment 1 Range 0-1)
	[241] = "%1d",  -- Wind Speed Push-to-Set Knob (Device NAV/23 Command/Button 3155 ID 241 Increment 1 Range 0-1)
	[242] = "%1d",  -- Wind Direction Push-to-Set Knob (Device NAV/23 Command/Button 3156 ID 242 Increment 1 Range 0-1)
	[236] = "%1d",  -- Present Latitude Push-to-Set Knob (Device NAV/23 Command/Button 3150 ID 236 Increment 1 Range 0-1)
	[900] = "%.2f",  -- AN/ARN-52 TACAN Mode Switch (Device NAV/23 Command/Button 3069 ID 900 Increment -0.1 Range 0-0.3)
	[254] = "%1d",  -- TACAN Antenna Control Switch (unimplemented) (Device NAV/23 Command/Button 3172 ID 254 Increment -1 Range -1-1)
	[240] = "%1d",  -- Magnetic Variation Push-to-Set Knob (Device NAV/23 Command/Button 3154 ID 240 Increment 1 Range 0-1)
	[903] = "%1d",  -- TACAN Volume (Device NAV/23 Command/Button 3072 ID 903 Increment 0.0 Range -1-1)
	[255] = "%1d",  -- Navigation Dead Reckoning/Doppler Switch (unimplemented) (Device NAV/23 Command/Button 3174 ID 255 Increment 1 Range 0-1)
	[239] = "%1d",  -- Destination Longitude Push-to-Set Knob (Device NAV/23 Command/Button 3153 ID 239 Increment 1 Range 0-1)
	[249] = "%1d",  -- Destination Longitude Slew Knob (Device NAV/23 Command/Button 3167 ID 249 Increment -1 Range -1-1)
	[724] = "%1d",  -- BDHI Switch (Device NAV/23 Command/Button 3044 ID 724 Increment -1.0 Range -1.0-1.0)
	[247] = "%1d",  -- AN/APN-153 Memory Light Test (Device NAV/23 Command/Button 3046 ID 247 Increment 1 Range 0-1)
	[901] = "%.2f",  -- TACAN Channel 10s (Device NAV/23 Command/Button 3070 ID 901 Increment -0.05 Range 0-0.6)
	[220] = "%1d",  -- Fuselage Light Switch (Device EXT_LIGHTS/25 Command/Button 3077 ID 220 Increment 1 Range -1.0-1.0)
	[83] = "%1d",  -- Master Exterior Lights Switch (Device EXT_LIGHTS/25 Command/Button 3073 ID 83 Increment -1 Range -1.0-1.0)
	[218] = "%1d",  -- Taxi Light Switch (Device EXT_LIGHTS/25 Command/Button 3075 ID 218 Increment 1 Range 0-1)
	[217] = "%1d",  -- Probe Light Switch (Device EXT_LIGHTS/25 Command/Button 3074 ID 217 Increment 1 Range -1.0-1.0)
	[221] = "%1d",  -- Lighting Flash/Steady Switch (Device EXT_LIGHTS/25 Command/Button 3078 ID 221 Increment 1 Range 0-1)
	[223] = "%1d",  -- Tail Light Switch (Device EXT_LIGHTS/25 Command/Button 3080 ID 223 Increment 1 Range -1.0-1.0)
	[222] = "%1d",  -- Navigation Lights Switch (Device EXT_LIGHTS/25 Command/Button 3079 ID 222 Increment 1 Range -1.0-1.0)
	[219] = "%1d",  -- Anti-Collision Light Switch (Device EXT_LIGHTS/25 Command/Button 3076 ID 219 Increment 1 Range 0-1)
	[82] = "%1d",  -- Rudder Trim Switch (Device TRIM/26 Command/Button 3085 ID 82 Increment 0.0 Range -1-1)
	[135] = "%1d",  -- APC Power Switch (Device AFCS/27 Command/Button 3095 ID 135 Increment -1.0 Range -1.0-1.0)
	[258] = "%1d",  -- AFCS 1-N-2 Guard Switch (Device AFCS/27 Command/Button 3170 ID 258 Increment 1 Range 0-1)
	[161] = "%1d",  -- AFCS Engage Switch (Device AFCS/27 Command/Button 3089 ID 161 Increment 1 Range 0-1)
	[163] = "%1d",  -- AFCS Altitude Switch (Device AFCS/27 Command/Button 3091 ID 163 Increment 1 Range 0-1)
	[259] = "%1d",  -- AFCS 1-N-2 Switch (Device AFCS/27 Command/Button 3171 ID 259 Increment -1 Range -1-1)
	[164] = "%1d",  -- AFCS Heading Select Pull-to-Set Knob (Device AFCS/27 Command/Button 3092 ID 164 Increment 0.0 Range 0-1)
	[166] = "%1d",  -- AFCS Aileron Trim Switch (unimplemented) (Device AFCS/27 Command/Button 3094 ID 166 Increment 1 Range 0-1)
	[160] = "%1d",  -- AFCS Standby Switch (Device AFCS/27 Command/Button 3088 ID 160 Increment 1 Range 0-1)
	[165] = "%1d",  -- AFCS Stability Augmentation Switch (Yaw Damper) (Device AFCS/27 Command/Button 3093 ID 165 Increment 1 Range 0-1)
	[136] = "%1d",  -- APC Temperature Switch (Device AFCS/27 Command/Button 3096 ID 136 Increment -1.0 Range -1.0-1.0)
	[162] = "%1d",  -- AFCS Heading Select Switch (Device AFCS/27 Command/Button 3090 ID 162 Increment 1 Range 0-1)
	[367] = "%.2f",  -- Radio Frequency 10 MHz (Device RADIO/28 Command/Button 3102 ID 367 Increment -0.05 Range 0-0.85)
	[372] = "%.2f",  -- AN/ARC-51A UHF Radio Mode Switch (Device RADIO/28 Command/Button 3097 ID 372 Increment -0.1 Range 0-0.3)
	[369] = "%.2f",  -- Radio Frequency 50 kHz (Device RADIO/28 Command/Button 3104 ID 369 Increment -0.05 Range 0-0.95)
	[368] = "%.2f",  -- Radio Frequency 1 MHz (Device RADIO/28 Command/Button 3103 ID 368 Increment -0.1 Range 0-0.9)
	[370] = "%1d",  -- Radio Squelch Disable (Device RADIO/28 Command/Button 3100 ID 370 Increment 1 Range 0-1)
	[361] = "%.2f",  -- Radio Preset Channel Selector (Device RADIO/28 Command/Button 3101 ID 361 Increment -0.05 Range 0.0-0.95)
	[366] = "%1d",  -- Radio Frequency Mode (Device RADIO/28 Command/Button 3098 ID 366 Increment 1 Range -1-1)
	[365] = "%.2f",  -- Radio Volume (Device RADIO/28 Command/Button 3099 ID 365 Increment 0.5 Range 0-1)
	[128] = "%1d",  -- Emergency Speedbrake Knob (Device AIRBRAKES/13 Command/Button 3035 ID 128 Increment 1 Range -1-1)
	[85] = "%1d",  -- Speedbrake Switch (Device AIRBRAKES/13 Command/Button 3024 ID 85 Increment 1 Range 0-1)
	[502] = "%.2f",  -- AN/APR-25 Function Selector Switch (Device RWR/31 Command/Button 3120 ID 502 Increment -0.33 Range 0.0-0.99)
	[503] = "%1d",  -- Audio ALQ Switch (Device RWR/31 Command/Button 3114 ID 503 Increment 1 Range 0-1)
	[505] = "%.1f",  -- Missile Alert Volume (Device RWR/31 Command/Button 3119 ID 505 Increment 0.0 Range -0.9-0.9)
	[506] = "%.1f",  -- PRF Volume (Device RWR/31 Command/Button 3118 ID 506 Increment 0.0 Range -0.9-0.9)
	[510] = "%1d",  -- APR-27 Light (Device RWR/31 Command/Button 3117 ID 510 Increment 1 Range 0-1)
	[507] = "%1d",  -- APR-27 Test (Device RWR/31 Command/Button 3116 ID 507 Increment 1 Range 0-1)
	[501] = "%1d",  -- APR-27 Switch (Device RWR/31 Command/Button 3115 ID 501 Increment 1 Range 0-1)
	[504] = "%1d",  -- APR-25 Switch (Device RWR/31 Command/Button 3113 ID 504 Increment 1 Range 0-1)
}

-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-----------------------------

-- Pointed to by ProcessIkarusDCSHighImportance
function ExportScript.ProcessIkarusDCSConfigHighImportance(mainPanelDevice)
	--[[
	every frame export to Ikarus
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	ExportScript.Tools.SendData("ExportID", "Format")
	ExportScript.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) -- <- special function for get frequency data
	ExportScript.Tools.SendData(2000, ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]
end

function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)
	--[[
	every frame export to DAC
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local UHF_RADIO = GetDevice(54)
	ExportScript.Tools.SendDataDAC("ExportID", "Format")
	ExportScript.Tools.SendDataDAC("ExportID", "Format", HardwareConfigID)
	ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000))
	ExportScript.Tools.SendDataDAC("2000", ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]
end

-----------------------------------------------------
-- LOW IMPORTANCE EXPORTS                          --
-- done every gExportLowTickInterval export events --
-----------------------------------------------------

-- Pointed to by ExportScript.ProcessIkarusDCSConfigLowImportance
function ExportScript.ProcessIkarusDCSConfigLowImportance(mainPanelDevice)
	--[[
	export in low tick interval to Ikarus
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	ExportScript.Tools.SendData("ExportID", "Format")
	ExportScript.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) -- <- special function for get frequency data
	ExportScript.Tools.SendData(2000, ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]
	
	--[[
	ExportScript.Tools.WriteToLog('list_cockpit_params(): '..ExportScript.Tools.dump(list_cockpit_params()))
	ExportScript.Tools.WriteToLog('CMSP: '..ExportScript.Tools.dump(list_indication(7)))
	
	-- list_indication get the value of cockpit displays
	local ltmp1 = 0
	for ltmp2 = 0, 20, 1 do
		ltmp1 = list_indication(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
	end


	-- getmetatable get function name from devices
	local ltmp1 = 0
	for ltmp2 = 1, 70, 1 do
		ltmp1 = GetDevice(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
		ExportScript.Tools.WriteToLog(ltmp2..' (metatable): '..ExportScript.Tools.dump(getmetatable(ltmp1)))
	end
	]]
end

function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
	--[[
	export in low tick interval to DAC
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local UHF_RADIO = GetDevice(54)
	ExportScript.Tools.SendDataDAC("ExportID", "Format")
	ExportScript.Tools.SendDataDAC("ExportID", "Format", HardwareConfigID)
	ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000))
	ExportScript.Tools.SendDataDAC("2000", ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]

	--=====================================================================================
	--[[
	ExportScript.Tools.WriteToLog('list_cockpit_params(): '..ExportScript.Tools.dump(list_cockpit_params()))
	ExportScript.Tools.WriteToLog('CMSP: '..ExportScript.Tools.dump(list_indication(7)))
	
	-- list_indication get the value of cockpit displays
	local ltmp1 = 0
	for ltmp2 = 0, 20, 1 do
		ltmp1 = list_indication(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
	end


	-- getmetatable get function name from devices
	local ltmp1 = 0
	for ltmp2 = 1, 70, 1 do
		ltmp1 = GetDevice(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
		ExportScript.Tools.WriteToLog(ltmp2..' (metatable): '..ExportScript.Tools.dump(getmetatable(ltmp1)))
	end
	]]
end

-----------------------------
--     Custom functions    --
-----------------------------