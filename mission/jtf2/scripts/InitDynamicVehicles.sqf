/*
	Runs setup scripts on vehciles that are part of the mission - including vehicles that are spawned dynamically.
*/

while {true} do
{
	{
		if ((_x getVariable ["JTF2_HasBeenInitialized", 0]) == 0) then
		{
			_x setVariable ["JTF2_HasBeenInitialized", 1];
			
			if (_x isKindOf "Helicopter") then
			{
				[_x] call JTF2_fnc_initVehicleForLaserGuide;
			};
		};
	} forEach allMissionObjects "Air";

	sleep 15;
};
