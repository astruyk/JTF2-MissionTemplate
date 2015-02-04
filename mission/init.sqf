// Setup the Ares functionality to allow the spawning of the ammo boxes
[] execVm "Ares_AddAsorgsCustomMissionObject.sqf";
[] execVm "Ares_AddVasCustomMissionObject.sqf";
[] execVM "Ares_AddXmedCustomMissionObject.sqf";
//[] execVM "Ares_AddCustomSigns.sqf";
[] execVM "Ares_AddCseCustomMissionObjects.sqf";

// Setup the pools for reinforcements if CFB_Skins is running.
[] execVM "Ares_AddCfbReinforcementPools.sqf";

enableSaving [false, false]; //Don't allow saving
enableSentences false; // Keep the commander units from saying things automatically

if (isServer && ("jtf2_param_add_objects_to_zeus" call BIS_fnc_getParamValue) == 1) then
{
	// Give zeus control of preplaced and automatically spawned units
	[[zeusModule1, zeusModule2, zeusAdmin], true] execVM "ADV_zeus.sqf";
};


JTF2_Blacklist =
	[
		("jtf2_param_item_blacklists" call BIS_fnc_getParamValue < 2),	// Allow GPS
		("jtf2_param_item_blacklists" call BIS_fnc_getParamValue < 1),	// Allow Thermals
		("jtf2_param_item_blacklists" call BIS_fnc_getParamValue < 2),	// Allow NVG
		'None',	// Allowed Static Weapons
		'None', // Allowed UAVs + terminals
		'None',	// Allowed Automated Static Weapons
		False // Allow respawn bags
	] call JTF2_fnc_GenerateArsenalBlacklist;

ASORGS_Blacklist = ASORGS_Blacklist + JTF2_Blacklist;
vas_r_items = JTF2_Blacklist;
vas_r_weapons = JTF2_Blacklist;
vas_r_magazines = JTF2_Blacklist;

if (isServer) then
{
	// Generate a random respawn point for the Zeus players. This will put them someplace on the map.
	[civilian, zeusRespawn] call JTF2_fnc_PositionBase;
	
	if (("jtf2_param_create_nato_spawn" call BIS_fnc_getParamValue) == 1) then
	{
		[west, nato_respawn] call JTF2_fnc_PositionBase;
	}
	else
	{
		deleteVehicle nato_respawn;
	};
	if (("jtf2_param_create_opfor_spawn" call BIS_fnc_getParamValue) == 1) then
	{
		[west, opfor_respawn] call JTF2_fnc_PositionBase;
	}
	else
	{
		deleteVehicle opfor_respawn;
	};
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
		};
		if (_ammoBoxParam == 2 || _ammoBoxParam == 3) then
		{
			_ammoCrate = [JTF2_BasePosition_Civ] call Ares_Create_Vas_Ammo_Box;
			_ammoCrate setVehiclePosition [JTF2_BasePosition_Civ, [], 10];
			zeusModule1 addCuratorEditableObjects [[_ammoCrate], true];
			zeusModule2 addCuratorEditableObjects [[_ammoCrate], true];
		};
	};
};

if (!isDedicated) then
{
	[] spawn
		{
			sleep 1;  waitUntil { sleep 0.1; !isNull player; }; 
			player addMpEventHandler [ "MPRespawn",  { [_this select 0] spawn { waitUntil {  sleep 0.1; !isNull player; }; [_this select 0] call JTF2_fnc_AssignGear; }; } ];
		};
};

 west setFriend [resistance, 0];
 resistance setFriend [west, 0];
 east setFriend [resistance, 0];
 resistance setFriend [east, 0];

 switch ("jtf2_param_allow_grass_changes" call BIS_fnc_getParamValue) do
 {
	case 0: { tawvd_disableGrassChanges = true; };
	case 1: { tawvd_disablenone = true; };
 };
