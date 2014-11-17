/*
	File: fn_onTerrainChange.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Updates the players terraingrid when called.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {};

if (not isNil "tawvd_disableGrassChanges") exitWith {
	player commandChat "This feature has been disabled by the mission maker.";
};

switch (_type) do
{
	case "none":
	{
		if(isNil "tawvd_disablenone") then {
			setTerrainGrid 50;
		} else {
			player commandChat "This feature has been disabled by the mission maker.";
		};
	case "low": {setTerrainGrid 30;};
	case "norm": {setTerrainGrid 12.5;};
	case "high": {setTerrainGrid 3.125;};
};