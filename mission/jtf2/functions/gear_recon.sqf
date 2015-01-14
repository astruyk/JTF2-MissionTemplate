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
_unit forceAddUniform "U_BG_Guerilla2_1";
_unit addItemToUniform "rhsusf_5Rnd_300winmag_xm2010";
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
_unit addItemToUniform "AGM_EarBuds";
_unit addVest "CFB_TW_Vest_PlateCarrier1";
_unit addItemToVest "AGM_ItemKestrel";
for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 6 do {_unit addItemToVest "rhsusf_5Rnd_300winmag_xm2010";};
for "_i" from 1 to 4 do {_unit addItemToVest "16Rnd_9x21_Mag";};
_unit addBackpack "tf_rt1523g_big_bwmod";
for "_i" from 1 to 12 do {_unit addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Bloodbag";};
for "_i" from 1 to 7 do {_unit addItemToBackpack "rhsusf_5Rnd_300winmag_xm2010";};
_unit addItemToBackpack "rhsusf_acc_compm4";
_unit addHeadgear "CFB_TW_Boonie";

comment "Add weapons";
_unit addWeapon "rhs_weap_XM2010_sa";
_unit addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2";
_unit addPrimaryWeaponItem "rhsusf_acc_M2010S";
_unit addWeapon "hgun_P07_F";
_unit addWeapon "AGM_Vector";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_1";
_unit linkItem "itemGps";
