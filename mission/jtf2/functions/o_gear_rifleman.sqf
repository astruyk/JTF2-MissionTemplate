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
_unit addVest "rhs_6b23_6sh92";
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_rgd5";};
for "_i" from 1 to 8 do {_unit addItemToVest "rhs_30Rnd_545x39_7n10_AK";};
_unit addBackpack "rhs_sidor";
for "_i" from 1 to 12 do {_unit addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Epipen";};
_unit addItemToBackpack "AGM_EarBuds";
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Bloodbag";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_30Rnd_545x39_7n10_AK";};
_unit addHeadgear "rhs_tsh4_ess";

comment "Add weapons";
_unit addWeapon "rhs_weap_ak74m_2mag_camo";
_unit addPrimaryWeaponItem "rhs_acc_pkas";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_fadak_1";
