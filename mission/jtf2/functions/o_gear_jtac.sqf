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
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_VOG25";};
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_545x39_7n10_AK";};
_unit addItemToUniform "AGM_EarBuds";
_unit addVest "rhs_6b23_6sh92_radio";
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_9x19_17";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhs_GRD40_white";};
for "_i" from 1 to 8 do {_unit addItemToUniform "rhs_30Rnd_545x39_7n10_AK";};
_unit addBackpack "tf_mr3000_rhs";
for "_i" from 1 to 12 do {_unit addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Bloodbag";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "rhs_GRD40_red";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "rhs_GRD40_green";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_VOG25";};
for "_i" from 1 to 4 do {_unit addItemToUniform "rhs_30Rnd_545x39_7n10_AK";};
_unit addHeadgear "rhs_fieldcap";

comment "Add weapons";
_unit addWeapon "rhs_weap_ak74m_gp25";
_unit addWeapon "rhs_weap_pya";
_unit addWeapon "AGM_Vector";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_fadak_1";
