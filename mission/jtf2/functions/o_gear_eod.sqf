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
_unit addItemToVest "AGM_DefusalKit";
_unit addItemToVest "AGM_M26_Clacker";
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 8 do {_unit addItemToVest "rhs_30Rnd_545x39_7n10_AK";};
_unit addBackpack "B_Kitbag_rgr";
for "_i" from 1 to 10 do {_unit addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Epipen";};
_unit addItemToBackpack "AGM_EarBuds";
_unit addItemToBackpack "AGM_Bloodbag";
_unit addItemToBackpack "MineDetector";
for "_i" from 1 to 4 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mine_pmn2";};
_unit addItemToBackpack "SatchelCharge_Remote_Mag";
_unit addHeadgear "rhs_6b28_flora_ess";

comment "Add weapons";
_unit addWeapon "rhs_weap_ak74m_2mag";
_unit addPrimaryWeaponItem "rhs_acc_pkas";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_fadak_1";
