// from http://www.armaholic.com/page.php?id=27039
_veh = _this select 0;

// If this helicopter is a Hellcat, we want to add a laser designator for the co-pilot seat.
if (local _veh && _veh isKindOf "I_Heli_light_03_base_F") then
{
	_veh addWeapon "Laserdesignator_mounted";
	_veh addMagazine "Laserbatteries";
};

// Add an event handler to activate the laser overlay when a player gets in
_veh addEventHandler [
	"GetIn",
	{
		[_this select 0, _this select 2] call JTF2_fnc_enableLaserGuide
	}
];