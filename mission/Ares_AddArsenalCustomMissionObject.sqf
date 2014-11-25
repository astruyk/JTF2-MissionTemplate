// Assumes this will be called on all machines so this variable will be defined.
Ares_Create_Arsenal_Ammo_Box =
	{
		_ammoBox = "B_supplyCrate_F" createVehicle (_this select 0);

		clearMagazineCargoGlobal _ammoBox;
		clearWeaponCargoGlobal _ammoBox;
		clearItemCargoGlobal _ammoBox;
		clearBackpackCargoGlobal _ammoBox;
		
		// Generate the list of all the data that is valid to add to arsenal.
		_arsenalData = [JTF2_Blacklist] call JTF2_fnc_GenerateArsenalDataList;
		
		[_ammoBox, (_arsenalData select 0), true] call BIS_fnc_addVirtualBackpackCargo;
		[_ammoBox, (_arsenalData select 1), true] call BIS_fnc_addVirtualItemCargo;
		[_ammoBox, (_arsenalData select 2), true] call BIS_fnc_addVirtualMagazineCargo;
		[_ammoBox, (_arsenalData select 3), true] call BIS_fnc_addVirtualWeaponCargo;
		
		// Make sure the box is configured as an arsenal box.
		["AmmoboxInit", [_ammoBox, false, {true}]] call BIS_fnc_arsenal;
		_ammoBox;
	};

["Arsenal Ammo Box (everything)", { [[_this select 0], "Ares_Create_Arsenal_Ammo_Box", false] call BIS_fnc_MP; []; }] execVm "Ares_CreateCustomMissionObject.sqf";