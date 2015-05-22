_oldUnit = _this select 0;
_killer = _this select 1;
_respawn = _this select 2;
_respawnDelay = _this select 3;

_defaultTickets = ("jtf2_param_respawn_tickets" call BIS_fnc_getParamValue);
if (_defaultTickets >= 0) then
{
	// We respawn to start, which apparently counts as a player kill. Use _defaultTickets +1 since the 0th ticket doesn't count.
	_previousTickets = missionNamespace getVariable ["JTF2_Mission_Respawns_Remaining_" + (getPlayerUID player), _defaultTickets + 1];
	missionNamespace setVariable ["JTF2_Mission_Respawns_Remaining_" + (getPlayerUID player), _previousTickets - 1];
	diag_log format["Tickets: %1 - UID: %2 - Killer: %3", _previousTickets - 1, (getPlayerUID player), _killer];
};
