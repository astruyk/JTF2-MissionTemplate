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
for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_30Rnd_545x39_7n10_AK";};
_unit addVest "rhs_6b23_6sh92_vog";
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 11 do {_unit addItemToVest "rhs_30Rnd_545x39_7n10_AK";};
for "_i" from 1 to 6 do {_unit addItemToVest "rhs_VOG25";};
_unit addBackpack "rhs_sidor";
for "_i" from 1 to 15 do {_unit addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Bloodbag";};
_unit addItemToBackpack "AGM_EarBuds";
for "_i" from 1 to 25 do {_unit addItemToBackpack "rhs_VOG25";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_GRD40_red";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_GRD40_green";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_GRD40_white";};
_unit addHeadgear "rhs_6b27m_bala";

comment "Add weapons";
_unit addWeapon "rhs_weap_ak74m_gp25";
_unit addPrimaryWeaponItem "rhs_acc_pkas";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_fadak_1";
