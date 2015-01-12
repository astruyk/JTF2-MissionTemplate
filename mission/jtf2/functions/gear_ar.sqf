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
_unit addItemToUniform "rhsusf_100Rnd_556x45_soft_pouch";
_unit addVest "CFB_TW_Vest_PlateCarrier2";
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_100Rnd_556x45_soft_pouch";};
_unit addBackpack "CFB_TW_Backpack_Kitbag";
for "_i" from 1 to 10 do {_unit addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Epipen";};
_unit addItemToBackpack "AGM_EarBuds";
_unit addItemToBackpack "AGM_Bloodbag";
_unit addItemToBackpack "AGM_SpareBarrel";
for "_i" from 1 to 4 do {_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";};
_unit addHeadgear "CFB_TW_Helmet";

comment "Add weapons";
_unit addWeapon "rhs_weap_m249_pip";
_unit addPrimaryWeaponItem "rhsusf_acc_ELCAN";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_1";
