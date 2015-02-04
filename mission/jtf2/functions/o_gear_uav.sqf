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
_unit addItemToUniform "AGM_EarBuds";
_unit addVest "rhs_6b23_6sh92_radio";
_unit addItemToVest "AGM_MapTools";
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_545x39_7n10_AK";};
for "_i" from 1 to 5 do {_unit addItemToVest "AGM_Bandage";};
for "_i" from 1 to 2 do {_unit addItemToVest "AGM_Morphine";};
for "_i" from 1 to 1 do {_unit addItemToVest "AGM_Epipen";};
for "_i" from 1 to 2 do {_unit addItemToVest "AGM_UAVBattery";};
_unit addBackpack "O_UAV_01_backpack_F";
_unit addHeadgear "rhs_6b28_ess_bala";
_unit addGoggles "G_Goggles_VR";

comment "Add weapons";
_unit addWeapon "rhs_weap_ak74m_2mag";
_unit addPrimaryWeaponItem "rhs_acc_pkas";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_fadak_1";
_unit linkItem "O_UavTerminal";
