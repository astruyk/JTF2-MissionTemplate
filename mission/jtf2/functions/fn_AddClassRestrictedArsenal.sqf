_ammoBox = _this select 0;

if (isDedicated) exitWith { diag_log "Dedicated server. Not adding arsenal to ammo box."; };
if (isNull player) exitWith { diag_log "No player. Cannot add arsenal."; };

clearWeaponCargo _ammoBox;
clearMagazineCargo _ammoBox;
clearItemCargo _ammoBox;
clearBackpackCargo _ammoBox;

// These are items that all classes should have access to.
_unitType = player getVariable ["JTF2_UnitType", "rifleman"];
_common = call (compile (preprocessFileLineNumbers "jtf2\scripts\arsenal\common.sqf"));
_unitSpecific = call (compile (preprocessFileLineNumbers ("jtf2\scripts\arsenal\" + _unitType + ".sqf")));
[_ammoBox, (_common select 0) + (_unitSpecific select 0), false, false] call BIS_fnc_addVirtualItemCargo;
[_ammoBox, (_common select 1) + (_unitSpecific select 1), false, false] call BIS_fnc_addVirtualBackpackCargo;
[_ammoBox, (_common select 2) + (_unitSpecific select 2), false, false] call BIS_fnc_addVirtualWeaponCargo;
[_ammoBox, (_common select 3) + (_unitSpecific select 3), false, false] call BIS_fnc_addVirtualMagazineCargo;
["AmmoboxInit", [_ammoBox, false]] spawn BIS_fnc_arsenal;
