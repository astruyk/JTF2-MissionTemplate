_player = _this select 0;

// Wait until the base has been moved (if it hasn't already)
_variableName = "JTF2_BasePosition_" + str(side _player);
hint format["Waiting for base for '%1' to be positioned....", _variableName];
waitUntil { count (missionNamespace getVariable [_variableName, []]) != 0; };

hint format["Player base from side %1 moved to %2", side _player, _variableName];
_basePosition = missionNamespace getVariable _variableName;

// Create a local marker for the base
_markerName = [side _player] call compile preprocessFileLineNumbers "jtf2\functions\GetMarkerNameForSide.sqf";
_marker = createMarkerLocal [_markerName, [_basePosition select 0, _basePosition select 1]];
_marker setMarkerShapeLocal "ICON";
_marker setMarkerTypeLocal "hd_start";
_marker setMarkerTextLocal "Base";

// Move the player to the base
_player setpos [_basePosition select 0, _basePosition select 1];

sleep 3;
hint "";