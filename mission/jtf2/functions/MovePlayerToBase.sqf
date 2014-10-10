_player = _this select 0;

// Wait until the base has been moved (if it hasn't already)
_markerName = [side _player] call compile preprocessFileLineNumbers "jtf2\functions\GetMarkerNameForSide.sqf";
_variableName = "JTF2_BasePosition_" + _markerName;
hint format["Waiting for base for %1 to be positioned....", _markerName];
waitUntil { count (missionNamespace getVariable [_variableName, []]) != 0; };

_basePosition = missionNamespace getVariable _variableName;

// Create a local marker for the base
_marker = createMarkerLocal ["Base", [_basePosition select 0, _basePosition select 1]];
_marker setMarkerShape "ICON";
_marker setMarkerType "hd_start";
_marker setMarkerText "Base";

// Move the player to the base
_player setpos [_basePosition select 0, _basePosition select 1];
hint format["Player from side %1 moved to %2", side _player, _markerName];
sleep 3;
hint "";