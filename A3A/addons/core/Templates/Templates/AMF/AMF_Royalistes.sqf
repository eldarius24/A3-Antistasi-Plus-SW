private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasHelicopters = "heli" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "Francais"] call _fnc_saveToTemplate;
["spawnMarkerName", format [localize "STR_supportcorridor", "Francais"]] call _fnc_saveToTemplate;

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", "\A3\Data_F\Flags\Flag_NATO_CO.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_EU"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

// vehicles can be placed in more than one category if they fit between both. Cost will be derived by the higher category
["vehiclesBasic", ["AMF_VBMR_GENIE_CE"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["AMF_VBMR_L_CE_01"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["AMF_VBMR_L_CE_01"]] call _fnc_saveToTemplate;             // Should be armed, unarmoured to lightly armoured, with 0-4 passengers
["vehiclesTrucks", ["AMF_GBC180_PERS_02"]] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", ["UK3CB_ION_I_Winter_T810_Closed"]] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", ["UK3CB_ION_I_Winter_T810_Reammo"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["UK3CB_ION_I_Winter_T810_Repair"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["UK3CB_ION_I_Winter_T810_Refuel"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["AMF_VBMR_SAN_CE"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", ["AMF_VBMR_L_CE_01"]] call _fnc_saveToTemplate;             // armed, lightly armoured, with 6-8 passengers 
["vehiclesAPCs", ["AMF_VBCI_CE_01_F", "AMF_VBMR_COMMANDEMENT_CE"]] call _fnc_saveToTemplate;                  // armed with enclosed turret, armoured, with 6-8 passengers
["vehiclesAirborne", ["AMF_VBMR_L_CE_01"]] call _fnc_saveToTemplate;              // airborne vehicles, could be with passenger seats or just a crew 
["vehiclesIFVs", ["AMF_EBRC_CE_01", "AMF_VBMR_COMMANDEMENT_CE"]] call _fnc_saveToTemplate;                  // capable of surviving multiple rockets, cannon armed, with 6-8 passengers
["vehiclesTanks", ["B_AMF_TANK_01", "B_AMF_TANK_CE_02_F"]] call _fnc_saveToTemplate;
["vehiclesLightTanks", ["B_AMF_AMX10_RCR_01_F", "B_AMF_AMX10_RCR_SEPAR_01_F"]] call _fnc_saveToTemplate;             // tanks with poor armor and weapons
["vehiclesAA", ["AMF_VBCI_CE_01_F", "AMF_EBRC_CE_01"]] call _fnc_saveToTemplate;                    // ideally heavily armed with anti-ground capability and enclosed turret. Passengers will be ignored

["vehiclesTransportBoats", ["B_Boat_Armed_01_minigun_F"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["B_Boat_Armed_01_minigun_F"]] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["AMF_RAFALE_B_01_F", "MF_RAFALE_C_01_F", "MF_RAFALE_M_01_F"]] call _fnc_saveToTemplate;             // Will be used with CAS script, must be defined in setPlaneLoadout. Needs fixed gun and either rockets or missiles
["vehiclesPlanesAA", ["AMF_RAFALE_B_01_F", "MF_RAFALE_C_01_F", "MF_RAFALE_M_01_F"]] call _fnc_saveToTemplate;              // 
["vehiclesPlanesTransport", ["B_AMF_PLANE_TRANSPORT_01_F"]] call _fnc_saveToTemplate;

["vehiclesHelisLight", ["amf_nh90_tth_transport"]] call _fnc_saveToTemplate;            // ideally fragile & unarmed helis seating 4+
["vehiclesHelisTransport", ["amf_cougar", "B_AMF_Heli_Transport_4RHFS_01_F", "B_AMF_Heli_Transport_01_F"]] call _fnc_saveToTemplate;
// Should be capable of dealing damage to ground targets without additional scripting
["vehiclesHelisLightAttack", ["AMF_gazelle_minigun_f"]] call _fnc_saveToTemplate;      // Utility helis with fixed or door guns + rocket pods
["vehiclesHelisAttack", ["AMF_TIGRE_01"]] call _fnc_saveToTemplate;           // Proper attack helis: Apache, Hind etc

["vehiclesArtillery", ["B_T_MBT_01_arty_F"]] call _fnc_saveToTemplate;
["magazines", createHashMapFromArray []] call _fnc_saveToTemplate; //element format: [Vehicle class, [Magazines]]

["uavsAttack", ["B_AMF_REAPER_dynamicLoadout_F"]] call _fnc_saveToTemplate;
["uavsPortable", ["B_UAV_01_F"]] call _fnc_saveToTemplate;

//Config special vehicles
["vehiclesMilitiaLightArmed", ["UK3CB_FIA_B_LR_M2", "UK3CB_FIA_B_LR_SPG9"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["AMF_GBC180_PERS_02"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["UK3CB_FIA_B_LR_M2", "UK3CB_FIA_B_LR_SPG9"]] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", ["AMF_VBMR_L_CE_01"]] call _fnc_saveToTemplate;              // Militia APCs will be used at roadblocks and attacks at first 4 war levels

["vehiclesPolice", []] call _fnc_saveToTemplate;

["staticMGs", ["B_G_HMG_02_high_F"]] call _fnc_saveToTemplate;
["staticATs", ["RHS_TOW_TriPod_D"]] call _fnc_saveToTemplate;
["staticAAs", ["RHS_Stinger_AA_pod_D"]] call _fnc_saveToTemplate;
["staticMortars", ["B_G_Mortar_01_F"]] call _fnc_saveToTemplate;
["staticHowitzers", ["RHS_M119_D"]] call _fnc_saveToTemplate;

["vehicleRadar", ""] call _fnc_saveToTemplate;
["vehicleSam", ""] call _fnc_saveToTemplate;

["howitzerMagazineHE", ""] call _fnc_saveToTemplate;

["mortarMagazineHE", ""] call _fnc_saveToTemplate;
["mortarMagazineSmoke", ""] call _fnc_saveToTemplate;

//Minefield definition
//CFGVehicles variant of Mines are needed "ATMine", "APERSTripMine", "APERSMine"
["minefieldAT", []] call _fnc_saveToTemplate;
["minefieldAPERS", []] call _fnc_saveToTemplate;

//SLAT cages, camo nets, logs, doors etc
["animations", [
    ["vehClass", ["animsourcefromgarage1", 0.3, "animsourcefromgarage2", 0.25, "animsourcefromgarage3", 0.3, "animsourcefromgarage4", 0.3]],
    ["", []]
]] call _fnc_saveToTemplate;

//vehicle skins
["variants", [
    ["UK3CB_LDF_B_T810_Closed", ["CZ_WDL",1]],
    ["UK3CB_LDF_B_T810_Reammo", ["CZ_WDL",1]],
    ["UK3CB_LDF_B_T810_Repair", ["CZ_WDL",1]],
    ["UK3CB_LDF_B_T810_Refuel", ["CZ_WDL",1]]
]] call _fnc_saveToTemplate;
/////////////////////
///  Identities   ///
/////////////////////

["voices", ["Male01ENGFRE","Male02ENGFRE"]] call _fnc_saveToTemplate;
["faces", ["AfricanHead_01","AfricanHead_02","AfricanHead_03","Barklem",
"GreekHead_A3_05","GreekHead_A3_07","Sturrock","WhiteHead_01","WhiteHead_02",
"WhiteHead_03","WhiteHead_04","WhiteHead_05","WhiteHead_06","WhiteHead_07",
"WhiteHead_08","WhiteHead_09","WhiteHead_11","WhiteHead_12","WhiteHead_14",
"WhiteHead_15","WhiteHead_16","WhiteHead_18","WhiteHead_19","WhiteHead_20",
"WhiteHead_21","WhiteHead_23", "WhiteHead_24", "WhiteHead_25",
"WhiteHead_26", "WhiteHead_27", "WhiteHead_28", "WhiteHead_29", "WhiteHead_30", "WhiteHead_31", "WhiteHead_32"
]] call _fnc_saveToTemplate;
["sfVoices", ["Male01ENGFRE","Male02ENGFRE"]] call _fnc_saveToTemplate;

["insignia", ["AMF_FRANCE_HV", "AMF_FRANCE_BV"]] call _fnc_saveToTemplate;
["sfInsignia", ["AMF_AIGLE"]] call _fnc_saveToTemplate;
["eliteInsignia", ["AMF_FRANCE_LEGION_JAUNE_HV"]] call _fnc_saveToTemplate;
["milInsignia", ["AMF_GCM"]] call _fnc_saveToTemplate;
//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", [["AMF_614_long_01_F","AMF_Samas_VALO_01_F"]]];
_loadoutData set ["rifles", [["AMF_614_long_01_F","AMF_Samas_VALO_01_F"]]];
_loadoutData set ["carbines", [["AMF_614_long_01_F","AMF_Samas_VALO_01_F"]]];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["designatedGrenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", ["amf_mini_mg_tactical_mk3"]];
_loadoutData set ["marksmanRifles", ["AMF_SCAR_L_01_F_TAN"]];
_loadoutData set ["sniperRifles", ["AMF_SCAR_L_01_F_TAN"]];
_loadoutData set ["lightATLaunchers", ["AMF_AT4CS_Loaded"]];
_loadoutData set ["ATLaunchers", ["launch_NLAW_F"]];
_loadoutData set ["missileATLaunchers", [
["launch_I_Titan_short_F", "", "acc_pointer_IR", "", ["Titan_AT"], [], ""]
]];
_loadoutData set ["AALaunchers", [
["launch_B_Titan_olive_F", "", "acc_pointer_IR", "", ["Titan_AA"], [], ""]
]];
_loadoutData set ["sidearms", ["hgun_P07_khk_F", "hgun_P07_blk_F"]];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["DemoCharge_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["SatchelCharge_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["HandGrenade", "MiniGrenade"]];
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];


//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["NVGoggles_INDEP"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["Rangefinder"]];

_loadoutData set ["traitorUniforms", ["U_I_L_Uniform_01_tshirt_olive_F"]];
_loadoutData set ["traitorVests", ["V_BandollierB_oli", "V_TacVest_oli"]];
_loadoutData set ["traitorHats", ["H_Cap_grn", "H_Cap_oli"]];

_loadoutData set ["officerUniforms", ["amf_uniform_02_CE_HS"]];
_loadoutData set ["officerVests", ["V_Rangemaster_belt"]];
_loadoutData set ["officerHats", ["AMF_BERET_LEGION_3REI"]];

_loadoutData set ["uniforms", ["UK3CB_MDF_B_U_SF_Uniform_01_CE"]];
_loadoutData set ["vests", ["UK3CB_MDF_B_V_CREW_Vest_TAN"]];
_loadoutData set ["Hvests", ["UK3CB_MDF_B_V_CREW_Vest_TAN"]];
_loadoutData set ["glVests", ["UK3CB_MDF_B_V_CREW_Vest_TAN"]];
_loadoutData set ["backpacks", ["B_Kitbag_cbr"]];
_loadoutData set ["atBackpacks", ["B_Kitbag_cbr"]];
_loadoutData set ["longRangeRadios", ["UK3CB_ION_I_B_RadioBag_BRN"]];
_loadoutData set ["helmets", ["AMF_FELIN_05_CE"]];
_loadoutData set ["slHat", ["AMF_BERET_LEGION_3REI"]];
_loadoutData set ["sniHats", ["H_Booniehat_khk"]];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
    _slItems append ["ACE_microDAGR", "ACE_DAGR"];
    _eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", []];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];

_loadoutData set ["glasses", [
    "G_Aviator",
    "G_Shades_Black",
    "G_Shades_Blue",
    "G_Shades_Green",
    "G_Shades_Red",
    "G_Spectacles",
    "G_Spectacles_Tinted",
    "G_Sport_Red",
    "G_Sport_Blackyellow",
    "G_Sport_BlackWhite",
    "G_Sport_Checkered",
    "G_Sport_Blackred",
    "G_Sport_Greenblack",
    "G_Squares_Tinted",
    "G_Squares",
    "G_Tactical_Clear",
    "G_Tactical_Black"
]];
_loadoutData set ["goggles", ["G_Combat"]];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_sfLoadoutData set ["uniforms", ["amf_uniform_01_RE_NG_BM_HS", "amf_uniform_01_NG_BM_HX", "amf_uniform_01_BM_HX"]];
_sfLoadoutData set ["vests", ["amf_DCS_01_MTP", "amf_DCS_05_MTP"]];
_sfLoadoutData set ["backpacks", ["AMF_rush24_01_MTP"]];
_sfLoadoutData set ["atBackpacks", ["AMF_FELIN_BACKPACK_LIGHT_TAN"]];
_sfLoadoutData set ["helmets", ["AMF_OPSCORE_TAN2"]];
_sfLoadoutData set ["binoculars", ["Laserdesignator"]];

private _slRifles = [
    ["arifle_MX_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_MRCO", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
    ["arifle_MX_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Hamr", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
    ["arifle_MX_khk_F", "muzzle_snds_H_khk_F", "acc_pointer_IR", "optic_MRCO", ["30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag_Tracer"], [], ""],
    ["arifle_MX_khk_F", "muzzle_snds_H_khk_F", "acc_pointer_IR", "optic_Hamr_khk_F", ["30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag_Tracer"], [], ""],
    ["arifle_MX_GL_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_MRCO", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
    ["arifle_MX_GL_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Hamr", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
    ["arifle_MX_GL_khk_F", "muzzle_snds_H_khk_F", "acc_pointer_IR", "optic_MRCO", ["30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag_Tracer"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
    ["arifle_MX_GL_khk_F", "muzzle_snds_H_khk_F", "acc_pointer_IR", "optic_Hamr_khk_F", ["30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag_Tracer"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""]
];
private _rifles = [
    ["arifle_MX_khk_F", "muzzle_snds_H_khk_F", "acc_pointer_IR", "optic_Holosight_khk_F", ["30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag_Tracer"], [], ""],
    ["arifle_MX_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""]
];
private _carbines = [
    ["arifle_MXC_khk_F", "muzzle_snds_H_khk_F", "acc_pointer_IR", "optic_Holosight_khk_F", ["30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag_Tracer"], [], ""],
    ["arifle_MXC_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], [], ""]
];
private _grenadeLaunchers = [
    ["arifle_MX_GL_khk_F", "muzzle_snds_H_khk_F", "acc_pointer_IR", "optic_Holosight_khk_F", ["30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag", "30Rnd_65x39_caseless_khaki_mag_Tracer"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
    ["arifle_MX_GL_Black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
];
private _mgs = [
    ["LMG_Mk200_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_MRCO", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
    ["LMG_Mk200_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_NVS", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
    ["LMG_Mk200_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"],
    ["LMG_Mk200_black_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Hamr", ["200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Red", "200Rnd_65x39_cased_Box_Tracer_Red"], [], "bipod_01_F_blk"]
];
if (_hasApex) then {
    _slRifles = [
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_Holosight", ["30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_ERCO_snd_F", ["30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_Tracer_Red"], [], ""],
        ["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_Holosight", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_ERCO_snd_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""]
    ];
    _rifles = [
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_Holosight", ["30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_Tracer_Red"], [], ""],
        ["arifle_SPAR_02_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_ERCO_snd_F", ["30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_Tracer_Red"], [], ""]
    ];
    carbines = [
         ["arifle_SPAR_01_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_01_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_01_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
        ["arifle_SPAR_01_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_Holosight", ["30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_Tracer_Red"], [], ""],
        ["arifle_SPAR_01_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_Tracer_Red"], [], ""],
        ["arifle_SPAR_01_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_ERCO_snd_F", ["30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_red", "30Rnd_556x45_Stanag_Sand_Tracer_Red"], [], ""]
    ];
    _grenadeLaunchers = [
        ["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_Holosight", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_Hamr", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
        ["arifle_SPAR_01_GL_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_ERCO_snd_F", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
    ];
    _mgs append [
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_NVS", ["150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_Tracer_F"], [], "bipod_01_F_blk"],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Holosight_blk_F", ["150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_Tracer_F"], [], "bipod_01_F_blk"],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_Hamr", ["150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_Tracer_F"], [], "bipod_01_F_blk"],
        ["arifle_SPAR_02_blk_F", "muzzle_snds_M", "acc_pointer_IR", "optic_ERCO_blk_F", ["150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_F", "150Rnd_556x45_Drum_Mag_Tracer_F"], [], "bipod_01_F_blk"],
        ["arifle_SPAR_02_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_NVS", ["150Rnd_556x45_Drum_Sand_Mag_F", "150Rnd_556x45_Drum_Sand_Mag_F", "150Rnd_556x45_Drum_Sand_Mag_Tracer_F"], [], "bipod_01_F_snd"],
        ["arifle_SPAR_02_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_Holosight", ["150Rnd_556x45_Drum_Sand_Mag_F", "150Rnd_556x45_Drum_Sand_Mag_F", "150Rnd_556x45_Drum_Sand_Mag_Tracer_F"], [], "bipod_01_F_snd"],
        ["arifle_SPAR_02_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_Hamr", ["150Rnd_556x45_Drum_Sand_Mag_F", "150Rnd_556x45_Drum_Sand_Mag_F", "150Rnd_556x45_Drum_Sand_Mag_Tracer_F"], [], "bipod_01_F_snd"],
        ["arifle_SPAR_02_snd_F", "muzzle_snds_m_snd_F", "acc_pointer_IR", "optic_ERCO_snd_F", ["150Rnd_556x45_Drum_Sand_Mag_F", "150Rnd_556x45_Drum_Sand_Mag_F", "150Rnd_556x45_Drum_Sand_Mag_Tracer_F"], [], "bipod_01_F_snd"]
    ];
} else {
    _mgs append [
        ["uk3cb_weap_m249_pip_L_sup", "rhsusf_acc_nt4_black", "", "", ["rhsusf_100Rnd_556x45_soft_pouch"], [], ""],
        ["rhs_weap_fnmag", "", "", "", ["rhsusf_100Rnd_762x51"], [], ""]
    ];
};

_sfLoadoutData set ["slRifles", _slRifles];
_sfLoadoutData set ["rifles", _rifles];
_sfLoadoutData set ["carbines", _carbines];
_sfLoadoutData set ["grenadeLaunchers", _grenadeLaunchers];
_sfLoadoutData set ["machineGuns", _mgs];

if (_hasWs) then {
    _sfLoadoutData set ["designatedGrenadeLaunchers", [
        ["glaunch_GLX_lxWS", "", "acc_pointer_IR", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Pellet_Grenade_shell_lxWS", "1Rnd_Smoke_Grenade_shell", "3Rnd_HE_Grenade_shell"], ["1Rnd_Smoke_Grenade_shell"], ""]
    ]];
};

private _marksmanRifles = [
    ["UK3CB_PSG1A1_RIS_SOS_sup", "uk3cb_muzzle_snds_g3", "", "optic_SOS", ["UK3CB_G3_20rnd_762x51"], [], ""],
    ["UK3CB_PSG1A1_RIS_SOS_sup", "uk3cb_muzzle_snds_g3", "", "optic_Hamr", ["UK3CB_G3_20rnd_762x51"], [], ""]
];
if (_hasMarksman) then {
    _marksmanRifles append [
        ["srifle_DMR_02_F", "muzzle_snds_338_black", "acc_pointer_IR", "optic_LRPS", [], [], "bipod_01_F_blk"],
        ["srifle_DMR_02_F", "muzzle_snds_338_black", "acc_pointer_IR", "optic_tws", [], [], "bipod_01_F_blk"]
    ];
};
_sfLoadoutData set ["marksmanRifles", _marksmanRifles];

_sfLoadoutData set ["SMGs", [
["SMG_01_F", "muzzle_snds_acp", "", "optic_Holosight", [], [], ""],
["SMG_02_F", "muzzle_snds_L", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["SMG_02_F", "muzzle_snds_L", "acc_pointer_IR", "optic_Yorris", [], [], ""]
]];

_sfLoadoutData set ["sniperRifles", [
["srifle_LRR_F", "", "", "optic_SOS", [], [], ""],
["srifle_LRR_F", "", "", "optic_LRPS", [], [], ""]
]];
_sfLoadoutData set ["sidearms", [
["hgun_Pistol_heavy_01_green_F", "muzzle_snds_acp", "acc_flashlight_pistol", "optic_MRD_black", [], [], ""],
["hgun_P07_F", "muzzle_snds_L", "", "", [], [], ""],
["hgun_ACPC2_F", "muzzle_snds_acp", "acc_flashlight_pistol", "", [], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["uniforms", ["amf_uniform_01_NG_CE_MD"]];
_eliteLoadoutData set ["helmets", ["AMF_TC801_TAN_EARPROT_BLK"]];

_eliteLoadoutData set ["vests", ["amf_DCS_04_TAN", "amf_DCS_05_TAN", "amf_DCS_02_TAN"]];
_eliteLoadoutData set ["Hvests", ["amf_DCS_04_TAN", "amf_SMB_ART_TAN"]];
_eliteLoadoutData set ["glVests", ["amf_SMB_GRE_TAN"]];
_eliteLoadoutData set ["backpacks", ["G_Tactical_Clear"]];
_eliteLoadoutData set ["helmets", ["AMF_TC801_TAN_EARPROT_BLK"]];
_eliteLoadoutData set ["binoculars", ["rhsusf_ANPVS_15"]];

_eliteLoadoutData set ["rifles", [
["AMF_614_long_FS4_TAN", "muzzle_snds_M", "acc_flashlight", "optic_Holosight_blk_F", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""],
["AMF_614_long_FS4_TAN", "muzzle_snds_M", "acc_flashlight", "optic_MRCO", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""],
["AMF_614_long_FS4_TAN", "muzzle_snds_M", "acc_flashlight", "optic_Hamr", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""],
["AMF_614_long_FS4_TAN", "muzzle_snds_M", "acc_flashlight", "optic_ACO_grn", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""]
]];
_eliteLoadoutData set ["carbines", [
["AMF_614_long_FS4_TAN", "muzzle_snds_M", "acc_flashlight", "optic_Holosight_blk_F", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""],
["AMF_614_long_FS4_TAN", "muzzle_snds_M", "acc_flashlight", "optic_Aco", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""],
["AMF_614_long_FS4_TAN", "muzzle_snds_M", "acc_flashlight", "optic_Aco", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""],
["AMF_614_long_FS4_TAN", "muzzle_snds_M", "acc_flashlight", "optic_ACO_grn", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["rhs_weap_mk18_m320", "", "rhsusf_acc_anpeq15side", "optic_Holosight_blk_F", ["rhs_mag_30Rnd_556x45_M855A1_Stanag"], ["1Rnd_HE_Grenade_shell"], ""],
["rhs_weap_mk18_m320", "", "rhsusf_acc_anpeq15side", "optic_MRCO", ["rhs_mag_30Rnd_556x45_M855A1_Stanag"], ["1Rnd_HE_Grenade_shell"], ""],
["rhs_weap_mk18_m320", "", "rhsusf_acc_anpeq15side", "optic_Hamr", ["rhs_mag_30Rnd_556x45_M855A1_Stanag"], ["1Rnd_HE_Grenade_shell"], ""],
["rhs_weap_mk18_m320", "", "rhsusf_acc_anpeq15side", "optic_ACO_grn", ["rhs_mag_30Rnd_556x45_M855A1_Stanag"], ["1Rnd_HE_Grenade_shell"], ""]
]];
_eliteLoadoutData set ["SMGs", [
["SMG_01_F", "", "", "optic_Aco_smg", [], [], ""],
["SMG_02_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], ""],
["SMG_02_F", "", "acc_pointer_IR", "optic_Aco_smg", [], [], ""]
]];

private _mgs = [
    ["uk3cb_weap_m249_pip_L_sup", "rhsusf_acc_nt4_black", "", "", ["rhsusf_100Rnd_556x45_soft_pouch"], [], ""],
    ["rhs_weap_fnmag", "", "", "", ["rhsusf_100Rnd_762x51"], [], ""]
];

private _marksmanRifles = [
    ["UK3CB_PSG1A1_RIS_SOS_sup", "uk3cb_muzzle_snds_g3", "", "optic_SOS", ["UK3CB_G3_20rnd_762x51"], [], ""],
    ["UK3CB_PSG1A1_RIS_SOS_sup", "uk3cb_muzzle_snds_g3", "", "optic_Hamr", ["UK3CB_G3_20rnd_762x51"], [], ""]
];

if (_hasMarksman) then {
    _mgs append [
        ["MMG_02_black_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", [], [], "bipod_01_F_blk"],
        ["MMG_02_black_F", "", "acc_pointer_IR", "optic_tws_mg", [], [], "bipod_01_F_blk"]
    ];
    _marksmanRifles append [
        ["srifle_DMR_02_F", "", "acc_pointer_IR", "optic_NVS", [], [], "bipod_01_F_blk"],
        ["srifle_DMR_02_F", "", "acc_pointer_IR", "optic_LRPS", [], [], "bipod_01_F_blk"],
        ["srifle_DMR_03_F", "", "acc_pointer_IR", "optic_SOS", [], [], "bipod_01_F_blk"],
        ["srifle_DMR_03_F", "", "acc_pointer_IR", "optic_Hamr", [], [], "bipod_01_F_blk"],
        ["srifle_DMR_03_khaki_F", "", "acc_pointer_IR", "optic_SOS", [], [], "bipod_01_F_blk"],
        ["srifle_DMR_03_khaki_F", "", "acc_pointer_IR", "optic_Hamr", [], [], "bipod_01_F_blk"]
    ];
} else {
    _marksmanRifles append [
        ["srifle_EBR_F", "", "acc_pointer_IR", "optic_NVS", [], [], "bipod_01_F_blk"],
        ["srifle_EBR_F", "", "acc_pointer_IR", "optic_SOS", [], [], "bipod_01_F_blk"],
        ["srifle_EBR_F", "", "acc_pointer_IR", "optic_Hamr", [], [], "bipod_01_F_blk"]
    ];
};
_eliteLoadoutData set ["machineGuns", _mgs];
_eliteLoadoutData set ["marksmanRifles", _marksmanRifles];

_eliteLoadoutData set ["sniperRifles", [
["srifle_LRR_F", "", "", "optic_SOS", [], [], ""],
["srifle_LRR_F", "", "", "optic_LRPS", [], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
["hgun_Pistol_heavy_01_green_F", "", "acc_flashlight_pistol", "optic_MRD_black", [], [], ""]
]];



/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["uniforms", ["amf_uniform_01_NG_CE_MD", "amf_uniform_01_RE_NG_CE_HX"]];
_militaryLoadoutData set ["vests", ["amf_SMB_FUS_TAN", "amf_SMB_ART_TAN", "amf_SMB_AUXSAN_TAN", "amf_SMB_FUS_FAMAS_TAN"]];
_militaryLoadoutData set ["Hvests", ["amf_SMB_LEADER_TAN", "amf_SMB_TP_HK417_TAN", "amf_SMB_ART_TAN"]];
_militaryLoadoutData set ["glVests", ["rhsusf_mbav_grenadier"]];
_militaryLoadoutData set ["backpacks", ["AMF_FELIN_BACKPACK_LIGHT_TAN"]];
_militaryLoadoutData set ["atBackpacks", ["B_Kitbag_cbr"]];
_militaryLoadoutData set ["helmets", ["AMF_FELIN_04_TAN", "AMF_FELIN_06_CE", "AMF_F3_04"]];

_militaryLoadoutData set ["slRifles", [
["AMF_614_short_01_F", "", "acc_flashlight", "optic_Holosight_blk_F", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""],
["AMF_614_short_01_F", "", "acc_flashlight", "optic_MRCO", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""],
["AMF_614_short_01_F", "", "acc_flashlight", "optic_Hamr", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""],
["AMF_614_short_01_F", "", "acc_flashlight", "optic_ACO_grn", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""],
["AMF_614_long_HK269_01_F", "", "acc_flashlight", "optic_Holosight_blk_F", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["AMF_614_long_HK269_01_FF", "", "acc_flashlight", "optic_MRCO", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["AMF_614_long_HK269_01_F", "", "acc_flashlight", "optic_Hamr", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["AMF_614_long_HK269_01_F", "", "acc_flashlight", "optic_ACO_grn", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["rifles", [
["AMF_614_short_01_F", "", "acc_flashlight", "optic_Holosight_blk_F", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""],
["AMF_614_short_01_F", "", "acc_flashlight", "optic_MRCO", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""],
["AMF_614_short_01_F", "", "acc_flashlight", "optic_Hamr", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""],
["AMF_614_short_01_F", "", "acc_flashlight", "optic_ACO_grn", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
["AMF_614_short_01_F", "", "acc_flashlight", "optic_Holosight_blk_F", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""],
["AMF_614_short_01_F", "", "acc_flashlight", "optic_ACO_grn", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""],
["AMF_614_short_01_F", "", "acc_flashlight", "optic_Aco", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""],
["AMF_614_short_01_F", "", "acc_flashlight", "optic_ACO_grn", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["AMF_614_long_HK269_01_F", "", "acc_flashlight", "optic_Holosight_blk_F", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["AMF_614_long_HK269_01_F", "", "acc_flashlight", "optic_MRCO", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["AMF_614_long_HK269_01_F", "", "acc_flashlight", "optic_Hamr", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["AMF_614_long_HK269_01_F", "", "acc_flashlight", "optic_ACO_grn", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["SMGs", [
["SMG_01_F", "", "", "optic_Holosight_blk_F", [], [], ""],
["SMG_01_F", "", "", "optic_Aco_smg", [], [], ""],
["SMG_02_F", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["SMG_02_F", "", "acc_flashlight", "optic_Aco_smg", [], [], ""]
]];
_militaryLoadoutData set ["machineGuns", [
["amf_mini_mg_tactical_mk3", "", "", "optic_NVS", ["150Rnd_MINI_MG_mag", "150Rnd_MINI_MG_mag", "150Rnd_MINI_MG_mag_Tracer_green"], [], "bipod_01_F_blk"],
["amf_mini_mg_tactical_mk3", "", "acc_flashlight", "optic_ACO_grn", ["150Rnd_MINI_MG_mag", "150Rnd_MINI_MG_mag", "150Rnd_MINI_MG_mag_Tracer_green"], [], "bipod_01_F_blk"],
["amf_mini_mg_tactical_mk3", "", "acc_flashlight", "optic_Holosight_blk_F", ["150Rnd_MINI_MG_mag", "150Rnd_MINI_MG_mag", "150Rnd_MINI_MG_mag_Tracer_green"], [], "bipod_01_F_blk"],
["amf_mini_mg_tactical_mk3", "", "acc_flashlight", "optic_Aco", ["150Rnd_MINI_MG_mag", "150Rnd_MINI_MG_mag", "150Rnd_MINI_MG_mag_Tracer_green"], [], "bipod_01_F_blk"]
]];
_militaryLoadoutData set ["sniperRifles", [
["srifle_LRR_F", "", "", "optic_SOS", [], [], ""],
["srifle_LRR_F", "", "", "optic_LRPS", [], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
["hgun_Pistol_heavy_01_green_F", "", "acc_flashlight_pistol", "", [], [], ""],
["hgun_P07_blk_F", "", "", "", [], [], ""],
["hgun_P07_khk_F", "", "", "", [], [], ""]
]];

private _marksmanRifles = [
    ["UK3CB_PSG1A1_RIS_SOS_sup", "uk3cb_muzzle_snds_g3", "", "optic_SOS", ["UK3CB_G3_20rnd_762x51"], [], ""],
    ["UK3CB_PSG1A1_RIS_SOS_sup", "uk3cb_muzzle_snds_g3", "", "optic_Hamr", ["UK3CB_G3_20rnd_762x51"], [], ""]
];
_militaryLoadoutData set ["marksmanRifles", _marksmanRifles];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["U_B_GEN_Soldier_F", "U_B_GEN_Commander_F"]];
_policeLoadoutData set ["vests", ["V_TacVest_blk_POLICE"]];
private _helmets = ["H_Cap_police"];
if (_hasLawsOfWar) then {
    _helmets pushBack "H_PASGT_basic_blue_F";
};
_policeLoadoutData set ["helmets", _helmets];
_policeLoadoutData set ["SMGs", [
["SMG_01_F", "", "acc_flashlight_smg_01", "optic_Holosight_blk_F", [], [], ""],
["SMG_01_F", "", "acc_flashlight_smg_01", "optic_Aco_smg", [], [], ""],
["SMG_03C_TR_black", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["SMG_03C_TR_black", "", "acc_flashlight", "optic_Aco_smg", [], [], ""],
["SMG_02_F", "", "acc_flashlight", "optic_Holosight_blk_F", [], [], ""],
["SMG_02_F", "", "acc_flashlight", "optic_Aco_smg", [], [], ""]
]];
_policeLoadoutData set ["sidearms", ["hgun_Rook40_F"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["UK3CB_MDF_B_U_SF_Uniform_01_CE"]];
_militiaLoadoutData set ["vests", ["UK3CB_MDF_B_V_CREW_Vest_TAN", "UK3CB_MDF_B_V_TacVest_LIZ"]];
_militiaLoadoutData set ["backpacks", ["AMF_FELIN_BACKPACK_LIGHT_TAN", "B_TacticalPack_blk", "B_Carryall_cbr"]];
_militiaLoadoutData set ["atBackpacks", ["AMF_FELIN_BACKPACK_LIGHT_TAN", "B_TacticalPack_blk", "B_Carryall_cbr"]];
_militiaLoadoutData set ["helmets", ["AMF_BERET_INFANTERIE", "AMF_SPECTRA_CE", "H_Cap_headphones"]];

_militiaLoadoutData set ["slRifles", [
    ["AMF_Samas_FELIN_01_F", "", "", "AMF_Eotech_552", ["25Rnd_samas_f1_mag"], ["AMF_RFG_APAV40"], ""],
    ["AMF_Samas_FELIN_01_F", "", "", "AMF_Scrome_J4_02", ["25Rnd_samas_f1_mag"], [], ""]
]];
_militiaLoadoutData set ["rifles", [
    ["AMF_Samas_FELIN_01_F", "", "", "AMF_Eotech_552", ["25Rnd_samas_f1_mag"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
    ["AMF_Samas_FELIN_01_F", "", "", "AMF_Eotech_552", ["25Rnd_samas_f1_mag"], ["AMF_RFG_APAV40"], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
    ["AMF_614_long_HK269_01_F", "", "acc_flashlight", "", ["rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_militiaLoadoutData set ["machineGuns", [
    ["amf_aanf1_01_f", "", "", "", ["50Rnd_762x51_band", "200Rnd_762x51_band"], [], ""]
]];
_militiaLoadoutData set ["marksmanRifles", [
    ["AMF_RFF2_01_F", "", "", "AMF_Scrome_J8", ["10Rnd_762x51_Mag"], [], ""],
    ["AMF_RFF2_01_F", "", "", "optic_Hamr", ["10Rnd_762x51_Mag"], [], ""]
]];

_militiaLoadoutData set ["sniperRifles", [
    ["srifle_LRR_F", "", "", "optic_SOS", [], [], ""],
    ["srifle_LRR_F", "", "", "optic_LRPS", [], [], ""]
]];
_militiaLoadoutData set ["sidearms", ["hgun_ACPC2_F", "hgun_P07_blk_F", "hgun_P07_khk_F"]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["amf_uniform_04_TAN"]];
_crewLoadoutData set ["vests", ["UK3CB_MDF_B_V_CREW_Vest_TAN"]];
_crewLoadoutData set ["helmets", ["AMF_ELNO_DH_586"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["amf_pilot_01_f"]];
_pilotLoadoutData set ["vests", ["UK3CB_MDF_B_V_TacVest_LIZ"]];
_pilotLoadoutData set ["helmets", ["AMF_ALPHA900", "AMF_ALPHA900_02"]];




/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 2, "slHat", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

    [["slRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["binoculars"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_medic"] call _fnc_addItemSet;
    ["items_medic_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    if (random 1 < 0.3) then {
        [["designatedGrenadeLaunchers", "grenadeLaunchers"] call _fnc_fallback] call _fnc_setPrimary;
        ["backpacks"] call _fnc_setBackpack;
    } else {
        ["grenadeLaunchers"] call _fnc_setPrimary;
    };

    ["primary", 6] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_grenadier_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 4] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["glVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;


    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_explosivesExpert_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["lightExplosives", 2] call _fnc_addItem;
    if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_engineer_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    ["carbines"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    [selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["machineGuns"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_machineGunner_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
    [selectRandomWeighted ["helmets", 2, "sniHats", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["marksmanRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_marksman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["sniVests","vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["SMGs"] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_police_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_crew_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
    ["traitorHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["traitorVests"] call _fnc_setVest;
    ["traitorUniforms"] call _fnc_setUniform;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _officerTemplate = {
    ["officerHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;
    
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};


////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];


[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
    params ["_name", "_loadoutTemplate"];
    private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
    private _finalName = _prefix + _name;
    [_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate, [], [_prefix]],
	["Standard", _policeTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate, [], ["other"]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Pilot", _crewTemplate, [], ["other"]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _officerTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate, [], ["other"]]], _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
