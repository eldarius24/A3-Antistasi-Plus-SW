private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "Republicains"] call _fnc_saveToTemplate;

["flag", "Flag_AMF_F"] call _fnc_saveToTemplate;
["flagTexture", ""] call _fnc_saveToTemplate;
["flagMarkerType", "flag_France"] call _fnc_saveToTemplate;


["vehicleBasic", "UK3CB_B_M1030_NATO"] call _fnc_saveToTemplate;
["vehicleLightUnarmed", "B_Quadbike_01_F"] call _fnc_saveToTemplate;
["vehicleLightArmed", ["UK3CB_B_G_Datsun_Pickup_PKM","UK3CB_B_G_Hilux_Dshkm","UK3CB_B_G_LandRover_AGS30"]] call _fnc_saveToTemplate;
["vehicleTruck", ["UK3CB_B_G_Hilux_GMG","UK3CB_B_G_Hilux_Igla_Chair","UK3CB_B_G_Hilux_Mortar"]] call _fnc_saveToTemplate;
["vehicleAT", "rhsgref_nat_uaz_spg9"] call _fnc_saveToTemplate;
["vehicleAA", "rhsgref_nat_ural_Zu23"] call _fnc_saveToTemplate;

["vehicleBoat", "B_G_Boat_Transport_01_F"] call _fnc_saveToTemplate;
["vehicleRepair", ""] call _fnc_saveToTemplate;

["vehiclePlane", ""] call _fnc_saveToTemplate;
["vehiclePayloadPlane", ""] call _fnc_saveToTemplate;
["vehicleHeli", ""] call _fnc_saveToTemplate;



["vehicleCivCar", "I_C_Offroad_02_unarmed_F"] call _fnc_saveToTemplate;
["vehicleCivTruck", "I_C_Van_01_transport_F"] call _fnc_saveToTemplate;
["vehicleCivHeli", ""] call _fnc_saveToTemplate;
["vehicleCivBoat", ["UK3CB_B_G_Fishing_Boat","UK3CB_B_G_Small_Boat_Wood"]] call _fnc_saveToTemplate;
["vehicleCivSupply", ""] call _fnc_saveToTemplate;


["staticMG", "I_G_HMG_02_high_F"] call _fnc_saveToTemplate;
["staticAT", "I_static_AT_F"] call _fnc_saveToTemplate;
private _staticAA = "I_static_AA_F";
["staticMortar", "I_G_Mortar_01_F"] call _fnc_saveToTemplate;
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["minesAT", ["ATMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag"]] call _fnc_saveToTemplate;
["minesAPERS", ["ClaymoreDirectionalMine_Remote_Mag","APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag", "APERSTripMine_Wire_Mag"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["lootCrate", "A3AP_Box_Syndicate_Ammo_F"] call _fnc_saveToTemplate;
["rallyPoint", "B_RadioBag_01_wdl_F"] call _fnc_saveToTemplate;

//vehicle class, price, type, unlock condition
["blackMarketStock", [
    ["classname", 500000, "AA", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}]
]] call _fnc_saveToTemplate;

//animation sources - camo nets, slat cages, decals etc, digit is probability of appearance
["animations", [
    ["vehClass", ["animsource_example_1", 0.25, "animsource_example_2", 0.3]]
]] call _fnc_saveToTemplate;

//vehicle skins
["variants", [
    ["vehClass", ["paint", 1]]
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
    "V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_rgr","V_BandollierB_khk","V_BandollierB_oli","V_Rangemaster_belt",
    "Binocular",
    "acc_flashlight","acc_flashlight_smg_01","acc_flashlight_pistol",
    "rhs_1PN138"
];



["civilianBackpacks", ["backpack_1", "backpack_2"] createHashMapFromArray []] call _fnc_saveToTemplate;

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","tf_anprc155_coyote"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["TFAR_anprc155","TFAR_anprc155_coyote"]};
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = ["amf_uniform_01_RE_SE_MD", "amf_uniform_01_SE_MD"];          //Uniforms given to Normal Rebels

private _dlcUniforms = [];          //Uniforms given if DLCs are enabled, only given to the Arsenal not Rebels


["uniforms", _rebUniforms + _dlcUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["headgear", []] call _fnc_saveToTemplate;          //Headgear used by Rebell Ai until you have Armored Headgear.

/////////////////////
///  Identities   ///
/////////////////////

//Faces and Voices given to Rebell AI
["faces", []] call _fnc_saveToTemplate;
["voices", []] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["gps", ["ItemGPS"]];

_loadoutData set ["uniforms", _rebUniforms];

_loadoutData set ["facewear", []];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

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
