// Assumes this will be called on all machines so this variable will be defined.

[
	[
		"Sign - Assembly Areas",
		{
			_position = _this select 0;
			_sign = "Sign_F" createVehicle _position;
			[_sign, "jtf2\images\Sign_Assembly_Areas_L.paa", "jtf2\images\Sign_Assembly_Areas_R.paa"] call JTF2_fnc_setupSign;
			_sign;
		}
	],
	[
		"Sign - Assembly Area A",
		{
			_position = _this select 0;
			_sign = "Sign_F" createVehicle _position;
			[_sign, "jtf2\images\Sign_Assembly_Area_L.paa", "jtf2\images\Sign_Assembly_Area_A.paa"] call JTF2_fnc_setupSign;
			_sign;
		}
	],
	[
		"Sign - Assembly Area B",
		{
			_position = _this select 0;
			_sign = "Sign_F" createVehicle _position;
			[_sign, "jtf2\images\Sign_Assembly_Area_L.paa", "jtf2\images\Sign_Assembly_Area_B.paa"] call JTF2_fnc_setupSign;
			_sign;
		}
	],
	[
		"Sign - Assembly Area C",
		{
			_position = _this select 0;
			_sign = "Sign_F" createVehicle _position;
			[_sign, "jtf2\images\Sign_Assembly_Area_L.paa", "jtf2\images\Sign_Assembly_Area_C.paa"] call JTF2_fnc_setupSign;
			_sign;
		}
	],
	[
		"Sign - Landing Pad 1",
		{
			_position = _this select 0;
			_sign = "Sign_F" createVehicle _position;
			[_sign, "jtf2\images\Sign_Landing_Pad_L.paa", "jtf2\images\Sign_Landing_Pad_1.paa"] call JTF2_fnc_setupSign;
			_sign;
		}
	],
	[
		"Sign - Landing Pad 2",
		{
			_position = _this select 0;
			_sign = "Sign_F" createVehicle _position;
			[_sign, "jtf2\images\Sign_Landing_Pad_L.paa", "jtf2\images\Sign_Landing_Pad_2.paa"] call JTF2_fnc_setupSign;
			_sign;
		}
	],
	[
		"Sign - Landing Pad 3",
		{
			_position = _this select 0;
			_sign = "Sign_F" createVehicle _position;
			[_sign, "jtf2\images\Sign_Landing_Pad_L.paa", "jtf2\images\Sign_Landing_Pad_3.paa"] call JTF2_fnc_setupSign;
			_sign;
		}
	],
	[
		"Sign - Landing Pad 4",
		{
			_position = _this select 0;
			_sign = "Sign_F" createVehicle _position;
			[_sign, "jtf2\images\Sign_Landing_Pad_L.paa", "jtf2\images\Sign_Landing_Pad_4.paa"] call JTF2_fnc_setupSign;
			_sign;
		}
	]
] execVm "Ares_CreateCustomMissionObject.sqf";