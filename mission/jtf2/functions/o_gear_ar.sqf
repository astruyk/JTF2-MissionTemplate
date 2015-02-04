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
_unit addItemToUniform "rhs_100Rnd_762x54mmR";
_unit addVest "rhs_6b23_6sh92";
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhs_100Rnd_762x54mmR";};
_unit addBackpack "B_Kitbag_sgg";
for "_i" from 1 to 12 do {_unit addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Epipen";};
_unit addItemToBackpack "AGM_Bloodbag";
_unit addItemToBackpack "AGM_EarBuds";
_unit addItemToBackpack "AGM_SpareBarrel";
for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};
_unit addHeadgear "rhs_6b27m_ess";

comment "Add weapons";
_unit addWeapon "rhs_weap_pkp";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_fadak_1";
