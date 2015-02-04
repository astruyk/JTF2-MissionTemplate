_unit = _this select 0;

if (local _unit) then
{
	switch ("jtf2_param_starting_loadouts" call BIS_fnc_getParamValue) do
	{
		case 0: // Role-specific equipment
		{
			tf_no_auto_long_range_radio = true; 	// Don't assign a TFAR radio by default.
			TF_give_microdagr_to_soldier = false; 	// Don't replace watch (if any) w/ microdagr

			// RHS, AGM and CFB_Skins are required for these loadouts. Otherwise
			// we'll just leave things at the default NATO loadouts.
			if (
				isClass (configFile >> "CfgPatches" >> "CFB_Skins")
				&& isClass (configFile >> "CfgPatches" >> "rhs_weapons")
				&& isClass (configFile >> "CfgPatches" >> "AGM_Medical")
				&& isClass (configFile >> "CfgPatches" >> "task_force_radio")) then
			{
				_unitType = _unit getVariable ["JTF2_UnitType", "rifleman"];
				switch (_unitType) do
				{
					case "aar":
					{
						#include "gear_aar.sqf";
					};
					case "airMedic":
					{
						#include "gear_medic.sqf";
					};
					case "ammg":
					{
						#include "gear_ammg.sqf";
					};
					case "ar":
					{
						#include "gear_ar.sqf";
					};
					case "command":
					{
						#include "gear_command.sqf";
					};
					case "crew":
					{
						#include "gear_crew.sqf";
					};
					case "eod":
					{
						#include "gear_eod.sqf";
					};
					case "flightCommand":
					{
						#include "gear_command.sqf";
					};
					case "ftl":
					{
						#include "gear_ftl.sqf";
					};
					case "gl":
					{
						#include "gear_gl.sqf";
					};
					case "jtac":
					{
						#include "gear_jtac.sqf";
					};
					case "lat":
					{
						#include "gear_lat.sqf";
					};
					case "marksman":
					{
						#include "gear_marksman.sqf";
					};
					case "medic":
					{
						#include "gear_medic.sqf";
					};
					case "mmg":
					{
						#include "gear_mmg.sqf";
					};
					case "pilot":
					{
						#include "gear_pilot.sqf";
					};
					case "reconSniper":
					{
						#include "gear_recon_sniper.sqf";
					};
					case "reconSpotter":
					{
						#include "gear_recon_spotter.sqf";
					};
					case "uav":
					{
						#include "gear_uav.sqf";
					};
					default
					{
						#include "gear_rifleman.sqf";
					};
					case "o_aar":
					{
						#include "o_gear_aar.sqf";
					};
					case "o_airMedic":
					{
						#include "o_gear_medic.sqf";
					};
					case "o_ammg":
					{
						#include "o_gear_ammg.sqf";
					};
					case "ar":
					{
						#include "o_gear_ar.sqf";
					};
					case "o_command":
					{
						#include "o_gear_command.sqf";
					};
					case "o_crew":
					{
						#include "o_gear_crew.sqf";
					};
					case "o_eod":
					{
						#include "o_gear_eod.sqf";
					};
					case "o_flightCommand":
					{
						#include "o_gear_command.sqf";
					};
					case "o_ftl":
					{
						#include "o_gear_ftl.sqf";
					};
					case "o_gl":
					{
						#include "o_gear_gl.sqf";
					};
					case "o_jtac":
					{
						#include "o_gear_jtac.sqf";
					};
					case "o_lat":
					{
						#include "gear_lat.sqf";
					};
					case "o_marksman":
					{
						#include "o_gear_marksman.sqf";
					};
					case "o_medic":
					{
						#include "o_gear_medic.sqf";
					};
					case "o_mmg":
					{
						#include "o_gear_mmg.sqf";
					};
					case "o_pilot":
					{
						#include "o_gear_pilot.sqf";
					};
					case "o_reconSniper":
					{
						#include "o_gear_recon_sniper.sqf";
					};
					case "o_reconSpotter":
					{
						#include "o_gear_recon_spotter.sqf";
					};
					case "o_uav":
					{
						#include "o_gear_uav.sqf";
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

	diag_log "Assigned starting gear.";
};