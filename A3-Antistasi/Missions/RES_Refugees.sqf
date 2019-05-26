//Mission: Rescue the refugees
if (!isServer and hasInterface) exitWith{};
private ["_marcador","_dificil","_salir","_contactX","_groupContact","_tsk","_posHQ","_citiesX","_ciudad","_tam","_posicion","_casa","_posCasa","_nameDest","_timeLimit","_dateLimit","_dateLimitNum","_pos","_cuenta"];

_marcador = _this select 0;

_difficultX = if (random 10 < tierWar) then {true} else {false};
_leave = false;
_contactX = objNull;
_groupContact = grpNull;
_tsk = "";
_posicion = getMarkerPos _marcador;

_POWs = [];

_tam = [_marcador] call A3A_fnc_sizeMarker;
//_casas = nearestObjects [_posicion, ["house"], _tam];
_casas = (nearestObjects [_posicion, ["house"], _tam]) select {!((typeOf _x) in UPSMON_Bld_remove)};
_poscasa = [];
_casa = _casas select 0;
while {count _poscasa < 3} do
	{
	_casa = selectRandom _houses;
	_posHouse = _casa buildingPos -1;
	if (count _posHouse < 3) then {_houses = _houses - [_casa]};
	};


_nameDest = [_marcador] call A3A_fnc_localizar;
_timeLimit = if (_dificil) then {30} else {60};
if (hayIFA) then {_timeLimit = _timeLimit * 2};
_dateLimit = [date select 0, date select 1, date select 2, date select 3, (date select 4) + _timeLimit];
_dateLimitNum = dateToNumber _dateLimit;
_lado = if (lados getVariable [_marcador,sideUnknown] == malos) then {malos} else {muyMalos};
_texto = if (_lado == malos) then {format ["A group of smugglers have been arrested in %1 and they are about to be sent to prison. Go there and free them in order to make them join our cause. Do this before %2:%3",_nameDest,numberToDate [2035,_dateLimitNum] select 3,numberToDate [2035,_dateLimitNum] select 4]} else {format ["A group of %3 supportes are hidden in %1 awaiting for evacuation. We have to find them before %2 does it. If not, there will be a certain death for them. Bring them back to HQ",_nameDest,nameInvaders,nameTeamPlayer]};
_posTsk = if (_lado == malos) then {(position _casa) getPos [random 100, random 360]} else {position _casa};

[[buenos,civilian],"RES",[_texto,"Refugees Evac",_nameDest],_posTsk,false,0,true,"run",true] call BIS_fnc_taskCreate;
misiones pushBack ["RES","CREATED"]; publicVariable "misiones";
_grupoPOW = createGroup buenos;
for "_i" from 1 to (((count _poscasa) - 1) min 15) do
	{
	_unit = _grupoPOW createUnit [SDKUnarmed, _poscasa select _i, [], 0, "NONE"];
	_unit allowdamage false;
	_unit disableAI "MOVE";
	_unit disableAI "AUTOTARGET";
	_unit disableAI "TARGET";
	_unit setBehaviour "CARELESS";
	_unit allowFleeing 0;
	_unit setSkill 0;
	_POWs pushBack _unit;
	[_unit,"refugee"] remoteExec ["A3A_fnc_flagaction",[teamPlayer,civilian],_unit];
	if (_lado == Occupants) then {[_unit,true] remoteExec ["setCaptive",0,_unit]; _unit setCaptive true};
	[_unit] call A3A_fnc_reDress;
	sleep 0.5;
	};

sleep 5;

{_x allowDamage true} forEach _POWs;

sleep 30;
_mrk = "";
_group = grpNull;
_veh = objNull;
_grupo1 = grpNull;
if (_lado == muyMalos) then
	{
	_nul = [_casa] spawn
		{
		private ["_casa"];
		_casa = _this select 0;
		if (_difficultX) then {sleep 300} else {sleep 300 + (random 1800)};
		if (["RES"] call BIS_fnc_taskExists) then
			{
			_airportsX = airportsX select {(lados getVariable [_x,sideUnknown] == muyMalos) and ([_x,true] call A3A_fnc_airportCanAttack)};
			if (count _airportsX > 0) then
				{
				_airportX = [_airportsX, position casa] call BIS_fnc_nearestPosition;
				[[getPosASL _casa,_airportX,"",false],"A3A_fnc_patrolCA"] remoteExec ["A3A_fnc_scheduler",2];
				};
			};
		};
	}
else
	{
	_posVeh = [];
	_dirVeh = 0;
	_roads = [];
	_radius = 20;
	while {count _roads == 0} do
		{
		_roads = (getPos _casa) nearRoads _radius;
		_radius = _radius + 10;
		};
	_road = _roads select 0;
	_posroad = getPos _road;
	_roadcon = roadsConnectedto _road; if (count _roadCon == 0) then {diag_log format ["Antistasi Error: Esta carretera no tiene conexión: %1",position _road]};
	if (count _roadCon > 0) then
		{
		_posrel = getPos (_roadcon select 0);
		_dirveh = [_posroad,_posrel] call BIS_fnc_DirTo;
		}
	else
		{
		_dirVeh = getDir _road;
		};
	_posVeh = [_posroad, 3, _dirveh + 90] call BIS_Fnc_relPos;
	_veh = vehPoliceCar createVehicle _posVeh;
	_veh allowDamage false;
	_veh setDir _dirVeh;
	sleep 15;
	_veh allowDamage true;
	_nul = [_veh] call A3A_fnc_AIVEHinit;
	_mrk = createMarkerLocal [format ["%1patrolarea", floor random 100], getPos _casa];
	_mrk setMarkerShapeLocal "RECTANGLE";
	_mrk setMarkerSizeLocal [50,50];
	_mrk setMarkerTypeLocal "hd_warning";
	_mrk setMarkerColorLocal "ColorRed";
	_mrk setMarkerBrushLocal "DiagGrid";
	_mrk setMarkerAlphaLocal 0;
	if ((random 100 < prestigeNATO) or (_difficultX)) then
		{
		_group = [getPos _casa,Occupants, NATOSquad] call A3A_fnc_spawnGroup;
		sleep 1;
		}
	else
		{
		_group = createGroup Occupants;
		_group = [getPos _casa,Occupants,[policeOfficer,policeGrunt,policeGrunt,policeGrunt,policeGrunt,policeGrunt,policeGrunt,policeGrunt]] call A3A_fnc_spawnGroup;
		};
	if (random 10 < 2.5) then
		{
		_perro = _grupo createUnit ["Fin_random_F",_posicion,[],0,"FORM"];
		[_perro] spawn A3A_fnc_guardDog;
		};
	_nul = [leader _group, _mrk, "SAFE","SPAWNED", "NOVEH2","RANDOM", "NOFOLLOW"] execVM "scripts\UPSMON.sqf";
	{[_x,""] call A3A_fnc_NATOinit} forEach units _group;
	_group1 = [_casa buildingExit 0, Occupants, groupsNATOGen] call A3A_fnc_spawnGroup;
	};

_bonus = if (_difficultX) then {2} else {1};

if (_lado == Occupants) then
	{
	waitUntil {sleep 1; ({alive _x} count _POWs == 0) or ({(alive _x) and (_x distance getMarkerPos respawnTeamPlayer < 50)} count _POWs > 0) or (dateToNumber date > _dateLimitNum)};
	if ({(alive _x) and (_x distance getMarkerPos respawnTeamPlayer < 50)} count _POWs > 0) then
		{
		sleep 5;
		["RES",[_texto,"Refugees Evac",_nameDest],_posTsk,"SUCCEEDED","run"] call A3A_fnc_taskUpdate;
		_countX = {(alive _x) and (_x distance getMarkerPos respawnTeamPlayer < 150)} count _POWs;
		_hr = _countX;
		_resourcesFIA = 100 * _countX;
		[_hr,_resourcesFIA*_bonus] remoteExec ["A3A_fnc_resourcesFIA",2];
		[3,0] remoteExec ["A3A_fnc_prestige",2];
		{if (_x distance getMarkerPos respawnTeamPlayer < 500) then {[_cuenta*_bonus,_x] call A3A_fnc_playerScoreAdd}} forEach (allPlayers - (entities "HeadlessClient_F"));
		[round (_cuenta*_bonus/2),theBoss] call A3A_fnc_playerScoreAdd;
		{[_x] join _grupoPOW; [_x] orderGetin false} forEach _POWs;
		}
	else
		{
		["RES",[_texto,"Refugees Evac",_nameDest],_posTsk,"FAILED","run"] call A3A_fnc_taskUpdate;
		[-10*_bonus,theBoss] call A3A_fnc_playerScoreAdd;
		};
	}
else
	{
	waitUntil {sleep 1; ({alive _x} count _POWs == 0) or ({(alive _x) and (_x distance getMarkerPos respawnTeamPlayer < 50)} count _POWs > 0)};
	if ({alive _x} count _POWs == 0) then
		{
		["RES",[_texto,"Refugees Evac",_nameDest],_posTsk,"FAILED","run"] call A3A_fnc_taskUpdate;
		[-10*_bonus,theBoss] call A3A_fnc_playerScoreAdd;
		}
	else
		{
		["RES",[_texto,"Refugees Evac",_nameDest],_posTsk,"SUCCEEDED","run"] call A3A_fnc_taskUpdate;
		_countX = {(alive _x) and (_x distance getMarkerPos respawnTeamPlayer < 150)} count _POWs;
		_hr = _countX;
		_resourcesFIA = 100 * _countX;
		[_hr,_resourcesFIA*_bonus] remoteExec ["A3A_fnc_resourcesFIA",2];
		{if (_x distance getMarkerPos respawnTeamPlayer < 500) then {[_cuenta*_bonus,_x] call A3A_fnc_playerScoreAdd}} forEach (allPlayers - (entities "HeadlessClient_F"));
		[round (_cuenta*_bonus/2),theBoss] call A3A_fnc_playerScoreAdd;
		{[_x] join _grupoPOW; [_x] orderGetin false} forEach _POWs;
		};
	};

sleep 60;
_items = [];
_ammunition = [];
_armas = [];
{
_unit = _x;
if (_unit distance getMarkerPos respawnTeamPlayer < 150) then
	{
	{if (not(([_x] call BIS_fnc_baseWeapon) in unlockedWeapons)) then {_armas pushBack ([_x] call BIS_fnc_baseWeapon)}} forEach weapons _unit;
	{if (not(_x in unlockedMagazines)) then {_ammunition pushBack _x}} forEach magazines _unit;
	_items = _items + (items _unit) + (primaryWeaponItems _unit) + (assignedItems _unit) + (secondaryWeaponItems _unit);
	};
deleteVehicle _unit;
} forEach _POWs;
deleteGroup _grupoPOW;
{caja addWeaponCargoGlobal [_x,1]} forEach _armas;
{caja addMagazineCargoGlobal [_x,1]} forEach _ammunition;
{caja addItemCargoGlobal [_x,1]} forEach _items;

if (_lado == Occupants) then
	{
	deleteMarkerLocal _mrk;
	if (!isNull _veh) then {if (!([distanceSPWN,1,_veh,teamPlayer] call A3A_fnc_distanceUnits)) then {deleteVehicle _veh}};
	{
	waitUntil {sleep 1; !([distanceSPWN,1,_x,teamPlayer] call A3A_fnc_distanceUnits)};
	deleteVehicle _x;
	} forEach units _group;
	deleteGroup _group;
	if (!isNull _group1) then
		{
		{
		waitUntil {sleep 1; !([distanceSPWN,1,_x,teamPlayer] call A3A_fnc_distanceUnits)};
		deleteVehicle _x;
		} forEach units _group1;
		deleteGroup _group1;
		};
	};
//sleep (540 + random 1200);

//_nul = [_tsk,true] call BIS_fnc_deleteTask;
//deleteMarker _mrkFinal;

_nul = [1200,"RES"] spawn A3A_fnc_deleteTask;
