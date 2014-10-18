// from http://www.armaholic.com/page.php?id=27039
_veh = _this select 0;
_veh addEventHandler [
	"GetIn",
	{
		//player globalChat "trigger enabled";
		[_this select 0, _this select 2] call JTF2_fnc_enableLaserGuide
	}
];