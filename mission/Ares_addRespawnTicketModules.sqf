if (isClass (configFile >> "CfgPatches" >> "Ares")) then
{
	diag_log "Adding respawn ticket module to Ares.";
	[
		"Mission Template",
		"Add Respawn Ticket",
		{
			_unitUnderCursor = _this select 1;
			if (not isNull _unitUnderCursor) then
			{
				if (isPlayer _unitUnderCursor) then
				{
					_defaultTickets = ("jtf2_param_respawn_tickets" call BIS_fnc_getParamValue);
					_ticketsRemaining = missionNamespace getVariable ["JTF2_Mission_Respawns_Remaining_" + (getPlayerUID _unitUnderCursor), _defaultTickets];
					_ticketsRemaining = _ticketsRemaining + 1;
					missionNamespace setVariable ["JTF2_Mission_Respawns_Remaining_" + (getPlayerUID _unitUnderCursor), _ticketsRemaining];
					[format["One ticket for %1 added. New total: %2", name _unitUnderCursor, _ticketsRemaining]] call Ares_fnc_ShowZeusMessage;
				}
				else
				{
					["Must be dropped on a player."] call Ares_fnc_ShowZeusMessage;
				}
			}
			else
			{
				["Must be dropped on a player."] call Ares_fnc_ShowZeusMessage;
			};
		}
	] call Ares_fnc_RegisterCustomModule;
}
else
{
	diag_log "Ares not loaded. Skipping adding respawn ticket modules.";
};
