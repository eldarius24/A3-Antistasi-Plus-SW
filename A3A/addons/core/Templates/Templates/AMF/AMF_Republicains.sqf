private _hasLawsOfWar = "orange" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "Résistants"] call _fnc_saveToTemplate;

["flag", "Flag_AMF_F"] call _fnc_saveToTemplate;
["flagTexture", "\a3\Data_F_Enoch\Flags\flag_EAF_CO.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_France"] call _fnc_saveToTemplate;


["vehicleBasic", "I_C_Offroad_02_LMG_F"] call _fnc_saveToTemplate;
["vehicleLightUnarmed", "B_AMF_VAB_ULTIMA_X8_TDF_F"] call _fnc_saveToTemplate;
["vehicleLightArmed", "B_AMF_VAB_ULTIMA_TOP_X8_TDF_F"] call _fnc_saveToTemplate;
["vehicleTruck", "AMF_GBC180_PERS_03"] call _fnc_saveToTemplate;
["vehicleAT", "I_C_Offroad_02_AT_F"] call _fnc_saveToTemplate;
["vehicleAA", "rhsgref_nat_ural_Zu23"] call _fnc_saveToTemplate;

["vehicleBoat", "UK3CB_CHD_I_Fishing_Boat"] call _fnc_saveToTemplate;
["vehicleRepair", "UK3CB_NAP_I_Ural_Repair"] call _fnc_saveToTemplate;

["vehiclePlane", "B_AMF_PLANE_FIGHTER_02_F"] call _fnc_saveToTemplate;
["vehiclePayloadPlane", "UK3CB_NAP_I_C400"] call _fnc_saveToTemplate;

["vehicleCivCar", "UK3CB_CHC_C_LR_Closed"] call _fnc_saveToTemplate;
["vehicleCivTruck", ""] call _fnc_saveToTemplate;
["vehicleCivHeli", ""] call _fnc_saveToTemplate;
["vehicleCivBoat", "UK3CB_CHC_C_Fishing_Boat"] call _fnc_saveToTemplate;
["vehicleCivBoxSupply", "UK3CB_ADC_C_S1203"] call _fnc_saveToTemplate;

["staticMG", "I_G_HMG_02_high_F"] call _fnc_saveToTemplate;
["staticAT", "AMF_WiredGuided_mmp_F"] call _fnc_saveToTemplate;
["staticAA", "rhsgref_nat_ZU23"] call _fnc_saveToTemplate;
["staticMortar", "I_G_Mortar_01_F"] call _fnc_saveToTemplate;
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["minesAT", [
	"ATMine_Range_Mag",
	"rhs_mine_tm62m_mag",
	"rhs_mine_M19_mag",
	"rhs_mag_mine_ptm1",
	"SLAMDirectionalMine_Wire_Mag",
	"rhssaf_mine_tma4_mag",
	"rhs_mine_TM43_mag"
]] call _fnc_saveToTemplate;
["minesAPERS", [
	"rhs_mine_M7A2_mag",
	"APERSMine_Range_Mag",
	"rhs_mine_pmn2_mag",
	"APERSBoundingMine_Range_Mag",
	"rhs_mag_mine_pfm1",
	"rhsusf_mine_m14_mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"APERSTripMine_Wire_Mag",
	"rhssaf_tm100_mag",
	"rhssaf_tm200_mag",
	"rhssaf_tm500_mag",
	"rhssaf_mine_pma3_mag",
	"rhssaf_mine_mrud_a_mag",
	"rhssaf_mine_mrud_b_mag",
	"rhssaf_mine_mrud_c_mag",
	"rhssaf_mine_mrud_d_mag",
	"rhs_mine_smine35_press_mag",
	"rhs_mine_smine44_press_mag",
	"rhs_mine_stockmine43_2m_mag",
	"rhs_mine_stockmine43_4m_mag",
	"rhs_mine_M3_tripwire_mag",
	"rhs_mine_Mk2_tripwire_mag",
	"rhs_mine_mk2_pressure_mag",
	"rhs_mine_m3_pressure_mag",
	"rhs_mine_glasmine43_hz_mag",
	"rhs_mine_glasmine43_bz_mag",
	"rhs_mine_m2a3b_press_mag",
	"rhs_mine_m2a3b_trip_mag",
	"rhs_mine_a200_bz_mag",
	"rhs_mine_a200_dz35_mag",
	"rhs_mine_m2a3b_press_mag",
	"rhs_mine_m2a3b_trip_mag",
	"rhs_mine_smine35_trip_mag",
	"rhs_mine_smine44_trip_mag"
]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["rhs_ec75_mag", 2], ["rhs_ec75_sand_mag", 2], ["rhs_ec200_mag", 1], ["rhs_ec200_sand_mag", 1], ["rhsusf_m112_mag", 1], ["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["rhs_ec75_mag", 4], ["rhs_ec75_sand_mag", 4], ["rhs_ec200_mag", 2], ["rhs_ec200_sand_mag", 2], ["rhs_ec400_mag", 1], ["rhs_ec400_sand_mag", 1],["DemoCharge_Remote_Mag", 2], ["rhsusf_m112_mag", 2], ["rhsusf_m112x4_mag", 1], ["rhs_charge_M2tet_x2_mag", 1], ["SatchelCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["blackMarketStock", [
    ["UK3CB_LDF_I_RBS70", 2500, "STATICAA", {tierWar > 3}],
    ["UK3CB_CW_US_B_LATE_TOW_TriPod", 3000, "STATICAT", {tierWar > 3}],
    ["RHS_MK19_TriPod_USMC_WD", 3000, "STATICMG", {tierWar > 3}],

    ["UK3CB_ARD_I_Hilux_Mortar", 15000, "ARTILLERY", {tierWar > 5}],
    ["UK3CB_ARD_I_Hilux_Rocket", 25000, "ARTILLERY", {tierWar > 7}],
    ["UK3CB_ARD_I_Hilux_Rocket_Arty", 30000, "ARTILLERY", {tierWar > 8}],

    ["UK3CB_ARD_I_Hilux_Zu23", 1750, "CAR", {tierWar > 2}],
    ["UK3CB_ARD_I_Hilux_GMG", 2500, "CAR", {tierWar > 2}],
    ["UK3CB_ARD_I_Hilux_Metis", 3500, "CAR", {tierWar > 2}],
    
    ["UK3CB_KRG_I_M113tank_unarmed", 1750, "APC", {true}],
    ["UK3CB_KRG_I_M113tank_M2_90", 2500, "APC", {true}],
    ["UK3CB_KRG_I_M113tank_MK19_90", 4500, "CAR", {true}],

    ["UK3CB_I_G_BMP1", 9000, "APC", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["UK3CB_I_G_BMP2K", 12500, "APC", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],

    ["UK3CB_I_G_T34", 10000, "TANK", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count seaports > 0}],
    ["UK3CB_I_G_T55", 13000, "TANK", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}],
    ["UK3CB_MDF_I_M60A3", 17500, "TANK", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],

    ["UK3CB_I_G_ZsuTank", 7500, "AA", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}],

    ["RHSGREF_A29B_HIDF", 17500, "PLANE", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}],
    ["UK3CB_MDF_I_Mystere_CAS1", 22500, "PLANE", {tierWar > 5 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],

    ["UK3CB_ADA_I_UH1H_M240", 13500, "HELI", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}],
    ["UK3CB_ADA_I_UH1H_GUNSHIP", 20000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}]
]] call _fnc_saveToTemplate;

["variants", [
    ["RHSGREF_A29B_HIDF", ["Brazil",1]],
    ["RHSGREF_A29B_HIDF", ["MIG",1]]
]] call _fnc_saveToTemplate;

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "AMF_Samas_F1_01_F",
    "AMF_Samas_VALO_01_F",
    "AMF_mag58_01_F",
    "AMF_Pamas","15Rnd_9x21_Mag",
    "AMF_RFF2_01_F","optic_AMS",
    "hgun_PDW2000_F",
    "AMF_AT4CS_F",["AMF_84mm_AT4CS",1],
    "75Rnd_mag58_mag","75Rnd_mag58_mag_Tracer_green","75Rnd_mag58_mag_Tracer_red",
    "10Rnd_762x51_Mag","25Rnd_samas_f1_mag", "25Rnd_samas_f1_mag_Tracer_green", "25Rnd_samas_f1_mag_Tracer_red", "25Rnd_samas_f1_mag_Tracer_yellow","15Rnd_9x21_Mag",
    "30Rnd_9x21_Mag", "30Rnd_9x21_Red_Mag","UK3CB_FAMAS_25rnd_556x45_RT","AMF_RFG_APAV40","AMF_RFG_AC58",
    "6Rnd_45ACP_Cylinder","MiniGrenade","SmokeShell",
    ["IEDUrbanSmall_Remote_Mag", 10], ["IEDLandSmall_Remote_Mag", 10], ["IEDUrbanBig_Remote_Mag", 3], ["IEDLandBig_Remote_Mag", 3],
    "B_FieldPack_oli","B_FieldPack_blk","B_FieldPack_khk",
    "amf_S3_01_DA","amf_S3_01_CE","V_BandollierB_rgr","V_BandollierB_khk","V_BandollierB_oli","V_Rangemaster_belt",
    "Binocular",
    "acc_flashlight","acc_flashlight_smg_01","acc_flashlight_pistol",
    "rhs_1PN138"
];

private _civilianBackpacks =  ["backpack_1", "backpack_2"];
if (_hasLawsOfWar) then {
    _civilianBackpacks append [
        "B_Messenger_Black_F", 
        "B_Messenger_Coyote_F", 
        "B_Messenger_Gray_F",
        "B_Messenger_Olive_F", 
        "B_LegStrapBag_black_F", 
        "B_LegStrapBag_coyote_F", 
        "B_LegStrapBag_olive_F"
    ];
};

["civilianBackpacks", _civilianBackpacks createHashMapFromArray []] call _fnc_saveToTemplate;

_initialRebelEquipment append _civilianBackpacks;

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","tf_anprc155_coyote"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["TFAR_anprc155","TFAR_anprc155_coyote"]};
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = [
 "amf_uniform_01_RE_SE_MD", 
 "amf_uniform_01_SE_MD", 
 "amf_uniform_03_NG_SE_HS", 
 "amf_uniform_02_NG_SE_HX"
];

["uniforms", _rebUniforms] call _fnc_saveToTemplate;

["headgear", [
 "AMF_TCNVG_DA",
 "AMF_TCNVG"
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["faces", [
    "GreekHead_A3_02",
    "GreekHead_A3_03",
    "GreekHead_A3_04",
    "GreekHead_A3_05",
    "GreekHead_A3_06",
    "GreekHead_A3_07",
    "GreekHead_A3_08",
    "GreekHead_A3_09",
    "GreekHead_A3_11",
    "GreekHead_A3_12",
    "GreekHead_A3_13",
    "GreekHead_A3_14",
    "Ioannou",
    "Mavros"
]] call _fnc_saveToTemplate;
["voices", ["Male02FRE", "Male01FRE", "Male03FRE"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniforms];

_loadoutData set ["glasses", ["G_Shades_Black", "G_Shades_Blue", "G_Shades_Green", "G_Shades_Red", "G_Aviator", "G_Spectacles", "G_Spectacles_Tinted", "G_Sport_BlackWhite", "G_Sport_Blackyellow", "G_Sport_Greenblack", "G_Sport_Checkered", "G_Sport_Red", "G_Squares", "G_Squares_Tinted"]];
_loadoutData set ["goggles", ["G_Lowprofile"]];
_loadoutData set ["facemask", ["rhssaf_veil_Green", "G_Bandanna_blk", "G_Bandanna_oli", "G_Bandanna_khk", "G_Bandanna_tan", "G_Bandanna_beast", "G_Bandanna_shades", "G_Bandanna_sport", "G_Bandanna_aviator"]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 1.25, "glasses", 1, "goggles", 0.75, "facemask", 1]] call _fnc_setFacewear;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 1.25, "glasses", 1, "goggles", 0.75, "facemask", 1]] call _fnc_setFacewear;
    
    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};

private _prefix = "militia";
private _unitTypes = [
    ["Petros", _squadLeaderTemplate],
    ["SquadLeader", _squadLeaderTemplate],
    ["Rifleman", _riflemanTemplate],
    ["staticCrew", _riflemanTemplate],
    ["Medic", _riflemanTemplate, [["medic", true]]],
    ["Engineer", _riflemanTemplate, [["engineer", true]]],
    ["ExplosivesExpert", _riflemanTemplate, [["explosiveSpecialist", true]]],
    ["Grenadier", _riflemanTemplate],
    ["LAT", _riflemanTemplate],
    ["AT", _riflemanTemplate],
    ["AA", _riflemanTemplate],
    ["MachineGunner", _riflemanTemplate],
    ["Marksman", _riflemanTemplate],
    ["Sniper", _riflemanTemplate],
    ["Unarmed", _riflemanTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
