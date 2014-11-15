// Assumes this will be called on all machines so this variable will be defined.
Ares_Create_Xmed_Ammo_Box =
	{
		_ammoBox = "x39_medicBox" createVehicle (_this select 0);
		_ammoBox;
	};

["Xmed Ammo Box", { [[_this select 0], "Ares_Create_Xmed_Ammo_Box", false] call BIS_fnc_MP; []; }] execVm "Ares_CreateCustomMissionObject.sqf";