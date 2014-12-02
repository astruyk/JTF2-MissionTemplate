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
(_curators select 0) addCuratorEditableObjects [_objectsToAdd, true];

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
		if (_forEachIndex == 0) then
		{
			// Add the newly detected objects to the first curator...
			_x addCuratorEditableObjects [_objectsToAdd, true];
		}
		else
		{
			// Add everything that the first curator can edit to the second and third curator.
			_x addCuratorEditableObject [(_curators select 0) curatorEditableObjects, true];
		};
	} forEach _curators;
	sleep 30;
};

if (true) exitWith {};