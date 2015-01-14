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
_unit forceAddUniform "CFB_TW_Tshirt_Uniform";
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
_unit addItemToUniform "AGM_EarBuds";
_unit addVest "CFB_TW_Vest_PlateCarrier2";
for "_i" from 1 to 8 do {_unit addItemToVest "AGM_Bandage";};
for "_i" from 1 to 4 do {_unit addItemToVest "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToVest "AGM_Epipen";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_100Rnd_762x51";};
_unit addBackpack "B_Carryall_oli";
_unit addItemToBackpack "AGM_SpareBarrel";
for "_i" from 1 to 5 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51";};
_unit addHeadgear "CFB_TW_Helmet_ECH";

comment "Add weapons";
_unit addWeapon "rhs_weap_m240B";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_2";
