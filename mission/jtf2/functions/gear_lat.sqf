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
_unit forceAddUniform "CFB_TW_Uniform";
_unit addItemToUniform "AGM_EarBuds";
for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_unit addVest "CFB_TW_Vest_PlateCarrier2";
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 12 do {_unit addItemToVest "AGM_Bandage";};
for "_i" from 1 to 4 do {_unit addItemToVest "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToVest "AGM_Epipen";};
_unit addItemToVest "AGM_Bloodbag";
_unit addBackpack "CFB_TW_Backpack_Kitbag";
for "_i" from 1 to 4 do {_unit addItemToBackpack "RPG32_F";};
_unit addItemToBackpack "RPG32_HE_F";
_unit addHeadgear "CFB_TW_Helmet";

comment "Add weapons";
_unit addWeapon "rhs_weap_m16a4_carryhandle";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
_unit addWeapon "launch_RPG32_F";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_1";
