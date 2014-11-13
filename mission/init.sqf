// Give zeus control of preplaced and automatically spawned units
if (isServer && (jtf2_param_add_objects_to_zeus == 1)) then
{
	// TODO - this can probably be a single loop. Oh well. This is easy.
	[zeusModule1,true] execVM "ADV_zeus.sqf";
	[zeusModule2,true] execVM "ADV_zeus.sqf";
};

if (!isServer && jtf2_param_enable_laser_for_helicopters == 1) then
{
	// Run script to perform custom init functions on vehicles that are spawned dynamically.
	[] execVM "jtf2\scripts\InitDynamicVehicles.sqf"
};

if (jtf_param_enable_xmed == 1) then
{
	[] call X39_MedSys_fnc_initMod;
};

if (!isServer && jtf2_param_enable_dynamic_groups == 1) then
{
	[player] execVM "scripts\groupsMenu\initGroups.sqf";
};

enableSaving [false, false]; //Don't allow saving
enableSentences false; // Keep the commander units from saying things automatically

if (isServer) then
{
	// Generate a random respawn point for the Zeus players. This will put them someplace on the map.
	[west] call JTF2_fnc_PositionBase;
};
