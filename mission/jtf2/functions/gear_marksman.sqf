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
for "_i" from 1 to 2 do {_unit addItemToUniform "20Rnd_762x51_Mag";};
_unit addItemToUniform "AGM_EarBuds";
_unit addVest "CFB_TW_Vest_Tactical";
_unit addItemToVest "AGM_ItemKestrel";
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 6 do {_unit addItemToVest "20Rnd_762x51_Mag";};
_unit addBackpack "CFB_TW_Backpack_Assault";
for "_i" from 1 to 12 do {_unit addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Bloodbag";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "20Rnd_762x51_Mag";};
_unit addHeadgear "CFB_TW_Boonie";

comment "Add weapons";
_unit addWeapon "rhs_weap_m14ebrri";
_unit addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_1";
