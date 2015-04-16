_oldUnit = _this select 0;
_killer = _this select 1;
_respawn = _this select 2;
_respawnDelay = _this select 3;

_defaultTickets = ("jtf2_param_respawn_tickets" call BIS_fnc_getParamValue);
if (_defaultTickets > 0) then
{
	_previousTickets = missionNamespace getVariable ["JTF2_Mission_Respawns_Remaining_" + (getPlayerUID player), _defaultTickets];
	missionNamespace setVariable ["JTF2_Mission_Respawns_Remaining_" + (getPlayerUID _oldUnit), _previousTickets - 1];
	diag_log format["Tickets: %1 - UID: %2 - Killer: %3", _previousTickets - 1, getPlayerUID _oldUnit, _killer];
};