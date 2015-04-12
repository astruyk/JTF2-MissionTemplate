_unit = _this select 0;

if (local _unit) then
{
	switch ("jtf2_param_starting_loadouts" call BIS_fnc_getParamValue) do
	{
		case 0: // Role-specific equipment
		{
			// RHS, AGM and CFB_Skins are required for these loadouts. Otherwise
			// we'll just leave things at the default NATO loadouts.
			if (
				isClass (configFile >> "CfgPatches" >> "CFB_Skins")
				&& isClass (configFile >> "CfgPatches" >> "rhs_weapons")
				&& isClass (configFile >> "CfgPatches" >> "AGM_Medical")
				&& isClass (configFile >> "CfgPatches" >> "task_force_radio")) then
			{
				_unitType = _unit getVariable ["JTF2_UnitType", "rifleman"];
				[] execVM "jtf2\scripts\gear\" + _unitType + ".sqf";
			};
		};
		default
		{
			// Strip all the equipment except for some basic items
			removeAllWeapons _unit;
			removeBackpack _unit;
			removeAllItems _unit;
			removeVest _unit;
			removeHeadgear _unit;
			_unit unlinkItem "NVGoggles";
			_unit unlinkItem "NVGoggles_OPFOR";
			_unit unlinkItem "NVGoggles_INDEP";
			_unit unlinkItem "ItemGPS";
			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemRadio";
			_unit linkItem "ItemWatch";
		};
	};

	diag_log "Assigned starting gear.";
};