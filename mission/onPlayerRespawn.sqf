_newUnit = _this select 0;
_oldUnit = _this select 1;
_respawn = _this select 2;
_respawnDelay = _this select 3;

[] spawn
	{
		// Wait until the player variable is valid. This isn't always the case right away.
		waitUntil { sleep 0.1; !isNull player; };

		// Handle player-specific tickets
		_defaultTickets = ("jtf2_param_respawn_tickets" call BIS_fnc_getParamValue);
		if (_defaultTickets >= 0) then
		{
			_ticketsRemaining = missionNamespace getVariable ["JTF2_Mission_Respawns_Remaining_" + (getPlayerUID player), _defaultTickets];
			_isOutOfRespawnTickets = _ticketsRemaining < 0;
			if (_isOutOfRespawnTickets) then
			{
				hint format ["Out of respawn tickets! %1", _ticketsRemaining];
				_spectatorCamActionId = player addAction ["Specatator Camera", {[player] execVM "spectator\specta.sqf"}];

				// Start the script to keep the player from using weapons, radios, or vehicles (keep them at base).
				[_spectatorCamActionId] spawn
					{
						_spectatorCamActionId = _this select 0;
						_defaultTickets = ("jtf2_param_respawn_tickets" call BIS_fnc_getParamValue);
						player setCaptive true;
						[player, "spectator"] call JTF2_fnc_AssignGear;
						_allowedItems = ["ItemMap", "ItemCompass", "ItemWatch"];

						waitUntil
						{
							removeAllWeapons player;
							removeBackpack player;
							removeVest player;
							{
								if (not (_x in _allowedItems)) then
								{
									player unassignItem _x;
									player removeItem _x;
								};
							} forEach assignedItems player;
							
							if (vehicle player != player) then
							{
								player action ["getOut", vehicle player];
							};

							sleep 5;
							
							// Once this condition is true we will exit the loop.
							missionNamespace getVariable ["JTF2_Mission_Respawns_Remaining_" + (getPlayerUID player), _defaultTickets] >= 0;
						};
						
						// Restore the player to active duty.
						player setCaptive false;
						player removeAction _spectatorCamActionId;

						[player] call JTF2_fnc_AssignGear;
					};
			}
			else
			{
				hint format ["Respawn Tickets Remaining: %1", _ticketsRemaining];
				[player] call JTF2_fnc_AssignGear;
			};

			sleep 5;
			hint "";
		}
		else
		{
			[player] call JTF2_fnc_AssignGear;
		};
	};
