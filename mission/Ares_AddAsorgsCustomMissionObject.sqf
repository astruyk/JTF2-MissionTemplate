// Assumes this will be called on all machines so this variable will be defined.
Ares_Set_Asorgs_Ammo_Box =
	{
		(_this select 0) addAction ["<t color='#111111'>ASORGS Gear Select</t>", "execvm 'ASORGS\open.sqf'"];
	};
Ares_Create_Asorgs_Ammo_Box =
	{
		_ammoBox = "B_supplyCrate_F" createVehicle (_this select 0);
		clearMagazineCargoGlobal _ammoBox;
		clearWeaponCargoGlobal _ammoBox;
		clearItemCargoGlobal _ammoBox;
		clearBackpackCargoGlobal _ammoBox;
		[[_ammoBox], "Ares_Set_Asorgs_Ammo_Box", true, true] call BIS_fnc_MP;
		_ammoBox;
	};

["ASORGS Ammo Box", { [[_this select 0], "Ares_Create_Asorgs_Ammo_Box", false] call BIS_fnc_MP; }] execVm "Ares_CreateCustomMissionObject.sqf";