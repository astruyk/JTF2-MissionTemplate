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
_unit forceAddUniform "rhs_uniform_df15";
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_545x39_AK";};
_unit addVest "V_TacVest_oli";
_unit addItemToVest "AGM_EarBuds";
_unit addItemToVest "AGM_MapTools";
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_545x39_AK";};
_unit addBackpack "tf_mr3000_rhs";
for "_i" from 1 to 7 do {_unit addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Epipen";};
_unit addItemToBackpack "AGM_Bloodbag";
for "_i" from 1 to 7 do {_unit addItemToBackpack "AGM_Bandage";};
_unit addHeadgear "rhs_zsh7a_mike";

comment "Add weapons";
_unit addWeapon "rhs_weap_ak74m_folded";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_fadak_1";
_unit linkItem "itemGps";
