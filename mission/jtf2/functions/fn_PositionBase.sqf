/*
	Creates a variable that can be checked for a 'base' location for the specified side. By default it will also ensure the
	respawn marker (e.g. 'respawn_civilian') is created at the same location so that units can spawn there.
	
	Parameters:
		0 - Side - The side for the base to position.
		1 - Boolean (Optional) - Whether or not to ensure the respawn marker for the indicated side exists at that location. Default true.
		2 - 2D Position Array (Optional) - The location to choose for the base. Default is to use a random location.
*/
_side = _this select 0;
_ensureSpawnMarkerExist = [_this, 1, true, [true]] call BIS_fnc_param;
_chosenLocation = [_this, 2, [], [[]], [2,3]] call BIS_fnc_param;

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
	
	if (not isNil "zeusRespawn") then
	{
		// If there's a zeus respawn marker on the map, reposition it to the chosen base location.
		zeusRespawn setPos _chosenLocation;
	}
	else
	{
		// Otherwise we'll check for a marker to respawn at instead.
	
		// Create or position a marker at the appropriate place. This is a global operation for the side.
		_markerName = [_side] call JTF2_fnc_GetMarkerNameForSide;
		_markerLocation = getMarkerPos _markerName;
		if (_markerLocation select 0 == 0 && _markerLocation select 1 == 0 && _markerLocation select 2 == 0) then
		{
			// Marker does not exist. Create it.
			_marker = createMarker [_markerName, _chosenLocation];
			_marker setMarkerShape "ICON";
			_marker setMarkerType "Empty";
		}
		else
		{
			_markerName setMarkerPos _chosenLocation;
		};
	};

	// Broadcast that we've updated the location of the base.
	_variableName = "JTF2_BasePosition_" + str(_side);
	missionNamespace setVariable [_variableName, _chosenLocation];
	publicVariable _variableName;
}