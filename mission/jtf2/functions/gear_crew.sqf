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
_unit forceAddUniform "CFB_RCAF_Coveralls_Sage";
for "_i" from 1 to 4 do {_unit addItemToUniform "30Rnd_9x21_Mag";};
_unit addVest "CFB_TW_Vest_Tactical";
_unit addItemToVest "AGM_EarBuds";
_unit addItemToVest "AGM_MapTools";
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_9x21_Mag";};
_unit addItemToVest "HandGrenade";
_unit addBackpack "tf_rt1523g_bwmod";
for "_i" from 1 to 5 do {_unit addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Epipen";};
_unit addItemToBackpack "AGM_Bloodbag";
for "_i" from 1 to 7 do {_unit addItemToBackpack "AGM_Bandage";};
_unit addHeadgear "H_PilotHelmetHeli_B";

comment "Add weapons";
_unit addWeapon "SMG_02_F";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_1";
