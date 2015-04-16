_newUnit = _this select 0;
_oldUnit = _this select 1;
_respawn = _this select 2;
_respawnDelay = _this select 3;

[] spawn
	{
		waitUntil { sleep 0.1; !isNull player; };
		[player] call JTF2_fnc_AssignGear;
		
		_defaultTickets = ("jtf2_param_respawn_tickets" call BIS_fnc_getParamValue);
		if (_defaultTickets > 0) then
		{
			_ticketsRemaining = missionNamespace getVariable ["JTF2_Mission_Respawns_Remaining_" + (getPlayerUID player), _defaultTickets];
			if (_ticketsRemaining >= 0) then
			{
				hint format ["Respawn Tickets Remaining: %1", _ticketsRemaining + 1];
			}
			else
			{
				hint "Out of respawn tickets!";
			};
			
			sleep 5;
			hint "";
			
			if (_ticketsRemaining < 0) then
			{
				[player] execVM "spectator\specta.sqf";
			};
		};
	};