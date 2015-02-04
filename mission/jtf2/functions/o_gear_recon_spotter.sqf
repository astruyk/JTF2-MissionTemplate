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
_unit forceAddUniform "rhs_uniform_msv_emr";
_unit addItemToUniform "AGM_EarBuds";
for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_30Rnd_545x39_7n22_AK";};
for "_i" from 1 to 1 do {_unit addItemToVest "rhs_mag_9x19_17";};
_unit addVest "rhs_6b23_digi_rifleman";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 7 do {_unit addItemToVest "rhs_30Rnd_545x39_7n22_AK";};
for "_i" from 1 to 1 do {_unit addItemToVest "rhs_mag_9x19_17";};
_unit addBackpack "tf_mr3000_rhs";
for "_i" from 1 to 12 do {_unit addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Bloodbag";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_10Rnd_762x54mmR_7N1";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_9x19_17";};
_unit addItemToBackpack "rhs_acc_1pn93_1";
_unit addHeadgear "rhs_Booniehat_digi";

comment "Add weapons";
_unit addWeapon "rhs_weap_ak74m_desert";
_unit addPrimaryWeaponItem "rhs_acc_tgpa";
_unit addPrimaryWeaponItem "rhs_acc_pkas";
_unit addWeapon "rhs_weap_pya";
_unit addWeapon "AGM_Vector";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_fadak_1";
_unit linkItem "itemGps";
