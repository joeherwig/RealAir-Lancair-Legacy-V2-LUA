-- Real Air Lancair Legacy --

-- ## Electric  ##

function Master_Batterie_on ()
	ipc.writeSB ("3102",1)
end

function Master_Batterie_off ()
	ipc.writeSB ("3102",0)
end

function Generator_on ()
	ipc.writeSB ("3101",1)
end

function Generator_off ()
	ipc.writeSB ("3101",0)
end

function Avionic_on ()
	ipc.writeSB ("3103",1)
end

function Avionic_off ()
	ipc.writeSB ("3103",0)
end


-- ## Fuel ##

function Fuel_Pump_on ()
	ipc.writeSB ("3104",1)

end
function Fuel_Pump_off ()
	ipc.writeSB ("3104",0)
end

function Fuel_Selector_off ()
	ipc.writeSB ("0AF8",0)
end

function Fuel_Selector_left ()
	ipc.writeSB ("0AF8",2)
end

function Fuel_Selector_both ()
	ipc.writeSB ("0AF8",1)
end

function Fuel_Selector_right ()
	ipc.writeSB ("0AF8",3)
end

-- ## Ignition ##

function magnetoSwitch_off ()
    ipc.writeSB("0892",0)
end
function magnetoSwitch_right ()
    ipc.writeSB("0892",1)
end
function magnetoSwitch_Left ()
    ipc.writeSB("0892",2)
end
function magnetoSwitch_Both ()
    ipc.writeSB("0892",3)
end
function magneto_Switch_Start ()
    ipc.writeSB("0892",4)
end

-- ## Parkin Brake ##

function ParkingBrake_Toggle ()
    ipc.control(65752)
end

-- ## Doors ##
 
function Canopy_open ()
    ipc.control(66389)
end

function Canopy_close ()
    ipc.writeSB("3367",0)
end

-- ## Pitot Head ##

function Pitot_on ()
	ipc.writeSB ("029C",1)
end

function Pitot_off ()
	ipc.writeSB ("029C",0)
end

-- ## Gear ##

function Gear_down ()
    ipc.control(66080)
end
function Gear_up ()
    ipc.control(66079)
end

-- ## Flaps_Spoilers ##

function Flaps_dec ()
    ipc.control(65759)
end

function Flaps_inc ()
    ipc.control(65758)
end

function Spoiler_on ()
    ipc.control(66064)
end

function Spoiler_off ()
    ipc.control(66065)
end

-- ## Oxygen ##
function Oxy_switch_on ()
    ipc.writeLvar("RASOxySwitch",1)
end
function Oxy_switch_off ()
    ipc.writeLvar("RASOxySwitch",0)
end

-- ## Warnings ##
function MasterWarningReset ()
    ipc.writeLvar("MW_Reset",1)
end
function Annun_Test ()
    ipc.writeLvar("DukeT_Annun_Test_1",1)
end
function Annun_Test_off ()
    ipc.writeLvar("DukeT_Annun_Test_1",0)
end


-- ## Avionic ##

function alt_air_on ()
    ipc.writeLvar("L:engineAlternateAir",1)
end
function alt_air_off ()
    ipc.writeLvar("L:engineAlternateAir",0)
end

function Heading_Bug_inc ()
    ipc.control(65879)
end

function Heading_Bug_gec ()
    ipc.control(65880)
end

function Vor1_inc ()
    ipc.control(65663)
end
function Vor1_dec ()
    ipc.control(65662)
end

function Vor2_inc ()
    ipc.control(65665)
end
function Vor2_dec ()
    ipc.control(65664)
end


function Altimeter_BARO_STD_toggle ()
	if baro_mode ~= 10 then
		baro_cur = ipc.readUW(0x330)
    	ipc.control(66846)
		DspShow("Baro", "Std")
		baro_mode = 10
	else
    	ipc.control(65584)
		baro_cur = ipc.readUW(0x330)
		-- ipc.writeUW(0x330, baro_cur)
		baro_cur = round(((baro_cur * 2992) / (1013.2 * 16)) + 0.5)
		DspShow("Baro", tostring(baro_cur))
		baro_mode = 0
	end
end

function Altimeter_BARO_MODE_hPa ()
	baro_mode = 1
	Altimeter_BARO_show ()
    ipc.writeLvar("hPa Button", 1)
end

function Altimeter_BARO_MODE_inHg ()
	baro_mode = 0
	Altimeter_BARO_show ()
    ipc.writeLvar("inHg Button", 0)
end

function Altimeter_BARO_MODE_mmHg ()
	baro_mode = 2
	Altimeter_BARO_show ()
    ipc.writeLvar("mmHg Button", 0)
end

function Altimeter_BARO_MODE_toggle ()
	baro_mode = baro_mode + 1
    if baro_mode > 2 then baro_mode = 0 end
    if baro_mode == 0 then
		Altimeter_BARO_MODE_inHg ()
	elseif baro_mode == 1  then
		Altimeter_BARO_MODE_hPa ()
	else
		Altimeter_BARO_MODE_mmHg ()
	end
end

function Altimeter_BARO_plus ()
	if not baro_std then
		baro = ipc.readUW(0x330)
		baro = baro + 4
		ipc.writeUW(0x330, baro)
	end
	Altimeter_BARO_show ()
end

function Altimeter_BARO_plusfast ()
	if not baro_std then
		baro = ipc.readUW(0x330)
		baro = baro + fast_baro
		ipc.writeUW(0x330, baro)
	end
	Altimeter_BARO_show ()
end

function Altimeter_BARO_minus ()
	if not baro_std then
		baro = ipc.readUW(0x330)
		baro = baro - 4
		ipc.writeUW(0x330, baro)
	end
	Altimeter_BARO_show ()
end

function Altimeter_BARO_minusfast ()
	if not baro_std then
		baro = ipc.readUW(0x330)
		baro = baro - fast_baro
		ipc.writeUW(0x330, baro)
	end
	Altimeter_BARO_show ()
end

function Altimeter_BARO_show ()
	local baro = ipc.readUW(0x330)
	-- hPa mode
	if baro_mode == 0 then
		l1 = "inHg"
		baro = round(((baro * 2992) / (1013.2 * 16)) + 0.5)
	-- mbar mode
	elseif baro_mode == 1 then
		l1 = " hPa"
		baro = baro / 16
	-- mm/m mode
	elseif baro_mode == 2 then
		l1 = "mmHg"
		baro = ((baro * 760) / (1013.2 * 16)) + 0.5
	else
		DspShow("Baro", "Std")
		return
	end
	DspShow(l1, string.format("%4d", baro))
end


-- ## Trimming ##



-- ##  AP ##

function AP_Master_on ()
    ipc.control(65580)
end

function AP_FD_on ()
    ipc.control(66288)
end

function Yaw_on ()
    ipc.control(65793)
end

function HDG_on ()
    ipc.control(65798)
end

function NAV_on ()
    ipc.control(65729)
end

function APP_on ()
    ipc.control(65724)
end

function REV_on ()
    ipc.control(65728)
end

function ALT_on ()
    ipc.control(65726)
end

function alt_arm_on ()
    ipc.control(65808)
end
function alt_arm_off  ()
    ipc.control(65816)
end

function alt_inc ()
    ipc.control(65892)
end
function alt_dec ()
    ipc.control(65893)
end

function vs_inc ()
    ipc.control(65894)
end
function vs_dec ()
    ipc.control(65895)
end









-- ## Radios ##
function DME_Switch_off ()
    ipc.writeLvar("DME_Switch",0)
end
function DME_Switch_N1 ()
     ipc.writeLvar("DME_Switch",1)
end
function DME_Switch_HLD ()
    ipc.writeLvar("DME_Switch",2)
end
function DME_Switch_N2 ()
    ipc.writeLvar("DME_Switch",3)
end
function ADF_Switch_on ()
    ipc.writeLvar("ADF_On_Switch",1)
end
function ADF_Switch_off ()
    ipc.writeLvar("ADF_On_Switch",0)
end
function NAV_COM1_on ()
    ipc.writeLvar("NavCom1_On",0)
end
function NAV_COM1_off ()
    ipc.writeLvar("NavCom1_on",1)
end
function NAV_COM2_on ()
    ipc.writeLvar("NavCom2_On",0)
end
function NAV_COM2_off ()
    ipc.writeLvar("NavCom2_on",1)
end


function COM1_swap ()
    ipc.control(66372)
end
function COM2_swap ()
    ipc.control(66444)
end

function COM1_Fract_inc ()
    ipc.control(65639)
end
function COM1_Fract_dec ()
    ipc.control(65638)
end

function COM1_Whole_inc ()
    ipc.control(65637)
end
function COM1_Whole_dec ()
    ipc.control(65636)
end

function COM2_Fract_inc ()
    ipc.control(66440)
end
function COM2_Fract_dec ()
    ipc.control(65638)
end

function COM2_Whole_inc ()
    ipc.control(66437)
end
function COM2_Whole_dec ()
    ipc.control(66438)
end




function NAV1_swap ()
    ipc.control(66448)
end
function NAV1_ident ()
    ipc.control(65842)
end

function NAV2_swap ()
    ipc.control(66452)
end
function NAV2_ident ()
    ipc.control(65843)
end

function NAV1_Fract_inc ()
    ipc.control(65643)
end
function NAV1_Fract_dec ()
    ipc.control(65642)
end

function NAV1_Whole_inc ()
    ipc.control(65641)
end
function NAV1_Whole_dec ()
    ipc.control(65640)
end

function NAV2_Fract_inc ()
    ipc.control(65647)
end
function NAV2_Fract_dec ()
    ipc.control(65646)
end

function NAV2_Whole_inc ()
    ipc.control(65645)
end
function NAV2_Whole_dec ()
    ipc.control(65644)
end

function ADF_swap ()
    ipc.control(66741)
end



function ADF_Fract_inc ()
    ipc.control(66454)
end
function ADF_Fract_dec ()
    ipc.control(66453)
end

function ADF_Whole_inc ()
    ipc.control(66542)
end
function ADF_Whole_dec ()
    ipc.control(66543)
end

function ADF_ident ()
    ipc.control(65846)
end




-- ## Transponder ##
function XPDR_State_off ()
    ipc.writeLvar("XPDR_State",0)
end
function XPDR_State_sby ()
    ipc.writeLvar("XPDR_State",1)
end
function XPDR_State_tst ()
    ipc.writeLvar("XPDR_State",2)
end
function XPDR_State_gnd ()
    ipc.writeLvar("XPDR_State",3)
end
function XPDR_State_on ()
    ipc.writeLvar("XPDR_State",4)
end
function XPDR_State_alt ()
    ipc.writeLvar("XPDR_State",5)
end

-- ## lights ##

function Strobes_on ()
    ipc.control(66052)
end
function Strobes_off ()
    ipc.control(66053)
end

function Nav_on ()
    ipc.control(66379)
end
function Nav_off ()
    ipc.control(66379)
end

function Landing_on ()
    ipc.control(66059)
end
function Landing_off ()
    ipc.control(66060)
end

function Panel_Light_on ()
    ipc.control(65750)
end
function Panel_Light_off ()
    ipc.control(65750)
end






-- PanelLight inc

function PanelLight_inc ()

	i = ipc.readLvar("L:instDimmerKnob")

	if i < 200 then
	ipc.writeLvar("L:instDimmerKnob", i+4)

	end

	if i == 200 then
	ipc.writeLvar("L:instDimmerKnob", 200)

	end
end

-- PanelLight dec

function PanelLight_dec ()

	i = ipc.readLvar("L:instDimmerKnob")

	if i > 0 then
	ipc.writeLvar("L:instDimmerKnob", i-4)

	end

	if i == 0 then
	ipc.writeLvar("L:instDimmerKnob", 0)

	end
end


-- ## GPS ##

-- ## GTN 750 ##



-- ## System functions ##

function InitVars ()

    -- uncomment to disable display
    -- AutopilotDisplayBlocked ()

end 