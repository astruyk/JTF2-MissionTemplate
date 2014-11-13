// Assumes this will be called on all machines so this variable will be defined.
Ares_Set_Vas_Ammo_Box = {
		(_this select 0) addAction ["<t color='#ff1111'>Virtual Ammobox</t>", "VAS\open.sqf"];
	};

["VAS Ammo Box", {
	_ammoBox = "B_supplyCrate_F" createVehicle (_this select 0);
	clearMagazineCargoGlobal _ammoBox;
	clearWeaponCargoGlobal _ammoBox;
	clearItemCargoGlobal _ammoBox;
	clearBackpackCargoGlobal _ammoBox;
	[[_ammoBox], "Ares_Set_Vas_Ammo_Box", true, true] call BIS_fnc_MP;
	_ammoBox;
}] execVm "Ares_CreateCustomMissionObject.sqf";