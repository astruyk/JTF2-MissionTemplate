/*
	Moves the rewspawn point and player spawn position to a random position on the map so that any
	map can be used with the mission.
	
	Parameters:
		0 - Side - The side for the base to position.
		1 - 2D Position Array (Optional) - The location to choose for the base.
		
		Note: Existing players will be moved to the base location when this is called. Be aware!
*/
_side = _this select 0;
_chosenLocation = [];
if (count _this > 1) then
{
	_chosenLocation = _this select 1;
};

if (isServer) then
{
	if (count _chosenLocation == 0) then
	{
		// Get the size of the current map
		_worldsize = getnumber (configfile >> "CfgWorlds" >> worldname >> "mapSize");
		_chosenLocation = [(_worldsize/2),(_worldsize/2)];
		_locations = nearestLocations [
			_chosenLocation,
			[
				"Name",
				"Strategic",
				"StrongpointArea",
				"FlatArea",
				"FlatAreaCity",
				"FlatAreaCitySmall",
				"CityCenter",
				"Airport",
				"NameMarine",
				"NameCityCapital",
				"NameCity",
				"NameVillage",
				"NameLocal",
				"Hill",
				"ViewPoint",
				"RockArea",
				"BorderCrossing",
				"VegetationBroadleaf",
				"VegetationFir",
				"VegetationPalm",
				"VegetationVineyard"
			],
			5000];
		
		// Choose a spot within 5-500m of a randomly chosen element
		if (count _locations > 0) then
		{
			_chosenLocation = locationposition (_locations call BIS_fnc_selectRandom);
			_chosenLocation = _chosenLocation findEmptyPosition [5, 500];
		};

		// If we couldn't find a position around something interesting, use the center of the world.
		if (count _chosenLocation < 1) then
		{
			_chosenLocation=[(_worldsize/2),(_worldsize/2)];
		};
	};

	// TODO just figure out where the base should be, let the players make their own (local) markers.
	_markerName = [_side] call compile preprocessFileLineNumbers "jtf2\functions\GetMarkerNameForSide.sqf";
	diag_log ("BASE: " + _markerName);
	if (((getMarkerPos _markerName) select 0) == 0 && ((getMarkerPos _markerName) select 1) == 0) then
	{
		_marker = createMarker [_markerName, [_chosenLocation select 0, _chosenLocation select 1]];
		_marker setMarkerShape "ICON";
		_marker setMarkerType "Empty";
	}
	else
	{
		_markerName setMarkerPos [_chosenLocation select 0, _chosenLocation select 1];
	};
	
	_variableName = "JTF2_BasePosition_" + _markerName;
	missionNamespace setVariable [_variableName, _chosenLocation];
	publicVariable _variableName;
}