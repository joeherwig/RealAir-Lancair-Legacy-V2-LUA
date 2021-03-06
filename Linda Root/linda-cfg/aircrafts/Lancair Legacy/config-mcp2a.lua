-- config-mcp2a.lua @ 2005120005 (LINDA 3.2.2.944) --

-- ############################################### --
-- ## EFIS block mode1
-- ############################################### --

-- AEFIS block buttons and switches
EFIS1 = {
["ENABLED"] = true  ,
["IDENT"]   = "Std"  ,
["InHg."]   = Efis_INHG  ,
["hPa ."]   = Efis_HPA  ,
["FD  ."]   = Efis_FD_button  ,
["ILS ."]   = Efis_ILS_button  ,
["CSTR."]   = Efis_CSTR_button  ,
["WPT ."]   = Efis_WPT_button  ,
["VORD."]   = Efis_VORD_button  ,
["NDB ."]   = Efis_NDB_button  ,
["ARPT."]   = Efis_ARPT_button  ,
["ADF1:"]   = empty  ,
["ADF1."]   = empty  ,
["VOR1:"]   = empty  ,
["VOR1."]   = empty  ,
["ADF2:"]   = empty  ,
["ADF2."]   = empty  ,
["VOR2:"]   = empty  ,
["VOR2."]   = empty  ,
}

-- AEFIS BARO knob
BARO1 = {
["A SHOW"]  = Altimeter_BARO_show  ,
["A  +"]    = Altimeter_BARO_plus  ,
["A ++"]    = Altimeter_BARO_plusfast  ,
["A  -"]    = Altimeter_BARO_minus  ,
["A --"]    = Altimeter_BARO_minusfast  ,
["PRESS"]   = Altimeter_BARO_MODE_toggle  ,
["B SHOW"]  = empty  ,
["B  +"]    = empty  ,
["B ++"]    = empty  ,
["B  -"]    = empty  ,
["B --"]    = empty  ,
}

-- AEFIS NDM knob
NDM1 = {
["A SHOW"]  = empty  ,
["A  +"]    = empty  ,
["A ++"]    = empty  ,
["A  -"]    = empty  ,
["A --"]    = empty  ,
["PRESS"]   = empty  ,
["B SHOW"]  = empty  ,
["B  +"]    = empty  ,
["B ++"]    = empty  ,
["B  -"]    = empty  ,
["B --"]    = empty  ,
}

-- AEFIS NDR knob
NDR1 = {
["A SHOW"]  = empty  ,
["A  +"]    = empty  ,
["A ++"]    = empty  ,
["A  -"]    = empty  ,
["A --"]    = empty  ,
["PRESS"]   = empty  ,
["B SHOW"]  = empty  ,
["B  +"]    = empty  ,
["B ++"]    = empty  ,
["B  -"]    = empty  ,
["B --"]    = empty  ,
}

-- ############################################### --
-- ## EFIS block mode2
-- ############################################### --

-- AEFIS block buttons and switches
EFIS2 = {
["ENABLED"] = true  ,
["IDENT"]   = "empty"  ,
["InHg."]   = empty  ,
["hPa ."]   = empty  ,
["FD  ."]   = empty  ,
["ILS ."]   = empty  ,
["CSTR."]   = empty  ,
["WPT ."]   = empty  ,
["VORD."]   = empty  ,
["NDB ."]   = empty  ,
["ARPT."]   = empty  ,
["ADF1:"]   = empty  ,
["ADF1."]   = empty  ,
["VOR1:"]   = empty  ,
["VOR1."]   = empty  ,
["ADF2:"]   = empty  ,
["ADF2."]   = empty  ,
["VOR2:"]   = empty  ,
["VOR2."]   = empty  ,
}

-- AEFIS BARO knob
BARO2 = {
["A SHOW"]  = empty  ,
["A  +"]    = empty  ,
["A ++"]    = empty  ,
["A  -"]    = empty  ,
["A --"]    = empty  ,
["PRESS"]   = empty  ,
["B SHOW"]  = empty  ,
["B  +"]    = empty  ,
["B ++"]    = empty  ,
["B  -"]    = empty  ,
["B --"]    = empty  ,
}

-- AEFIS NDM knob
NDM2 = {
["A SHOW"]  = empty  ,
["A  +"]    = empty  ,
["A ++"]    = empty  ,
["A  -"]    = empty  ,
["A --"]    = empty  ,
["PRESS"]   = empty  ,
["B SHOW"]  = empty  ,
["B  +"]    = empty  ,
["B ++"]    = empty  ,
["B  -"]    = empty  ,
["B --"]    = empty  ,
}

-- AEFIS NDR knob
NDR2 = {
["A SHOW"]  = empty  ,
["A  +"]    = empty  ,
["A ++"]    = empty  ,
["A  -"]    = empty  ,
["A --"]    = empty  ,
["PRESS"]   = empty  ,
["B SHOW"]  = empty  ,
["B  +"]    = empty  ,
["B ++"]    = empty  ,
["B  -"]    = empty  ,
["B --"]    = empty  ,
}

-- ############################################### --
-- ## EFIS block mode3
-- ############################################### --

-- AEFIS block buttons and switches
EFIS3 = {
["ENABLED"] = false  ,
["IDENT"]   = "empty"  ,
["InHg."]   = empty  ,
["hPa ."]   = empty  ,
["FD  ."]   = empty  ,
["ILS ."]   = empty  ,
["CSTR."]   = empty  ,
["WPT ."]   = empty  ,
["VORD."]   = empty  ,
["NDB ."]   = empty  ,
["ARPT."]   = empty  ,
["ADF1:"]   = empty  ,
["ADF1."]   = empty  ,
["VOR1:"]   = empty  ,
["VOR1."]   = empty  ,
["ADF2:"]   = empty  ,
["ADF2."]   = empty  ,
["VOR2:"]   = empty  ,
["VOR2."]   = empty  ,
}

-- AEFIS BARO knob
BARO3 = {
["A SHOW"]  = empty  ,
["A  +"]    = empty  ,
["A ++"]    = empty  ,
["A  -"]    = empty  ,
["A --"]    = empty  ,
["PRESS"]   = empty  ,
["B SHOW"]  = empty  ,
["B  +"]    = empty  ,
["B ++"]    = empty  ,
["B  -"]    = empty  ,
["B --"]    = empty  ,
}

-- AEFIS NDM knob
NDM3 = {
["A SHOW"]  = empty  ,
["A  +"]    = empty  ,
["A ++"]    = empty  ,
["A  -"]    = empty  ,
["A --"]    = empty  ,
["PRESS"]   = empty  ,
["B SHOW"]  = empty  ,
["B  +"]    = empty  ,
["B ++"]    = empty  ,
["B  -"]    = empty  ,
["B --"]    = empty  ,
}

-- AEFIS NDR knob
NDR3 = {
["A SHOW"]  = empty  ,
["A  +"]    = empty  ,
["A ++"]    = empty  ,
["A  -"]    = empty  ,
["A --"]    = empty  ,
["PRESS"]   = empty  ,
["B SHOW"]  = empty  ,
["B  +"]    = empty  ,
["B ++"]    = empty  ,
["B  -"]    = empty  ,
["B --"]    = empty  ,
}

-- ############################################### --
-- ## FCU block mode1
-- ############################################### --

-- AFCU block buttons and switches
MCP1 = {
["ENABLED"] 	= true  ,
["IDENT"]   	= "MCP1"  ,
["MACH."]   	= Autopilot_MACH_button  ,
["LOC ."]   	= Autopilot_LOC_button  ,
["TRK ."]   	= Autopilot_TRK_button  ,
["AP1 ."]   	= Autopilot_AP1_button  ,
["AP2 ."]   	= Autopilot_AP2_button  ,
["ATHR."]   	= Autopilot_ATHR_button  ,
["EXPD."]   	= Autopilot_EXPD_button  ,
["MTR ."]   	= Autopilot_MTR_button  ,
["APPR."]   	= Autopilot_APPR_button  ,
}

-- AFCU SPD knob
SPD1 = {
["A SHOW"]  	= SPD_show  ,
["A  +"]    	= SPD_plus  ,
["A ++"]    	= SPD_plusfast  ,
["A  -"]    	= SPD_minus  ,
["A --"]    	= SPD_minusfast  ,
["PRESS"]   	= SPD_press  ,
["PULL"]    	= SPD_pull  ,
}

-- AFCU HDG knob
HDG1 = {
["A SHOW"]  	= HDG_show  ,
["A  +"]    	= HDG_plus  ,
["A ++"]    	= HDG_plusfast  ,
["A  -"]    	= HDG_minus  ,
["A --"]    	= HDG_minusfast  ,
["PRESS"]   	= HDG_press  ,
["PULL"]    	= HDG_pull  ,
}

-- AFCU ALT knob
ALT1 = {
["A SHOW"]  	= ALT_show  ,
["A  +"]    	= ALT_plus  ,
["A ++"]    	= ALT_plusfast  ,
["A  -"]    	= ALT_minus  ,
["A --"]    	= ALT_minusfast  ,
["PRESS"]   	= ALT_press  ,
["PULL"]    	= ALT_pull  ,
}

-- AFCU VVS knob
VVS1 = {
["A SHOW"]  	= VVS_show  ,
["A  +"]    	= VVS_plus  ,
["A ++"]    	= VVS_plusfast  ,
["A  -"]    	= VVS_minus  ,
["A --"]    	= VVS_minusfast  ,
["PRESS"]   	= VVS_press  ,
["PULL"]    	= VVS_pull  ,
}


-- ############################################### --
-- ## FCU block mode2
-- ############################################### --

-- AFCU block buttons and switches
MCP2 = {
["ENABLED"] 	= true  ,
["IDENT"]   	= "MCP2"  ,
["MACH."]   	= Autopilot_MACH_button  ,
["LOC ."]   	= Autopilot_LOC_button  ,
["TRK ."]   	= Autopilot_TRK_button  ,
["AP1 ."]   	= Autopilot_AP1_button  ,
["AP2 ."]   	= Autopilot_AP2_button  ,
["ATHR."]   	= Autopilot_ATHR_button  ,
["EXPD."]   	= Autopilot_EXPD_button  ,
["MTR ."]   	= Autopilot_MTR_button  ,
["APPR."]   	= Autopilot_APPR_button  ,
}

-- AFCU SPD knob
SPD2 = {
["A SHOW"]  	= SPD_show  ,
["A  +"]    	= SPD_plus  ,
["A ++"]    	= SPD_plusfast  ,
["A  -"]    	= SPD_minus  ,
["A --"]    	= SPD_minusfast  ,
["PRESS"]   	= SPD_press  ,
["PULL"]    	= SPD_pull  ,
}

-- AFCU HDG knob
HDG2 = {
["A SHOW"]  	= HDG_show  ,
["A  +"]    	= HDG_plus  ,
["A ++"]    	= HDG_plusfast  ,
["A  -"]    	= HDG_minus  ,
["A --"]    	= HDG_minusfast  ,
["PRESS"]   	= HDG_press  ,
["PULL"]    	= HDG_pull  ,
}

-- AFCU ALT knob
ALT2 = {
["A SHOW"]  	= ALT_show  ,
["A  +"]    	= ALT_plus  ,
["A ++"]    	= ALT_plusfast  ,
["A  -"]    	= ALT_minus  ,
["A --"]    	= ALT_minusfast  ,
["PRESS"]   	= ALT_press  ,
["PULL"]    	= ALT_pull  ,
}

-- AFCU VVS knob
VVS2 = {
["A SHOW"]  	= VVS_show  ,
["A  +"]    	= VVS_plus  ,
["A ++"]    	= VVS_plusfast  ,
["A  -"]    	= VVS_minus  ,
["A --"]    	= VVS_minusfast  ,
["PRESS"]   	= VVS_press  ,
["PULL"]    	= VVS_pull  ,
}


-- ############################################### --
-- ## FCU block mode3
-- ############################################### --

-- AFCU block buttons and switches
MCP3 = {
["ENABLED"] 	= false  ,
["IDENT"]   	= "MCP3"  ,
["MACH."]   	= Autopilot_MACH_button  ,
["LOC ."]   	= Autopilot_LOC_button  ,
["TRK ."]   	= Autopilot_TRK_button  ,
["AP1 ."]   	= Autopilot_AP1_button  ,
["AP2 ."]   	= Autopilot_AP2_button  ,
["ATHR."]   	= Autopilot_ATHR_button  ,
["EXPD."]   	= Autopilot_EXPD_button  ,
["MTR ."]   	= Autopilot_MTR_button  ,
["APPR."]   	= Autopilot_APPR_button  ,
}

-- AFCU SPD knob
SPD3 = {
["A SHOW"]  	= SPD_show  ,
["A  +"]    	= SPD_plus  ,
["A ++"]    	= SPD_plusfast  ,
["A  -"]    	= SPD_minus  ,
["A --"]    	= SPD_minusfast  ,
["PRESS"]   	= SPD_press  ,
["PULL"]    	= SPD_pull  ,
}

-- AFCU HDG knob
HDG3 = {
["A SHOW"]  	= HDG_show  ,
["A  +"]    	= HDG_plus  ,
["A ++"]    	= HDG_plusfast  ,
["A  -"]    	= HDG_minus  ,
["A --"]    	= HDG_minusfast  ,
["PRESS"]   	= HDG_press  ,
["PULL"]    	= HDG_pull  ,
}

-- AFCU ALT knob
ALT3 = {
["A SHOW"]  	= ALT_show  ,
["A  +"]    	= ALT_plus  ,
["A ++"]    	= ALT_plusfast  ,
["A  -"]    	= ALT_minus  ,
["A --"]    	= ALT_minusfast  ,
["PRESS"]   	= ALT_press  ,
["PULL"]    	= ALT_pull  ,
}

-- AFCU VVS knob
VVS3 = {
["A SHOW"]  	= VVS_show  ,
["A  +"]    	= VVS_plus  ,
["A ++"]    	= VVS_plusfast  ,
["A  -"]    	= VVS_minus  ,
["A --"]    	= VVS_minusfast  ,
["PRESS"]   	= VVS_press  ,
["PULL"]    	= VVS_pull  ,
}


-- ############################################### --
-- ## USER block mode1
-- ############################################### --

-- AUSER block buttons and switches
USER1 = {
["ENABLED"] = true  ,
["IDENT"]   = "Lght"  ,
["BTN1."]   = Lights_PANEL_toggle  ,
["BTN2."]   = Lights_TAXI_toggle  ,
["BTN3."]   = Lights_NAV_toggle  ,
["BTN4."]   = Lights_STROBE_toggle  ,
["BTN5."]   = Lights_BEACON_toggle  ,
["BTN6."]   = VRI_EFIS_MODE_toggle  ,
["BTN7."]   = VRI_MCP_MODE_toggle  ,
["BTN8."]   = VRI_USER_MODE_toggle  ,
["USR1."]   = empty  ,
["USR2."]   = empty  ,
["USR3."]   = empty  ,
["USR4."]   = empty  ,
["USR5."]   = empty  ,
["USR6."]   = empty  ,
["USR7."]   = empty  ,
["USR8."]   = empty  ,
["LAMP."]   = Lights_PANEL_toggle  ,
}

-- ############################################### --
-- ## USER block mode2
-- ############################################### --

-- AUSER block buttons and switches
USER2 = {
["ENABLED"] = true  ,
["IDENT"]   = "USR2"  ,
["BTN1."]   = empty  ,
["BTN2."]   = empty  ,
["BTN3."]   = empty  ,
["BTN4."]   = empty  ,
["BTN5."]   = empty  ,
["BTN6."]   = VRI_EFIS_MODE_toggle  ,
["BTN7."]   = VRI_MCP_MODE_toggle  ,
["BTN8."]   = VRI_USER_MODE_toggle  ,
["USR1."]   = empty  ,
["USR2."]   = empty  ,
["USR3."]   = empty  ,
["USR4."]   = empty  ,
["USR5."]   = empty  ,
["USR6."]   = empty  ,
["USR7."]   = empty  ,
["USR8."]   = empty  ,
["LAMP."]   = empty  ,
}

-- ############################################### --
-- ## USER block mode3
-- ############################################### --

-- AUSER block buttons and switches
USER3 = {
["ENABLED"] = true  ,
["IDENT"]   = "USR3"  ,
["BTN1."]   = empty  ,
["BTN2."]   = empty  ,
["BTN3."]   = empty  ,
["BTN4."]   = empty  ,
["BTN5."]   = empty  ,
["BTN6."]   = VRI_EFIS_MODE_toggle  ,
["BTN7."]   = VRI_MCP_MODE_toggle  ,
["BTN8."]   = VRI_USER_MODE_toggle  ,
["USR1."]   = empty  ,
["USR2."]   = empty  ,
["USR3."]   = empty  ,
["USR4."]   = empty  ,
["USR5."]   = empty  ,
["USR6."]   = empty  ,
["USR7."]   = empty  ,
["USR8."]   = empty  ,
["LAMP."]   = empty  ,
}

-- ############################################### --
-- ## RADIOS block mode1
-- ############################################### --

-- RADIOS block buttons and switches
RADIOS = {
["COM ."]	= Default_COM_select  ,
["NAV ."]	= Default_NAV_select  ,
["ADF ."]	= Default_ADF_select  ,
["DME ."]	= Default_DME_select  ,
["TRAN."]	= Default_XPND_select  ,
["TFR ."]	= Default_RADIOS_swap  ,
["STBY."]	= Default_RADIOS_mode  ,

["COM1 Select"] = empty  ,
["COM2 Select"] = empty  ,
["COM1 Swap"]   = empty  ,
["COM2 Swap"]   = empty  ,
["COMs Mode"]   = Radios_COM_AUDIO_toggle  ,

["NAV1 Select"] = empty  ,
["NAV2 Select"] = empty  ,
["NAV1 Swap"]   = empty  ,
["NAV2 Swap"]   = empty  ,
["NAVs Mode"]   = Radios_NAV_AUDIO_toggle  ,

["ADF1 Select"] = empty  ,
["ADF2 Select"] = empty  ,
["ADFs Mode"]   = Radios_ADF_AUDIO_toggle  ,

["DME1 Select"] = empty  ,
["DME2 Select"] = empty  ,
["DMEs Mode"]   = Radios_DME_AUDIO_toggle  ,

["XPND Select"] = empty  ,
["XPND Swap"]   = empty  ,
["XPND Mode"]   = Transponder_MODE_toggle  ,
}

DME1 = {
["A  +"]   	= empty  ,
["A ++"]   	= empty  ,
["A  -"]   	= empty  ,
["A --"]   	= empty  ,
["PRESS"]  	= empty  ,
}

FRE1 = {
["A  +"]   	= Default_RADIOS_plus  ,
["A ++"]   	= Default_RADIOS_plusfast  ,
["A  -"]   	= Default_RADIOS_minus  ,
["A --"]   	= Default_RADIOS_minusfast  ,
["PRESS"]  	= Default_RADIOS_press  ,
}

