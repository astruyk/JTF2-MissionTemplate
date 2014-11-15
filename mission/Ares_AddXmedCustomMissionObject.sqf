// Assumes this will be called on all machines so this variable will be defined.
Ares_Create_Xmed_Ammo_Box =
	{
		_ammoBox = "x39_medicBox" createVehicle (_this select 0);
		clearMagazineCargoGlobal _ammoBox;
		clearWeaponCargoGlobal _ammoBox;
		clearItemCargoGlobal _ammoBox;
		clearBackpackCargoGlobal _ammoBox;
		[[_ammoBox], "Ares_Set_Asorgs_Ammo_Box", true, true] call BIS_fnc_MP;
		_ammoBox;
	};

["ASORGS Ammo Box", { [[_this select 0], "Ares_Create_Xmed_Ammo_Box", false] call BIS_fnc_MP; }] execVm "Ares_CreateCustomMissionObject.sqf";