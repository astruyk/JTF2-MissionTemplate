if (isClass (configFile >> "CfgPatches" >> "cse_main")) then
{
	Ares_CSE_Create_Medical_Facility =
		{
			_building = "Land_Medevac_house_V1_F" createVehicle (_this select 0);
			_building setvariable["cse_medical_facility", true];
			_building;
		};
	["CSE Medical Facility", { [[_this select 0], "Ares_CSE_Create_Medical_Facility", false] call BIS_fnc_MP; []; }] execVm "Ares_CreateCustomMissionObject.sqf";
	
	Ares_CSE_Create_Medic_Backpack =
		{
			_backpack = "B_Carryall_khk" createVehicle (_this select 0);
			_backpack addMagazineCargoGlobal ["cse_tourniquet", 4];
			_backpack addMagazineCargoGlobal ["cse_nasopharyngeal_tube", 4];
			_backpack addMagazineCargoGlobal ["cse_chestseal", 6];
			_backpack addMagazineCargoGlobal ["cse_bandageElastic", 12];
			_backpack addMagazineCargoGlobal ["cse_bandage_basic", 12];
			_backpack addMagazineCargoGlobal ["cse_packing_bandage", 8];
			_backpack addMagazineCargoGlobal ["cse_quikclot", 14];
			// _backpack addMagazineCargoGlobal ["cse_splint", 2]; // Broken bones not implemented yet
			_backpack addMagazineCargoGlobal ["cse_saline_iv_500", 15];
			_backpack addMagazineCargoGlobal ["cse_morphine", 10];
			_backpack addMagazineCargoGlobal ["cse_epinephrine", 12];
			// _backpack addMagazineCargoGlobal ["cse_liquidSkin", 2]; // Burns not implemented yet
			_backpack addMagazineCargoGlobal ["cse_personal_aid_kit", 1];
		};
	["CSE Medical Backpack", { [[_this select 0], "Ares_CSE_Create_Medic_Backpack", false] call BIS_fnc_MP; []; }] execVm "Ares_CreateCustomMissionObject.sqf";

};