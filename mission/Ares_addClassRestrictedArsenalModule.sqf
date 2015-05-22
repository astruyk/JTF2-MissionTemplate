if (isClass (configFile >> "CfgPatches" >> "Ares")) then
{
	diag_log "Adding class-based arsenal ticket module to Ares";
	[
		"Mission Template",
		"Add class-based Arsenal",
		{
			_ammoBox = _this select 1;
			if (isNull _ammoBox) then
			{
				_ammoBox = "B_supplyCrate_F" createVehicle (_this select 0);
			};
			
			[[_ammoBox], "JTF2_fnc_AddClassRestrictedArsenal", true, true] call BIS_fnc_MP;
			["Arsenal Created"] call Ares_fnc_ShowZeusMessage;
		}
	] call Ares_fnc_RegisterCustomModule;
}
else
{
	diag_log "Ares not loaded. Skipping adding class-based arsenal module.";
};
