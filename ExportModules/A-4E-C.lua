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
	
--[0] = "%1d",  -- Throttle Position Lock (Device ENGINE/20 Command/Button throttle_click/3087 ID PNT_80/0 Increment -1 Range -1-1)
[0] = "%1d",  -- Canopy Lever (Device CANOPY/17 Command/Button Canopy/71 ID PNT_80/0 Increment 1 Range 0-1)
[8] = "%1d",  -- Landing Gear Handle (Device GEAR/15 Command/Button Gear/3020 ID PNT_8/8 Increment 1 Range 0-1)
[10] = "%1d",  -- Arresting Hook Handle (Device GEAR/15 Command/Button Hook/3021 ID PNT_10/10 Increment 1 Range 0-1)
[24] = "%1d",  -- Shoulder Harness Control Handle (Device AVIONICS/2 Command/Button CPT_shoulder_harness/3148 ID PNT_24/24 Increment 1 Range 0-1)
[25] = "%1d",  -- Alternate Ejection Handle (Device AVIONICS/2 Command/Button CPT_secondary_ejection_handle/3149 ID PNT_25/25 Increment 1 Range 0-1)
[82] = "%1d",  -- Rudder Trim Switch (Device TRIM/26 Command/Button rudder_trim/3085 ID PNT_82/82 Increment 0.0 Range -1-1)
[83] = "%1d",  -- Master Exterior Lights Switch (Device EXT_LIGHTS/25 Command/Button extlight_master/3073 ID PNT_83/83 Increment -1 Range -1.0-1.0)
[84] = "%1d",  -- Spoiler Arm Switch (Device SPOILERS/16 Command/Button spoiler_arm/3017 ID PNT_84/84 Increment 1 Range 0-1)
[85] = "%1d",  -- Speedbrake Switch (Device AIRBRAKES/13 Command/Button speedbrake/3024 ID PNT_85/85 Increment 1 Range 0-1)
[100] = "%1d",  -- Engine Starter Switch (Device ENGINE/20 Command/Button push_starter_switch/3013 ID PNT_100/100 Increment 1 Range 0-1)
[101] = "%1d",  -- Drop Tank Pressurization Switch (Device ENGINE/20 Command/Button ENGINE_drop_tanks_sw/3144 ID PNT_101/101 Increment -1 Range -1-1)
[103] = "%1d",  -- Fuel Dump Switch (Device ENGINE/20 Command/Button ENGINE_wing_fuel_sw/3143 ID PNT_103/103 Increment -1 Range -1-1)
[104] = "%1d",  -- Fuel Control Switch (Device ENGINE/20 Command/Button ENGINE_fuel_control_sw/3145 ID PNT_104/104 Increment 1 Range 0-1)
[106] = "%.1f",  -- Instrument Lights Control (Device AVIONICS/2 Command/Button intlight_instruments/3082 ID PNT_106/106 Increment 0.0 Range 0-1)
[107] = "%.1f",  -- Console Lights Control (Device AVIONICS/2 Command/Button intlight_console/3083 ID PNT_107/107 Increment 0.0 Range 0-1)
[108] = "%1d",  -- Instrument Lights Brightness (Device AVIONICS/2 Command/Button intlight_brightness/3084 ID PNT_108/108 Increment -1 Range -1.0-1.0)
[110] = "%.1f",  -- White Floodlights Control (Device AVIONICS/2 Command/Button intlight_whiteflood/3081 ID PNT_110/110 Increment 0.0 Range 0-1)
[120] = "%.1f",  -- AN/APG-53A Radar Mode Switch (Device RADAR/10 Command/Button radar_mode/3063 ID PNT_120/120 Increment -0.1 Range 0-0.4)
[121] = "%1d",  -- Radar AoA Compensation Switch (Device RADAR/10 Command/Button radar_aoacomp/3064 ID PNT_121/121 Increment 1 Range 0-1)
[122] = "%.1f",  -- Radar Antenna Tilt Switch (Device RADAR/10 Command/Button radar_angle/3065 ID PNT_122/122 Increment 0.4 Range 0-1)
[123] = "%.1f",  -- Radar Obstacle Tone Volume (Device RADAR/10 Command/Button radar_volume/3068 ID PNT_123/123 Increment 0.0 Range -1-1)
[125] = "%1d",  -- Oxygen Switch (Device AVIONICS/2 Command/Button oxygen_switch/3138 ID PNT_125/125 Increment 1 Range 0-1)
[128] = "%1d",  -- Emergency Speedbrake Knob (Device AIRBRAKES/13 Command/Button speedbrake_emer/3035 ID PNT_128/128 Increment 1 Range -1-1)
[130] = "%1d",  -- Manual Fuel Shutoff Control Lever (Device ENGINE/20 Command/Button ENGINE_manual_fuel_shutoff/3146 ID PNT_130/130 Increment 1 Range 0-1)
[131] = "%1d",  -- Manual Fuel Shutoff Control Catch (Device ENGINE/20 Command/Button ENGINE_manual_fuel_shutoff_catch/3147 ID PNT_131/131 Increment 1 Range 0-1)
[132] = "%1d",  -- Flap Handle (Device FLAPS/14 Command/Button flaps/3015 ID PNT_132/132 Increment -1 Range -1.0-1.0)
[133] = "%1d",  -- JATO Arming Switch (Device AVIONICS/2 Command/Button JATO_arm/3158 ID PNT_133/133 Increment 1 Range 0-1)
[134] = "%1d",  -- JATO Jettison Switch (Device AVIONICS/2 Command/Button JATO_jettison/3159 ID PNT_134/134 Increment 1 Range 0-1)
[135] = "%1d",  -- APC Power Switch (Device AFCS/27 Command/Button apc_engagestbyoff/3095 ID PNT_135/135 Increment -1.0 Range -1.0-1.0)
[136] = "%1d",  -- APC Temperature Switch (Device AFCS/27 Command/Button apc_hotstdcold/3096 ID PNT_136/136 Increment -1.0 Range -1.0-1.0)
[139] = "%1d",  -- Accelerometer Reset (Device AVIONICS/2 Command/Button accel_reset/3111 ID PNT_139/139 Increment 1 Range 0-1)
[146] = "%1d",  -- Elapsed-Time Clock (Device CLOCK/8 Command/Button clock_stopwatch/3105 ID PNT_146/146 Increment 1 Range 0-1)
[160] = "%1d",  -- AFCS Standby Switch (Device AFCS/27 Command/Button afcs_standby/3088 ID PNT_160/160 Increment 1 Range 0-1)
[161] = "%1d",  -- AFCS Engage Switch (Device AFCS/27 Command/Button afcs_engage/3089 ID PNT_161/161 Increment 1 Range 0-1)
[162] = "%1d",  -- AFCS Heading Select Switch (Device AFCS/27 Command/Button afcs_hdg_sel/3090 ID PNT_162/162 Increment 1 Range 0-1)
[163] = "%1d",  -- AFCS Altitude Switch (Device AFCS/27 Command/Button afcs_alt/3091 ID PNT_163/163 Increment 1 Range 0-1)
[164] = "%.2f",  -- AFCS Heading Select Pull-to-Set Knob (Device AFCS/27 Command/Button afcs_hdg_set/3092 ID PNT_164/164 Increment 0.0 Range 0-1)
[165] = "%1d",  -- AFCS Stability Augmentation Switch (Yaw Damper) (Device AFCS/27 Command/Button afcs_stab_aug/3093 ID PNT_165/165 Increment 1 Range 0-1)
[166] = "%1d",  -- AFCS Aileron Trim Switch (unimplemented) (Device AFCS/27 Command/Button afcs_ail_trim/3094 ID PNT_166/166 Increment 1 Range 0-1)
[170] = "%.1f",  -- AN/APN-153 Doppler Navigation Radar Mode Switch (Device NAV/23 Command/Button doppler_select/3045 ID PNT_170/170 Increment -0.1 Range 0-0.4)
[176] = "%.1f",  -- AN/ASN-41 Function Selector Switch (Device NAV/23 Command/Button nav_select/3047 ID PNT_176/176 Increment -0.1 Range 0-0.4)
[217] = "%1d",  -- Probe Light Switch (Device EXT_LIGHTS/25 Command/Button extlight_probe/3074 ID PNT_217/217 Increment 1 Range -1.0-1.0)
[218] = "%1d",  -- Taxi Light Switch (Device EXT_LIGHTS/25 Command/Button extlight_taxi/3075 ID PNT_218/218 Increment 1 Range 0-1)
[219] = "%1d",  -- Anti-Collision Light Switch (Device EXT_LIGHTS/25 Command/Button extlight_anticoll/3076 ID PNT_219/219 Increment 1 Range 0-1)
[220] = "%1d",  -- Fuselage Light Switch (Device EXT_LIGHTS/25 Command/Button extlight_fuselage/3077 ID PNT_220/220 Increment 1 Range -1.0-1.0)
[221] = "%1d",  -- Lighting Flash/Steady Switch (Device EXT_LIGHTS/25 Command/Button extlight_flashsteady/3078 ID PNT_221/221 Increment 1 Range 0-1)
[222] = "%1d",  -- Navigation Lights Switch (Device EXT_LIGHTS/25 Command/Button extlight_nav/3079 ID PNT_222/222 Increment 1 Range -1.0-1.0)
[223] = "%1d",  -- Tail Light Switch (Device EXT_LIGHTS/25 Command/Button extlight_tail/3080 ID PNT_223/223 Increment 1 Range -1.0-1.0)
[224] = "%1d",  -- Cabin Pressure Switch (Device ELECTRIC_SYSTEM/3 Command/Button cabin_pressure/3133 ID PNT_1251/224 Increment 1 Range 0-1)
[225] = "%1d",  -- Windshield Defrost Switch (Device ELECTRIC_SYSTEM/3 Command/Button windshield_defrost/3134 ID PNT_225/225 Increment 1 Range -1-1)
[226] = "%1d",  -- Cabin Temperature Knob (Device ELECTRIC_SYSTEM/3 Command/Button cabin_temp/3135 ID PNT_226/226 Increment 0.0 Range 0-1)
[236] = "%1d",  -- Present Latitude Push-to-Set Knob (Device NAV/23 Command/Button ppos_lat_push/3150 ID PNT_177/236 Increment 1 Range 0-1)
[237] = "%1d",  -- Present Longitude Push-to-Set Knob (Device NAV/23 Command/Button ppos_lon_push/3151 ID PNT_183/237 Increment 1 Range 0-1)
[238] = "%1d",  -- Destination Latitude Push-to-Set Knob (Device NAV/23 Command/Button dest_lat_push/3152 ID PNT_190/238 Increment 1 Range 0-1)
[239] = "%1d",  -- Destination Longitude Push-to-Set Knob (Device NAV/23 Command/Button dest_lon_push/3153 ID PNT_196/239 Increment 1 Range 0-1)
[240] = "%1d",  -- Magnetic Variation Push-to-Set Knob (Device NAV/23 Command/Button asn41_magvar_push/3154 ID PNT_203/240 Increment 1 Range 0-1)
[241] = "%1d",  -- Wind Speed Push-to-Set Knob (Device NAV/23 Command/Button asn41_windspeed_push/3155 ID PNT_209/241 Increment 1 Range 0-1)
[242] = "%1d",  -- Wind Direction Push-to-Set Knob (Device NAV/23 Command/Button asn41_winddir_push/3156 ID PNT_213/242 Increment 1 Range 0-1)
[247] = "%1d",  -- AN/APN-153 Memory Light Test (Device NAV/23 Command/Button doppler_memory_test/3046 ID PNT_247/247 Increment 1 Range 0-1)
[248] = "%1d",  -- Destination Latitude Slew Knob (Device NAV/23 Command/Button dest_lat_slew/3166 ID PNT_248/248 Increment -1 Range -1-1)
[249] = "%1d",  -- Destination Longitude Slew Knob (Device NAV/23 Command/Button dest_lon_slew/3167 ID PNT_249/249 Increment -1 Range -1-1)
[250] = "%.2f",  -- MCL Channel Selector Switch (Device MCL/37 Command/Button mcl_channel_selector/3168 ID PNT_250/250 Increment -0.05 Range 0-0.95)
[251] = "%1d",  -- Seat Adjustment Switch (Device SEAT/45 Command/Button seat_adjustment/3175 ID PNT_251/251 Increment 1 Range -1-1)
[252] = "%1d",  -- Emergency Generator Switch (Device ELECTRIC_SYSTEM/3 Command/Button emer_gen_bypass/3022 ID PNT_252/252 Increment 1 Range 0-1)
[253] = "%1d",  -- AN/ARA-63 MCL Power Switch (Device MCL/37 Command/Button mcl_power_switch/3169 ID PNT_253/253 Increment -1 Range -1-1)
[254] = "%1d",  -- TACAN Antenna Control Switch (unimplemented) (Device NAV/23 Command/Button tacan_antenna/3172 ID PNT_254/254 Increment -1 Range -1-1)
[255] = "%1d",  -- Navigation Dead Reckoning/Doppler Switch (unimplemented) (Device NAV/23 Command/Button nav_dead_recon/3174 ID PNT_255/255 Increment 1 Range 0-1)
[256] = "%1d",  -- Fuel Transfer Switch (Device ENGINE/20 Command/Button fuel_transfer_bypass/3177 ID PNT_256/256 Increment 1 Range 0-1)
[257] = "%1d",  -- Rain Removal Switch (unimplemented) (Device AVIONICS/2 Command/Button rain_removal/3173 ID PNT_257/257 Increment 1 Range 0-1)
[258] = "%1d",  -- AFCS 1-N-2 Guard Switch (Device AFCS/27 Command/Button afcs_test_guard/3170 ID PNT_258/258 Increment 1 Range 0-1)
[259] = "%1d",  -- AFCS 1-N-2 Switch (Device AFCS/27 Command/Button afcs_test/3171 ID PNT_259/259 Increment -1 Range -1-1)
[361] = "%.2f",  -- Radio Preset Channel Selector (Device RADIO/28 Command/Button arc51_freq_preset/3101 ID PNT_361/361 Increment -0.05 Range 0.0-0.95)
[365] = "%.2f",  -- Radio Volume (Device RADIO/28 Command/Button arc51_volume/3099 ID PNT_365/365 Increment 0.5 Range 0-1)
[366] = "%1d",  -- Radio Frequency Mode (Device RADIO/28 Command/Button arc51_xmitmode/3098 ID PNT_366/366 Increment 1 Range -1-1)
[367] = "%.2f",  -- Radio Frequency 10 MHz (Device RADIO/28 Command/Button arc51_freq_XXooo/3102 ID PNT_367/367 Increment -0.05 Range 0-0.85)
[368] = "%.1f",  -- Radio Frequency 1 MHz (Device RADIO/28 Command/Button arc51_freq_ooXoo/3103 ID PNT_368/368 Increment -0.1 Range 0-0.9)
[369] = "%.2f",  -- Radio Frequency 50 kHz (Device RADIO/28 Command/Button arc51_freq_oooXX/3104 ID PNT_369/369 Increment -0.05 Range 0-0.95)
[370] = "%1d",  -- Radio Squelch Disable (Device RADIO/28 Command/Button arc51_squelch/3100 ID PNT_370/370 Increment 1 Range 0-1)
[372] = "%.1f",  -- AN/ARC-51A UHF Radio Mode Switch (Device RADIO/28 Command/Button arc51_mode/3097 ID PNT_372/372 Increment -0.1 Range 0-0.3)
[390] = "%1d",  -- Gunpod Switch (Device WEAPON_SYSTEM/6 Command/Button gunpod_chargeclear/3012 ID PNT_390/390 Increment -1 Range -1-1)
[391] = "%1d",  -- Gunpod Station LH Switch (Device WEAPON_SYSTEM/6 Command/Button gunpod_l/3009 ID PNT_391/391 Increment 1 Range 0-1)
[392] = "%1d",  -- Gunpod Station CTR Switch (Device WEAPON_SYSTEM/6 Command/Button gunpod_c/3010 ID PNT_392/392 Increment 1 Range 0-1)
[393] = "%1d",  -- Gunpod Station RH Switch (Device WEAPON_SYSTEM/6 Command/Button gunpod_r/3011 ID PNT_393/393 Increment 1 Range 0-1)
[400] = "%.1f",  -- Radar Indicator Storage (Device RADAR/10 Command/Button radar_storage/3057 ID PNT_400/400 Increment 0.0 Range 0-1)
[401] = "%.1f",  -- Radar Indicator Brilliance (Device RADAR/10 Command/Button radar_brilliance/3058 ID PNT_401/401 Increment 0.0 Range 0-1)
[402] = "%.1f",  -- Radar Indicator Detail (Device RADAR/10 Command/Button radar_detail/3059 ID PNT_402/402 Increment 0.0 Range 0-1)
[403] = "%.1f",  -- Radar Indicator Gain (Device RADAR/10 Command/Button radar_gain/3060 ID PNT_403/403 Increment 0.0 Range 0-1)
[404] = "%.1f",  -- Radar Indicator Reticle (Device RADAR/10 Command/Button radar_reticle/3062 ID PNT_404/404 Increment 0.0 Range 0-1)
[405] = "%1d",  -- Radar Indicator Filter Plate (Device RADAR/10 Command/Button radar_filter/3061 ID PNT_405/405 Increment 1 Range 0-1)
[501] = "%1d",  -- APR-27 Switch (Device RWR/31 Command/Button ecm_apr27_off/3115 ID PNT_501/501 Increment 1 Range 0-1)
[502] = "%.2f",  -- AN/APR-25 Function Selector Switch (Device RWR/31 Command/Button ecm_selector_knob/3120 ID PNT_502/502 Increment -0.33 Range 0.0-0.99)
[503] = "%1d",  -- Audio ALQ Switch (Device RWR/31 Command/Button ecm_apr25_audio/3114 ID PNT_503/503 Increment 1 Range 0-1)
[504] = "%1d",  -- APR-25 Switch (Device RWR/31 Command/Button ecm_apr25_off/3113 ID PNT_504/504 Increment 1 Range 0-1)
[505] = "%.1f",  -- Missile Alert Volume (Device RWR/31 Command/Button ecm_msl_alert_axis_outer/3119 ID PNT_505/505 Increment 0.0 Range -0.9-0.9)
[506] = "%.1f",  -- PRF Volume (Device RWR/31 Command/Button ecm_msl_alert_axis_inner/3118 ID PNT_506/506 Increment 0.0 Range -0.9-0.9)
[507] = "%1d",  -- APR-27 Test (Device RWR/31 Command/Button ecm_systest_upper/3116 ID PNT_507/507 Increment 1 Range 0-1)
[510] = "%1d",  -- APR-27 Light (Device RWR/31 Command/Button ecm_systest_lower/3117 ID PNT_510/510 Increment 1 Range 0-1)
[522] = "%1d",  -- Dispenser Select (Device COUNTERMEASURES/32 Command/Button cm_bank/3106 ID PNT_522/522 Increment 1 Range -1-1)
[523] = "%1d",  -- Chaff AUTO Pushbutton (ALE-29A Salvo) (Device COUNTERMEASURES/32 Command/Button cm_auto/3107 ID PNT_523/523 Increment 1 Range 0-1)
[524] = "%.1f",  -- Dispenser 1 Counter (Device COUNTERMEASURES/32 Command/Button cm_adj1/3108 ID PNT_524/524 Increment 0.0 Range 0-1)
[525] = "%.1f",  -- Dispenser 2 Counter (Device COUNTERMEASURES/32 Command/Button cm_adj2/3109 ID PNT_525/525 Increment 0.0 Range 0-1)
[530] = "%1d",  -- Chaff Power Switch (Device COUNTERMEASURES/32 Command/Button cm_pwr/3110 ID PNT_530/530 Increment 1 Range 0-1)
[603] = "%1d",  -- AN/APN-141 Radar Altimeter (Device RADARWARN/19 Command/Button radar_alt_switch/3038 ID PNT_602/603 Increment 1 Range -1-0)
[663] = "%1d",  -- Standby Attitude Horizon (Device AVIONICS/2 Command/Button stby_att_index_button/3042 ID PNT_662/663 Increment 1 Range 0-1)
[700] = "%.1f",  -- Emergency Release Selector (Device WEAPON_SYSTEM/6 Command/Button arm_emer_sel/3025 ID PNT_700/700 Increment -0.1 Range 0-0.6)
[701] = "%1d",  -- Guns Charging Switch (Device WEAPON_SYSTEM/6 Command/Button arm_gun/3001 ID PNT_701/701 Increment 1 Range 0-1)
[702] = "%1d",  -- Bomb Arm Switch (Device WEAPON_SYSTEM/6 Command/Button arm_bomb/3026 ID PNT_702/702 Increment -1 Range -1-1)
[703] = "%1d",  -- Station 1 Selector Switch (Device WEAPON_SYSTEM/6 Command/Button arm_station1/3003 ID PNT_703/703 Increment 1 Range 0-1)
[704] = "%1d",  -- Station 2 Selector Switch (Device WEAPON_SYSTEM/6 Command/Button arm_station2/3004 ID PNT_704/704 Increment 1 Range 0-1)
[705] = "%1d",  -- Station 3 Selector Switch (Device WEAPON_SYSTEM/6 Command/Button arm_station3/3005 ID PNT_705/705 Increment 1 Range 0-1)
[706] = "%1d",  -- Station 4 Selector Switch (Device WEAPON_SYSTEM/6 Command/Button arm_station4/3006 ID PNT_706/706 Increment 1 Range 0-1)
[707] = "%1d",  -- Station 5 Selector Switch (Device WEAPON_SYSTEM/6 Command/Button arm_station5/3007 ID PNT_707/707 Increment 1 Range 0-1)
[708] = "%.1f",  -- Weapon Function Selector Switch (Device WEAPON_SYSTEM/6 Command/Button arm_func_selector/3008 ID PNT_708/708 Increment -0.1 Range 0-0.6)
[709] = "%1d",  -- Master Armament Switch (Device ELECTRIC_SYSTEM/3 Command/Button arm_master/3002 ID PNT_709/709 Increment 1 Range 0-1)
[720] = "%1d",  -- Internal-External Fuel Switch (Device AVIONICS/2 Command/Button FuelGaugeExtButton/3018 ID PNT_720/720 Increment 1 Range 0-1)
[721] = "%1d",  -- Radar Terrain Clearance Switch (Device RADAR/10 Command/Button radar_planprofile/3055 ID PNT_721/721 Increment 1 Range 0-1)
[722] = "%1d",  -- Radar Range Switch (Device RADAR/10 Command/Button radar_range/3056 ID PNT_722/722 Increment 1 Range 0-1)
[723] = "%1d",  -- Master Test Switch (Device AVIONICS/2 Command/Button master_test/3039 ID PNT_723/723 Increment 1 Range 0-1)
[724] = "%1d",  -- BDHI Switch (Device NAV/23 Command/Button bdhi_mode/3044 ID PNT_724/724 Increment -1.0 Range -1.0-1.0)
[725] = "%.1f",  -- Shrike Selector Knob (Device WEAPON_SYSTEM/6 Command/Button shrike_selector/3137 ID PNT_725/725 Increment -0.1 Range 0-0.4)
[726] = "%.1f",  -- Shrike/Sidewinder Volume Knob (Device WEAPON_SYSTEM/6 Command/Button shrike_sidewinder_volume/3125 ID PNT_726/726 Increment 0 Range -1.0-1.0)
[740] = "%.2f",  -- AWRS Quantity Selector Switch (Device WEAPON_SYSTEM/6 Command/Button AWRS_quantity/3031 ID PNT_740/740 Increment -0.05 Range 0-0.55)
[742] = "%.2f",  -- AWRS Drop Interval Knob (Device WEAPON_SYSTEM/6 Command/Button AWRS_drop_interval/3032 ID PNT_742/742 Increment 0 Range 0-0.9)
[743] = "%1d",  -- AWRS Multiplier Switch (Device WEAPON_SYSTEM/6 Command/Button AWRS_multiplier/3033 ID PNT_743/743 Increment 1 Range 0-1)
[744] = "%.1f",  -- AWRS Mode Selector Switch (Device WEAPON_SYSTEM/6 Command/Button AWRS_stepripple/3034 ID PNT_744/744 Increment -0.1 Range 0-0.5)
[827] = "%1d",  -- Altimeter Pressure (Device AVIONICS/2 Command/Button AltPressureKnob/3019 ID PNT_827/827 Increment 0 Range 0-1)
[853] = "%1d",  -- AoA Indexer Dimming Wheel (Device AVIONICS/2 Command/Button AOA_dimming_wheel_AXIS/3165 ID PNT_853/853 Increment 1.0 Range -1-1)
[885] = "%1d",  -- IAS Index (Device AVIONICS/2 Command/Button ias_index_button/3040 ID PNT_884/885 Increment 1 Range 0-1.0)
[891] = "%1d",  -- Gunsight Day-Night Switch (Device GUNSIGHT/22 Command/Button GunsightDayNight/3029 ID PNT_891/891 Increment 1 Range 0-1)
[892] = "%.2f",  -- Gunsight Elevation Control (Device GUNSIGHT/22 Command/Button GunsightKnob/3028 ID PNT_892/892 Increment 1.0 Range 0-1)
[895] = "%.1f",  -- Gunsight Light Control (Device GUNSIGHT/22 Command/Button GunsightBrightness/3030 ID PNT_895/895 Increment 0 Range 0-1)
[900] = "%.1f",  -- AN/ARN-52 TACAN Mode Switch (Device NAV/23 Command/Button tacan_mode/3069 ID PNT_900/900 Increment -0.1 Range 0-0.3)
[901] = "%.2f",  -- TACAN Channel 10s (Device NAV/23 Command/Button tacan_ch_major/3070 ID PNT_901/901 Increment -0.05 Range 0-0.6)
[902] = "%.1f",  -- TACAN Channel 1s (Device NAV/23 Command/Button tacan_ch_minor/3071 ID PNT_902/902 Increment -0.1 Range 0-0.9)
[903] = "%.1f",  -- TACAN Volume (Device NAV/23 Command/Button tacan_volume/3072 ID PNT_903/903 Increment 0.0 Range -1-1)
[1240] = "%1d",  -- Emergency Landing Gear Release Handle (Device GEAR/15 Command/Button emer_gear_release/3036 ID PNT_1240/1240 Increment 1 Range 0-1)
[1241] = "%1d",  -- Emergency Stores Release Handle (Device WEAPON_SYSTEM/6 Command/Button emer_bomb_release/3027 ID PNT_1241/1241 Increment 1 Range 0-1)
[1242] = "%1d",  -- Manual Flight Control Handle (Device HYDRAULIC_SYSTEM/7 Command/Button man_flt_control_override/3136 ID PNT_1242/1242 Increment 1 Range 0-1)
[1243] = "%1d",  -- Emergency Generator Release Handle (Device ELECTRIC_SYSTEM/3 Command/Button emer_gen_deploy/3023 ID PNT_1243/1243 Increment 1 Range 0-1)
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
	ExportScript.ReadAllCustom(mainPanelDevice)
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
	ExportScript.ReadAllCustom(mainPanelDevice)
end

-----------------------------
--     Custom functions    --
-----------------------------

function round(num, numDecimalPlaces) --http://lua-users.org/wiki/SimpleRound
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

function convert_tens(num)
	return math.floor(num*10)
end

function ExportScript.ReadBoolExportIn2K(mainPanelDevice, ID)
	ExportScript.Tools.SendData(2000 + ID, round(mainPanelDevice:get_argument_value(ID),0))
end

function ExportScript.ConcatArgumentsInTens(mainPanelDevice, arrayOfIDS)
	ret = ""
	for _,aID in ipairs(arrayOfIDS) do
		ret = ret .. convert_tens( mainPanelDevice:get_argument_value(aID) )
	end
	return ret
end

function ExportScript.ReadHeadingSelect(mainPanelDevice)
ExportScript.Tools.SendData(2162, round((mainPanelDevice:get_argument_value(167)*1000) + (mainPanelDevice:get_argument_value(168)*100) + (mainPanelDevice:get_argument_value(169)*10), 0) )
end

function ExportScript.convertTACANVal(v)
	return round(v / .05, 0)
end

function ExportScript.convertUHFVal(v)
	return  ExportScript.convertTACANVal(v) * 10
end

function ExportScript.ReadTacan(mainPanelDevice)
	local tens = ExportScript.convertTACANVal(round(mainPanelDevice:get_argument_value(901),2))
	local ones = round( mainPanelDevice:get_argument_value(902)*10,0)
	ExportScript.Tools.SendData(2901, tens..ones )
end

function ExportScript.ReadUHFPreset(mainPanelDevice)
	ExportScript.Tools.SendData(2361,  ExportScript.convertTACANVal(mainPanelDevice:get_argument_value(361))+1)
end

function ExportScript.ReadUHF(mainPanelDevice)
	local part1a = (220 + ExportScript.convertUHFVal(mainPanelDevice:get_argument_value(367)) )
	local part1b = (mainPanelDevice:get_argument_value(368)*10)
	ExportScript.Tools.SendData(2367, round(part1a+part1b,0) .. "." .. round(mainPanelDevice:get_argument_value(369)*100,0) )
end

function ExportScript.ReadRippleInterval(mainPanelDevice)
	local convertedBaseVal = 20 + (round(mainPanelDevice:get_argument_value(742),2)*200)
	ExportScript.Tools.SendData(2742, convertedBaseVal)
	local multraw = mainPanelDevice:get_argument_value(743)
	local multiplier = 1
	if multraw > 0 then multiplier = 10 end
	ExportScript.Tools.SendData(2743, (convertedBaseVal * multiplier) .. "ms" )
end

function ExportScript.ReadFuelGauge(mainPanelDevice)
	ExportScript.Tools.SendData(2580, round(mainPanelDevice:get_argument_value(580)*6600, 0) )
end

local CurrLatIDS = {178,179,180,181}
local CurrLonIDS = { 184,185,186,187,188 }
local DestLatIDS = {191,192,193,194}
local DestLonIDS = {197,198,199,200,201}
local WindSpeedIDS = {210,211,212}
local WindDirIDS = {214,215,216}
local MagVarIDS = {206,207}

function ExportScript.ReadNavComputer(mainPanelDevice)
	local latDirection = "N"
	local lonDirection = "W"
	if(mainPanelDevice:get_argument_value(182) > 0) then latDirection = "S" end
	if(mainPanelDevice:get_argument_value(189) > 0) then lonDirection = "E" end
	ExportScript.Tools.SendData(2178, ExportScript.ConcatArgumentsInTens(mainPanelDevice, CurrLatIDS) .. latDirection)
	ExportScript.Tools.SendData(2184, ExportScript.ConcatArgumentsInTens(mainPanelDevice, CurrLonIDS) .. lonDirection)
	
	latDirection = "N"
	lonDirection = "W"
	if(mainPanelDevice:get_argument_value(195) > 0) then latDirection = "S" end
	if(mainPanelDevice:get_argument_value(189) > 0) then lonDirection = "E" end	
	ExportScript.Tools.SendData(2191, ExportScript.ConcatArgumentsInTens(mainPanelDevice, DestLatIDS) .. latDirection)
	ExportScript.Tools.SendData(2197,ExportScript.ConcatArgumentsInTens(mainPanelDevice, DestLonIDS) .. lonDirection)
	
	ExportScript.Tools.SendData(2210, ExportScript.ConcatArgumentsInTens(mainPanelDevice, WindSpeedIDS))
	ExportScript.Tools.SendData(2214, ExportScript.ConcatArgumentsInTens(mainPanelDevice, WindDirIDS))
	
	lonDirection = "W"
	if(mainPanelDevice:get_argument_value(208) > 0) then lonDirection = "E" end
	ExportScript.Tools.SendData(2206, ExportScript.ConcatArgumentsInTens(mainPanelDevice, MagVarIDS) .. lonDirection)
end

local DME_IDS = {785,784}

function ExportScript.ReadDME(mainPanelDevice)
	if(mainPanelDevice:get_argument_value(786) > 0) then
		ExportScript.Tools.SendData(2785, ExportScript.ConcatArgumentsInTens(mainPanelDevice, DME_IDS) .. round(mainPanelDevice:get_argument_value(783),1))
	else
		ExportScript.Tools.SendData(2785, "OFF")
	end
end

local LADDER_INIDCATOR_IDS = {860,868}
local HUD_INIDCATOR_IDS = {154,159}
function ExportScript.ReadCautionIndicators(mainPanelDevice)
	for i=LADDER_INIDCATOR_IDS[1],LADDER_INIDCATOR_IDS[2] do
		ExportScript.ReadBoolExportIn2K(mainPanelDevice,i)
	end
	for i=HUD_INIDCATOR_IDS[1],HUD_INIDCATOR_IDS[2] do
		ExportScript.ReadBoolExportIn2K(mainPanelDevice,i)
	end
	ExportScript.ReadBoolExportIn2K(mainPanelDevice,147)
end

function ExportScript.ReadAllCustom(mainPanelDevice)
	ExportScript.ReadHeadingSelect(mainPanelDevice)
	ExportScript.ReadTacan(mainPanelDevice)
	ExportScript.ReadUHFPreset(mainPanelDevice)
	ExportScript.ReadUHF(mainPanelDevice)
	ExportScript.ReadRippleInterval(mainPanelDevice)
	ExportScript.ReadFuelGauge(mainPanelDevice)
	ExportScript.ReadNavComputer(mainPanelDevice)
	ExportScript.ReadDME(mainPanelDevice)
	ExportScript.ReadCautionIndicators(mainPanelDevice)
end

