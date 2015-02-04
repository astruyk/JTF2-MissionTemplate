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
_unit addItemToUniform "AGM_ItemKestrel";
for "_i" from 1 to 4 do {_unit addItemToUniform "AGM_Bandage";};
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_9x19_17";};
_unit addItemToUniform "rhs_10Rnd_762x54mmR_7N1";
_unit addVest "rhs_6b23_digi_sniper";
for "_i" from 1 to 3 do {_unit addItemToVest "AGM_Morphine";};
_unit addItemToVest "AGM_Epipen";
for "_i" from 1 to 10 do {_unit addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_9x19_17";};
for "_i" from 1 to 3 do {_unit addItemToUniform "SmokeShell";};
_unit addHeadgear "rhs_Booniehat_digi";

comment "Add weapons";
_unit addWeapon "rhs_weap_svdp_wd";
_unit addPrimaryWeaponItem "rhs_acc_pso1m2";
_unit addWeapon "rhs_weap_pya";
_unit addWeapon "AGM_Vector";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_fadak_1";
_unit linkItem "itemGps";
