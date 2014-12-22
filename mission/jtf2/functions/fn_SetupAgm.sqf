/*
	Initializes a bunch of AGM variabes (if the mod is loaded) to match our playstyle.
*/

if (isClass (configFile >> "CfgPatches" >> "AGM_Medical") && isServer) then
{
	AGM_Medical_Module = true;
	publicVariable "AGM_Medical_Module";
	AGM_Medical_MEDEVACTriggers = [];
	publicVariable "AGM_Medical_MEDEVACTriggers";
	AGM_Medical_MEDEVACVehicles = [];
	publicVariable "AGM_Medical_MEDEVACVehicles";
	
	["AGM_Medical_CoefDamage", 1] call AGM_Core_fnc_setParameter;                   // Multiplier for the amount of damage received. Default: 1 (obviously)
	["AGM_Medical_CoefBleeding", 1] call AGM_Core_fnc_setParameter;                 // Multiplier for the rate of bleeding. Default: 1 (obviously)
	["AGM_Medical_CoefPain", 1] call AGM_Core_fnc_setParameter;                     // Multiplier for the intensity of the pain PP effect. Default: 1 (obviously)
	["AGM_Medical_CoefNonMedic", 3] call AGM_Core_fnc_setParameter;                 // Multiplier for the treatment time of an untrained person compared to that of a trained medic. Default: 2
	["AGM_Medical_MaxUnconsciousnessTime", 500] call AGM_Core_fnc_setParameter;     // Maximum time (in seconds) for a unit to be unconscious before dying. -1 disables this.
	["AGM_Medical_AllowNonMedics", 0] call AGM_Core_fnc_setParameter;               // Allow non-medics to use epipens and bloodbags? Default: No
	["AGM_Medical_RequireDiagnosis", 1] call AGM_Core_fnc_setParameter;             // Require an unconscious patient to be diagnosed before allowing treatment? Default: No
	["AGM_Medical_PreventInstaDeath", 1] call AGM_Core_fnc_setParameter;            // Prevent instant death and always put players in unconscious state instead? Default: No
	["AGM_Medical_PreventDeathWhileUnconscious", 1] call AGM_Core_fnc_setParameter; // Make unconscious units invulnerable? Default: No
	["AGM_Medical_SingleBandage", 0] call AGM_Core_fnc_setParameter;                // Use one bandage to heal the entire body? Default: No
	["AGM_Medical_AllowChatWhileUnconscious", 0] call AGM_Core_fnc_setParameter;    // Allow all players to use chat while unconcious? Admin can always use the chat regardless. Default: No
	["AGM_Medical_EnableOverdosing", 1] call AGM_Core_fnc_setParameter;             // Enable morphine overdoses? Default: Yes
	["AGM_Medical_RequireMEDEVAC", 1] call AGM_Core_fnc_setParameter;               // Only allow Epipens within synchronized triggers? Default: No
	["AGM_Medical_AutomaticWakeup", 1] call AGM_Core_fnc_setParameter;              // Allow units to wake up by themselves? Default: Yes
	["AGM_Medical_DisableScreams", 0] call AGM_Core_fnc_setParameter;               // "Disable screaming on hit? Default: No
	
	
	diag_log "Applied AGM Medical options.";
}
else
{
	diag_log "Not setting up medical options for AGM since PBO is not present.";
};

if (isClass (configFile >> "CfgPatches" >> "AGM_Map")) then
{
	AGM_Map_BFT_Enabled = true;
	["AGM_Map_BFT_Interval", 1] call AGM_Core_fnc_setParameter;  // How often the markers should be refreshed (in seconds) Default: 1
	["AGM_Map_BFT_HideAiGroups", 1] call AGM_Core_fnc_setParameter;  // Hide markers for 'AI only' groups? Default: true
	diag_log "Applied AGM Map options.";
}
else
{
	diag_log "Not setting up map options for AGM since PBO is not present.";
};