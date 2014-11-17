if (isServer && ("jtf2_param_add_objects_to_zeus" call BIS_fnc_getParamValue) == 1) then
{
	// Give zeus control of preplaced and automatically spawned units
	// TODO - this can probably be a single loop. Oh well. This is easy.
	[zeusModule1,true] execVM "ADV_zeus.sqf";
	[zeusModule2,true] execVM "ADV_zeus.sqf";
};

// Setup the Ares functionality to allow the spawning of the ammo boxes
[] execVm "Ares_AddAsorgsCustomMissionObject.sqf";
[] execVm "Ares_AddVasCustomMissionObject.sqf";
[] execVM "Ares_AddXmedCustomMissionObject.sqf";
[] execVM "Ares_AddDgmGroupSwitchCustomMissionObject.sqf";

if (!isDedicated && ("jtf2_param_enable_laser_for_helicopters" call BIS_fnc_getParamValue) == 1) then
{
	// Run script to perform custom init functions on vehicles that are spawned dynamically.
	[] execVM "jtf2\scripts\InitDynamicVehicles.sqf"
};

if (("jtf2_param_enable_xmed" call BIS_fnc_getParamValue) == 1) then
{
	if (isClass (configFile >> "CfgPatches" >> "X39_MedSys_Scripting")) then
	{
		[] call X39_MedSys_fnc_initMod;
	}
	else
	{
		diag_log "Unable to start xmedSys because the scripting module was not found.";
	};
};

if (!isDedicated && ("jtf2_param_enable_dynamic_groups" call BIS_fnc_getParamValue) == 1) then
{
	[player] execVM "scripts\groupsMenu\initGroups.sqf";
};

if (("jtf2_param_enable_igiLoad" call BIS_fnc_getParamValue) == 1) then
{
	_igiload = execVM "IgiLoad\IgiLoadInit.sqf";
};

enableSaving [false, false]; //Don't allow saving
enableSentences false; // Keep the commander units from saying things automatically

if (isServer) then
{
	// Generate a random respawn point for the Zeus players. This will put them someplace on the map.
	[civilian, zeusRespawn] call JTF2_fnc_PositionBase;
	//[west, zeusRespawn] call JTF2_fnc_PositionBase;
	//[independent, zeusRespawn] call JTF2_fnc_PositionBase;

	[] spawn
	{
		waitUntil { !isNil "Ares_Create_Asorgs_Ammo_Box" && !isNil "Ares_Create_Vas_Ammo_Box"};
		sleep 1; // Needed otherwise the BIS_fnc_MP won't trigger correctly and the boxes don't get ammo set right.
		
		_ammoBoxParam = "jtf2_param_start_with_ammoboxes" call BIS_fnc_getParamValue;
		if (_ammoBoxParam == 1 || _ammoBoxParam == 3) then
		{
			// Create ASORG box
			_ammoCrate = [JTF2_BasePosition_Civ] call Ares_Create_Asorgs_Ammo_Box;
			_ammoCrate setVehiclePosition [JTF2_BasePosition_Civ, [], 10];
			zeusModule1 addCuratorEditableObjects [[_ammoCrate], true];
			zeusModule2 addCuratorEditableObjects [[_ammoCrate], true];
			
			/*_ammoCrate = [JTF2_BasePosition_West] call Ares_Create_Asorgs_Ammo_Box;
			_ammoCrate setVehiclePosition [JTF2_BasePosition_West, [], 10];
			zeusModule1 addCuratorEditableObjects [[_ammoCrate], true];
			zeusModule2 addCuratorEditableObjects [[_ammoCrate], true];
			
			_ammoCrate = [JTF2_BasePosition_Guer] call Ares_Create_Asorgs_Ammo_Box;
			_ammoCrate setVehiclePosition [JTF2_BasePosition_Guer, [], 10];
			zeusModule1 addCuratorEditableObjects [[_ammoCrate], true];
			zeusModule2 addCuratorEditableObjects [[_ammoCrate], true];*/
		};
		if (_ammoBoxParam == 2 || _ammoBoxParam == 3) then
		{
			_ammoCrate = [JTF2_BasePosition_Civ] call Ares_Create_Vas_Ammo_Box;
			_ammoCrate setVehiclePosition [JTF2_BasePosition_Civ, [], 10];
			zeusModule1 addCuratorEditableObjects [[_ammoCrate], true];
			zeusModule2 addCuratorEditableObjects [[_ammoCrate], true];
			
			/*_ammoCrate = [JTF2_BasePosition_West] call Ares_Create_Vas_Ammo_Box;
			_ammoCrate setVehiclePosition [JTF2_BasePosition_West, [], 10];
			zeusModule1 addCuratorEditableObjects [[_ammoCrate], true];
			zeusModule2 addCuratorEditableObjects [[_ammoCrate], true];
			
			_ammoCrate = [JTF2_BasePosition_Guer] call Ares_Create_Vas_Ammo_Box;
			_ammoCrate setVehiclePosition [JTF2_BasePosition_Guer, [], 10];
			zeusModule1 addCuratorEditableObjects [[_ammoCrate], true];
			zeusModule2 addCuratorEditableObjects [[_ammoCrate], true];*/
		};
	};
};

if (!isDedicated && ("jtf2_param_starting_loadouts" call BIS_fnc_getParamValue) > 0) then
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
			
			if (isClass (configFile >> "CfgPatches" >> "CFB_Skins") && "jtf2_param_starting_loadouts" call BIS_fnc_getParamValue >= 2) then
			{
				_uniformReplacements = [];
				switch ("jtf2_param_starting_loadouts" call BIS_fnc_getParamValue) do
				{
					case 2: // CADPAT TW
					{
						_uniformReplacements = ["CFB_TW_Uniform", "CFB_TW_Rolled_Uniform", "CFB_TW_Tshirt_Uniform"];
					};
					case 3: // CADPAT AR
					{
						_uniformReplacements = ["CFB_AR_Uniform", "CFB_AR_Rolled_Uniform", "CFB_AR_Tshirt_Uniform"];
					};
					case 4: // JTF2
					{
						_uniformReplacements = ["CFB_JTF2_Uniform", "CFB_JTF2_Rolled_Uniform", "CFB_JTF2_Tshirt_Uniform"];
					};
				};
				
				if ((uniform _unit) in ["U_B_HeliPilotCoveralls", "U_I_HeliPilotCoveralls"]) then
				{
					_uniformReplacements = ["CFB_RCAF_Helo_Pilot"];
				};
				
				if (count _uniformReplacements > 0) then
				{
					_unit forceAddUniform (_uniformReplacements call BIS_fnc_SelectRandom);
				};
			}
			else
			{
				diag_log "Unable to use CFB_skins uniforms since mod isn't loaded.";
			};
		}];
	};
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
		"optic_LRPS",
		"optic_NVS"
	];
};
vas_r_items = vas_r_items + ASORGS_Blacklist;
vas_r_weapons = vas_r_weapons + ASORGS_Blacklist;
vas_r_magazines = vas_r_magazines + ASORGS_Blacklist;
// [] call ASORGS_fnc_buildDatabase.sqf;

 west setFriend [resistance, 0];
 resistance setFriend [west, 0];
 east setFriend [resistance, 0];
 resistance setFriend [east, 0];

