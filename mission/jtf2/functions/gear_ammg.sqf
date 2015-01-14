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
_unit forceAddUniform "CFB_TW_Uniform";
for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_unit addVest "CFB_TW_Vest_PlateCarrier1";
for "_i" from 1 to 5 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 5 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 10 do {_unit addItemToVest "AGM_Bandage";};
for "_i" from 1 to 4 do {_unit addItemToVest "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToVest "AGM_Epipen";};
_unit addItemToVest "AGM_Bloodbag";
_unit addItemToVest "AGM_EarBuds";
_unit addBackpack "CFB_TW_Backpack_Kitbag";
for "_i" from 1 to 4 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51";};
for "_i" from 1 to 7 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
_unit addHeadgear "CFB_TW_Helmet_ECH";

comment "Add weapons";
_unit addWeapon "rhs_weap_m16a4_carryhandle";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_1";
