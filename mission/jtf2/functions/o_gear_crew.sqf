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
_unit forceAddUniform "rhs_uniform_vdv_mflora";
for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_30Rnd_545x39_AK";};
_unit addVest "rhs_6b23_ML_crew";
_unit addItemToVest "AGM_EarBuds";
_unit addItemToVest "AGM_MapTools";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_545x39_AK";};
for "_i" from 1 to 5 do {_unit addItemToVest "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToVest "AGM_Epipen";};
for "_i" from 1 to 7 do {_unit addItemToVest "AGM_Bandage";};
_unit addBackpack "tf_mr3000_rhs";
_unit addItemToBackpack "ToolKit";
_unit addHeadgear "rhs_tsh4_ess";

comment "Add weapons";
_unit addWeapon "rhs_weap_ak74m_folded";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_fadak_1";
_unit linkItem "itemGps";
