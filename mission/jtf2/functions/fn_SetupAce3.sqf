/*
	Initializes a bunch of ACE variabes (if the mod is loaded) to match our playstyle.
*/

if (isClass (configFile >> "CfgPatches" >> "ace_medical")) then
{
	_medicalLevel = 1;
	if (("jtf2_param_ace_medical_level" call BIS_fnc_getParamValue) == 1) then
	{
		diag_log "Applying ACE simple medical options.";
		_medicalLevel = 2;
	}
	else
	{
		diag_log "Applying ACE advanced medical options.";
	};
	
	// Look up defaults and types from https://github.com/acemod/ACE3/blob/master/addons/medical/ACE_Settings.hpp
	// From 'Medical Settings' module (https://github.com/acemod/ACE3/blob/master/addons/medical/functions/fnc_moduleMedicalSettings.sqf)
	["ace_medical_level", _medicalLevel] call ace_common_fnc_setParameter; // 0 = Disabled, 1* = Basic, 2 = Advanced
	["ace_medical_medicSetting", 1] call ace_common_fnc_setParameter; // 0 = Disabled, 1* = Basic, 2 = Advanced
	["ace_medical_allowLitterCreation", 1] call ace_common_fnc_setParameter; // 0 = Disabled, 1* = Enabled
	["ace_medical_litterCleanUpDelay", 120] call ace_common_fnc_setParameter; // Time in seconds. 0 = Never cleanup. Default=120
	["ace_medical_enableScreams", 1] call ace_common_fnc_setParameter; // 0 = Disabled, 1* = Enabled
	["ace_medical_playerDamageThreshold", 1] call ace_common_fnc_setParameter; // Scalar. Default = 1
	["ace_medical_AIDamageThreshold", 1] call ace_common_fnc_setParameter; // Scalar. Default = 1
	["ace_medical_enableUnconsciousnessAI", 1] call ace_common_fnc_setParameter; // 0 = Disabled, 1* = 50/50, 2 = Enabled
	["ace_medical_preventInstaDeath", 0] call ace_common_fnc_setParameter; // 0* = Disabled, 1 = Enabled
	["ace_medical_bleedingCoefficient", 1] call ace_common_fnc_setParameter; // Scalar. Default = 1
	["ace_medical_painCoefficient", 1] call ace_common_fnc_setParameter; // Scalar, Default = 1
	["ace_medical_keepLocalSettingsSynced", 1] call ace_common_fnc_setParameter; // 0 = Disabled, 1* = Enabled
	
	// From 'Revive Settings' module (https://github.com/acemod/ACE3/blob/master/addons/medical/functions/fnc_moduleReviveSettings.sqf)
	["ace_medical_enableRevive", 1] call ace_common_fnc_setParameter; // 0* = Disabled, 1 = Players Only, 2 = Players and AI
	["ace_medical_maxReviveTime", 300] call ace_common_fnc_setParameter; // Scalar. Default = 120
	["ace_medical_amountOfReviveLives", -1] call ace_common_fnc_setParameter; // Scalar. -1 = Disabled. Default = -1
	
	// From 'Advanced Medical Settings' module (https://github.com/acemod/ACE3/blob/master/addons/medical/functions/fnc_moduleAdvancedMedicalSettings.sqf)
	["ace_medical_enableFor", 0] call ace_common_fnc_setParameter; // 0* = Players Only, 1 = Players and AI
	["ace_medical_enableAdvancedWounds", 0] call ace_common_fnc_setParameter; // 0* = Disabled, 1 = Enabled - Re-opening of wounds
	//["ace_medical_enableAirway", X] call ace_common_fnc_setParameter;
	//["ace_medical_enableFractures", X] call ace_common_fnc_setParameter;
	["ace_medical_medicSetting_PAK", 1] call ace_common_fnc_setParameter; // 0 = Anyone, 1* = Medics Only, 2 = Doctors Only
	["ace_medical_medicSetting_SurgicalKit", 1] call ace_common_fnc_setParameter; // 0 = Anyone, 1* = Medics Only, 2 = Doctors Only
	["ace_medical_consumeItem_PAK", 0] call ace_common_fnc_setParameter; // 0* = No, 1 = Yes
	["ace_medical_consumeItem_SurgicalKit", 0] call ace_common_fnc_setParameter; // 0* = No, 1 = Yes
	["ace_medical_useLocation_PAK", 0] call ace_common_fnc_setParameter; // 0 = Anywhere, 1 = Medical Vehicles, 2 = Medical Facility, 3* = Vehicle & Facility, 4 = Disabled
	["ace_medical_useLocation_SurgicalKit", 0] call ace_common_fnc_setParameter; // 0 = Anywhere, 1 = Medical Vehicles, 2* = Medical Facility, 3 = Vehicle & Facility, 4 = Disabled
}
else
{
	diag_log "Not setting up medical options for ACE since PBO is not present.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_map")) then
{
	if (("jtf2_param_ace_show_squad_map_markers" call BIS_fnc_getParamValue) == 1) then
	{
		ace_map_BFT_Enabled = true;
		["ace_map_BFT_Interval", 1] call ace_common_fnc_setSetting;  // How often the markers should be refreshed (in seconds) Default: 1
		["ace_map_BFT_HideAiGroups", 1] call ace_common_fnc_setParameter;  // Hide markers for 'AI only' groups? Default: true
		ace_map_BFT_markers = [];
		[ace_map_fnc_blueForceTrackingUpdate, ace_map_BFT_Interval, []] call CBA_fnc_addPerFrameHandler;
		diag_log "Applied ACE Map options.";
	}
	else
	{
		diag_log "Not enabling ACE map options due to mission parameters.";
	};
}
else
{
	diag_log "Not setting up map options for ACE since PBO is not present.";
};
