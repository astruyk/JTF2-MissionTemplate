_killedUnit = _this select 0;
if (not local _killedUnit) exitWith {};

_defaultTickets = ("jtf2_param_respawn_tickets" call BIS_fnc_getParamValue);
if (_defaultTickets >= 0) then
{
	// We respawn to start, which apparently counts as a player kill. Use _defaultTickets +1 since the 0th ticket doesn't count.
	_variableName = "JTF2_Mission_Respawns_Remaining_" + (getPlayerUID player);
	_previousTickets = missionNamespace getVariable [_variableName, _defaultTickets + 1];
	if (_previousTickets >= 0) then
	{
		missionNamespace setVariable [_variableName, _previousTickets - 1];
		diag_log format["Tickets: %1 - variableName: %2", _previousTickets - 1, _variableName];
	};
};
