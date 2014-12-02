/*
ADV_zeus script by Belbo
Makes most units placed in the editor and playable units editable by Zeus.
Call from init.sqf via:
if (isServer) then {[CURATORMODULENAME,true] execVM "ADV_zeus.sqf";};
*/

_curators = _this select 0;
_addCivilians = _this select 1;

_objectsToAdd = [];
{
	if (not (_x getVariable ["ADV_Zeus_Ignore", false])) then
	{
		_objectsToAdd pushBack _x;
	};
} forEach vehicles + (allMissionObjects "Man") + (allMissionObjects "Air")  + (allMissionObjects "Ammo");
{
	_x addCuratorEditableObjects [_objectsToAdd, true];
} forEach _curators;


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

	{
		// Add the newly detected objects to the curators
		_x addCuratorEditableObjects [_objectsToAdd, true];
	} forEach _curators;
	sleep 30;
};

if (true) exitWith {};