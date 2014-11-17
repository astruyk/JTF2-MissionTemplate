// Assumes this will be called on all machines so this variable will be defined.
Ares_Set_Dgm_Group_Action =
	{
		(_this select 0) addAction ["Dynamic Group Menu", "_nul=call DGM_fnc_uiInit"];
	};
Ares_Create_Dgm_Group_Selector =
	{
		_board = "Land_MapBoard_F" createVehicle (_this select 0);
		[[_board], "Ares_Set_Dgm_Group_Action", true, true] call BIS_fnc_MP;
		_board;
	};

["DGM Group Selector", { [[_this select 0], "Ares_Create_Dgm_Group_Selector", false] call BIS_fnc_MP; []; }] execVm "Ares_CreateCustomMissionObject.sqf";