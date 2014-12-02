/*
	Initializes a bunch of AGM variabes (if the mod is loaded) to match our playstyle.
*/

if (isClass (configFile >> "CfgPatches" >> "AGM_Medical")) then
{
	AGM_Medical_Module = true;
	["AGM_Medical_CoefDamage", 1] call AGM_Core_fnc_setParameter;                       // Multiplier for the amount of damage received. Default: 1 (obviously)
	["AGM_Medical_CoefBleeding", 1] call AGM_Core_fnc_setParameter;                     // Multiplier for the rate of bleeding. Default: 1 (obviously)
	["AGM_Medical_CoefPain", 1] call AGM_Core_fnc_setParameter;                         // Multiplier for the intensity of the pain PP effect. Default: 1 (obviously)
	["AGM_Medical_CoefNonMedic", 4] call AGM_Core_fnc_setParameter;                     // Multiplier for the treatment time of an untrained person compared to that of a trained medic. Default: 2
	["AGM_Medical_MaxUnconsciousnessTime", 500] call AGM_Core_fnc_setParameter;         // Maximum time (in seconds) for a unit to be unconscious before dying. -1 disables this.
	["AGM_Medical_AllowNonMedics", false] call AGM_Core_fnc_setParameter;               // Allow non-medics to use epipens and bloodbags? Default: No
	["AGM_Medical_RequireDiagnosis", true] call AGM_Core_fnc_setParameter;              // Require an unconscious patient to be diagnosed before allowing treatment? Default: No
	["AGM_Medical_PreventInstaDeath", true] call AGM_Core_fnc_setParameter;             // Prevent instant death and always put players in unconscious state instead? Default: No
	["AGM_Medical_PreventDeathWhileUnconscious", true] call AGM_Core_fnc_setParameter;  // Make unconscious units invulnerable? Default: No
	["AGM_Medical_SingleBandage", false] call AGM_Core_fnc_setParameter;                // Use one bandage to heal the entire body? Default: No
	["AGM_Medical_AllowChatWhileUnconscious", false] call AGM_Core_fnc_setParameter;    // Allow all players to use chat while unconcious? Admin can always use the chat regardless. Default: No
	["AGM_Medical_EnableOverdosing", true] call AGM_Core_fnc_setParameter;              // Enable morphine overdoses? Default: Yes
	
	diag_log "Applied AGM Medical options";
}
else
{
	diag_log "Not setting up medical options for AGM since PBO is not present.";
};

// TODO do we need to create the blueforce tracking module?