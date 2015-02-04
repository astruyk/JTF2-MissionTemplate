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
_unit forceAddUniform "rhs_uniform_flora";
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
_unit addItemToUniform "AGM_EarBuds";
_unit addVest "rhs_6b23_6sh92";
for "_i" from 1 to 8 do {_unit addItemToVest "AGM_Bandage";};
for "_i" from 1 to 4 do {_unit addItemToVest "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToVest "AGM_Epipen";};
_unit addItemToVest "rhs_100Rnd_762x54mmR";
_unit addBackpack "B_Kitbag_sgg";
_unit addItemToBackpack "AGM_SpareBarrel";
for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};
_unit addHeadgear "rhs_6b28_green_ess";

comment "Add weapons";
_unit addWeapon "rhs_weap_pkp";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_fadak_1";
