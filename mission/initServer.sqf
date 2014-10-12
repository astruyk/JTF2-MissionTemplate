// Setup the spawn points in a random spot on the map so we support all maps.
// TODO optimize this - we don't need to compile this multiple times. Should be moved into function library.
//[west] call compile preprocessFileLineNumbers "jtf2\functions\PositionBase.sqf";
//[east] call compile preprocessFileLineNumbers "jtf2\functions\PositionBase.sqf";
//[independent] call compile preprocessFileLineNumbers "jtf2\functions\PositionBase.sqf";
//[independent] call compile preprocessFileLineNumbers "jtf2\functions\PositionBase.sqf";

// Generate a random respawn point for the Zeus players. This will put them someplace on the map.
// TODO find a way to make this moveable by Zeus - and then we can just magically do stuff!
[civilian] call JTF2_fnc_PositionBase;