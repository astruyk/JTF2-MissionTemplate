// from http://www.armaholic.com/page.php?id=27039
_veh = _this select 0;
_soldier = _this select 1;
_req_headgear = ["H_PilotHelmetHeli_B", "H_PilotHelmetHeli_O", "H_PilotHelmetHeli_I"];
_headgear = headgear _soldier;

if ((player == _soldier) && (_headgear in _req_headgear)) then
{
	//player globalchat "condition passed";
	enabledLaserGuide = addMissionEventHandler [
		"Draw3D",
		{
			if (not isNull player) then
			{
				_laze = nearestObjects [player, ["LaserTarget"], 1500];
				{
					_laserIsInSector = [position player, getdir player, 90, position _x] call BIS_fnc_inAngleSector;
					_laserNotVisible = lineIntersects [eyePos player, position _x, player, (vehicle player)];
					if ( (_laserIsInSector) && (!_laserNotVisible) ) then
					{
						// Position needs to be calculated using this formula because of comment at https://community.bistudio.com/wiki/drawIcon3D
						_pos = visiblePositionASL _x;
						_pos set [2, (_x modelToWorld [0,0,0]) select 2];
						drawIcon3D ["\A3\ui_f\data\igui\cfg\cursors\known_target_ca.paa", [0.75,0,0,0.9], _pos, 1, 1, 0, ""]
					};
				} forEach _laze;
			};
		}
	];
	_veh addEventHandler [
		"GetOut",
		{
			removeMissionEventHandler ["Draw3D", enabledLaserGuide];
		}
	];
};
true