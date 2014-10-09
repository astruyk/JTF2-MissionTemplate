/*
ADV_zeus script by Belbo
Makes most units placed in the editor and playable units editable by Zeus.
Call from init.sqf via:
if (isServer) then {[CURATORMODULENAME,true] execVM "ADV_zeus.sqf";};
*/

_curator = _this select 0;
_addCivilians = _this select 1;

//adds objects placed in editor:

_objectsToAdd = [];
{
	if (not (_x getVariable ["ADV_Zeus_Ignore", false])) then
	{
		_objectsToAdd pushBack _x;
	};
} forEach vehicles + (allMissionObjects "Man") + (allMissionObjects "Air")  + (allMissionObjects "Ammo");
_curator addCuratorEditableObjects [_objectsToAdd, true];

//makes all units continuously available to Zeus (for respawning players and AI that's being spawned by a script.)
while {true} do {
	_objectsToAdd = [];
	
	{
		if ((_addCivilians || (side _x != civilian)) && (not (_x getVariable ["ADV_Zeus_Ignore", false]))) then
		{
			_objectsToAdd pushBack _x;
		};
	} forEach allUnits;
	
	{
		if (not (_x getVariable ["ADV_Zeus_Ignore", false])) then
		{
			_objectsToAdd pushBack _x;
		};
	} forEach vehicles;
	
	_curator addCuratorEditableObjects [_objectsToAdd, true];
	sleep 20;
};

if (true) exitWith {};