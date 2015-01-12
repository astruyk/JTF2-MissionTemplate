comment "Exported from Arsenal by Anton WO.";

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add containers";
_unit forceAddUniform "CFB_TW_Rolled_Uniform";
for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_unit addVest "CFB_TW_Vest_PlateCarrier1";
for "_i" from 1 to 5 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellYellow";};
for "_i" from 1 to 2 do {_unit addItemToVest "AGM_Bloodbag";};
_unit addBackpack "CFB_TW_Backpack_Kitbag";
for "_i" from 1 to 8 do {_unit addItemToBackpack "AGM_Bloodbag";};
_unit addItemToBackpack "AGM_EarBuds";
for "_i" from 1 to 25 do {_unit addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "AGM_Epipen";};
_unit addHeadgear "CFB_TW_Boonie";

comment "Add weapons";
_unit addWeapon "rhs_weap_m4";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_1";
