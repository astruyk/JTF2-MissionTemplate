if (isServer && ("jtf2_param_add_objects_to_zeus" call BIS_fnc_getParamValue) == 1) then
{
	// Give zeus control of preplaced and automatically spawned units
	// TODO - this can probably be a single loop. Oh well. This is easy.
	[zeusModule1,true] execVM "ADV_zeus.sqf";
	[zeusModule2,true] execVM "ADV_zeus.sqf";
};

if (!isDedicated && ("jtf2_param_enable_laser_for_helicopters" call BIS_fnc_getParamValue) == 1) then
{
	// Run script to perform custom init functions on vehicles that are spawned dynamically.
	[] execVM "jtf2\scripts\InitDynamicVehicles.sqf"
};

if (("jtf2_param_enable_xmed" call BIS_fnc_getParamValue) == 1) then
{
	[] call X39_MedSys_fnc_initMod;
};

if (!isDedicated && ("jtf2_param_enable_dynamic_groups" call BIS_fnc_getParamValue) == 1) then
{
	[player] execVM "scripts\groupsMenu\initGroups.sqf";
};

if (("jtf2_param_enable_igiLoad" call BIS_fnc_getParamValue) == 1) then
{
	_igiload = execVM "IgiLoad\IgiLoadInit.sqf";
};

// Setup variable for the blacklists
if (isNil "ASORGS_RuntimeBlacklist") then
{
	ASORGS_Blacklist = [];
};
if ("jtf2_param_item_blacklists" call BIS_fnc_getParamValue >= 1) then
{
	ASORGS_Blacklist = ASORGS_Blacklist + [
			"Laserdesignator",
			"optic_Nightstalker",
			"optic_tws",
			"optic_tws_mg"
		];
};
if ("jtf2_param_item_blacklists" call BIS_fnc_getParamValue >= 2) then
{
		ASORGS_Blacklist = ASORGS_Blacklist + [
			"Rangefinder",
			"B_UavTerminal",
			"O_UavTerminal",
			"I_UavTerminal",
			"ItemGPS",
			"MineDetector",
			"NVGoggles",
			"NVGoggles_OPFOR",
			"NVGoggles_INDEP",
			"optic_Arco",
			"optic_Hamr",
			"optic_SOS",
			"optic_MRCO",
			"acc_pointer_IR",
			"optic_DMS",
			"optic_LRPS"
		];

};

enableSaving [false, false]; //Don't allow saving
enableSentences false; // Keep the commander units from saying things automatically

if (isServer) then
{
	// Generate a random respawn point for the Zeus players. This will put them someplace on the map.
	[west] call JTF2_fnc_PositionBase;
};

if (!isDedicated && ("jtf2_param_starting_loadouts" call BIS_fnc_getParamValue) == 0) then
{
	[] spawn {
		waitUntil { alive player };
		player addMpEventHandler [ "MPRespawn",
		{
			_unit = _this select 0;
			
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
		}];
	};
};

// Setup the Ares functionality to allow the spawning of the ammo boxes
[] execVm "Ares_AddAsorgsCustomMissionObject.sqf";
[] execVm "Ares_AddVasCustomMissionObject.sqf";


