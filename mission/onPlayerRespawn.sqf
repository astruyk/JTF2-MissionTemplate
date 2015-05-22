_newUnit = _this select 0;
_oldUnit = _this select 1;
_respawn = _this select 2;
_respawnDelay = _this select 3;

[] spawn
	{
		// Wait until the player variable is valid. This isn't always the case right away.
		waitUntil { sleep 0.1; !isNull player; };
		
		// Restore the original unit type. This is so that if a new player joins into this
		// slot they will get the original gear that this slot was assigned.
		_originalUnitType =  player getVariable ["JTF2_UnitType_Original", ""];
		if (_originalUnitType != "") then
		{
			player setVariable ["JTF2_UnitType", _originalUnitType];
		};

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
				player setVariable ["JTF2_UnitType_Original", player getVariable ["JTF2_UnitType", "rifleman"]];
				player setVariable ["JTF2_UnitType", "spectator"];
				
				// Start the script to keep the player from using weapons, radios, or vehicles (keep them at base).
				[_spectatorCamActionId, _originalUnitType] spawn
					{
						_spectatorCamActionId = _this select 0;
						_originalUnitType = _this select 1;
						_defaultTickets = ("jtf2_param_respawn_tickets" call BIS_fnc_getParamValue);
						player setCaptive true;
						waitUntil
						{
							removeAllWeapons player;
							removeBackpack player;
							removeVest player;
							// TODO remove TFR radios.
							// TODO kick player out of vehicles.
							
							sleep 1;
							
							// Once this condition is true we will exit the loop.
							missionNamespace getVariable ["JTF2_Mission_Respawns_Remaining_" + (getPlayerUID player), _defaultTickets] >= 0;
						};
						
						// Restore the player to active duty.
						player setCaptive false;
						player removeAction _spectatorCamActionId;
						player setVariable ["JTF2_UnitType", _originalUnitType];
						player setVariable ["JTF2_UnitType_Original", ""];
						[player] call JTF2_fnc_AssignGear;
					};
			}
			else
			{
				hint format ["Respawn Tickets Remaining: %1", _ticketsRemaining];
			};
			
			[player] call JTF2_fnc_AssignGear;
			sleep 5;
			hint "";
		}
		else
		{
			[player] call JTF2_fnc_AssignGear;
		};
	};
