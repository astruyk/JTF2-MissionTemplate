_unit = _this select 0;

switch ("jtf2_param_starting_loadouts" call BIS_fnc_getParamValue) do
{
	tf_no_auto_long_range_radio = true; // Don't assign a TFAR radio by default.
	TF_give_microdagr_to_soldier = false; // Don't replace GPS (if any) w/ microdagr
	
	case 0: // Role-specific equipment
	{
		// RHS, AGM and CFB_Skins are required for these loadouts. Otherwise
		// we'll just leave things at the default NATO loadouts.
		if (
			isClass (configFile >> "CfgPatches" >> "CFB_Skins")
			&& isClass (configFile >> "CfgPatches" >> "rhs_weapons")
			&& isClass (configFile >> "CfgPatches" >> "AGM_Medical")) then
		{
			_unitType = _unit getVariable ["JTF2_UnitType", "rifleman"];
			switch (_unitType) do
			{
				case "ar":
				{
					#include "gear_ar.sqf";
				};
				case "ftl":
				{
					#include "gear_ftl.sqf";
				};
				case "gl":
				{
					#include "gear_gl.sqf";
				};
				case "medic":
				{
					#include "gear_medic.sqf";
				};
				case "pilot":
				{
					#include "gear_pilot.sqf";
				};
				default
				{
					#include "gear_rifleman.sqf";
				};
			};
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