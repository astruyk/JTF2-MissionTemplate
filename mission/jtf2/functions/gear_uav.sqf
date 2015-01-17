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
_unit forceAddUniform "CFB_TW_Tshirt_Uniform";
for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
_unit addItemToUniform "AGM_EarBuds";
_unit addVest "CFB_TW_Vest_Tactical";
_unit addItemToVest "AGM_MapTools";
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 5 do {_unit addItemToVest "AGM_Bandage";};
for "_i" from 1 to 2 do {_unit addItemToVest "AGM_Morphine";};
for "_i" from 1 to 1 do {_unit addItemToVest "AGM_Epipen";};
for "_i" from 1 to 2 do {_unit addItemToVest "AGM_UAVBattery";};
_unit addBackpack "B_UAV_01_backpack_F";
_unit addHeadgear "CFB_TW_Patrol";
_unit addGoggles "G_Goggles_VR";

comment "Add weapons";
_unit addWeapon "rhs_weap_m4";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
_unit addWeapon "AGM_Vector";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_1";
_unit linkItem "B_UavTerminal";
