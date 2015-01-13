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
_unit addItemToUniform "AGM_MapTools";
for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_unit addVest "CFB_TW_Vest_Tactical";
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 3 do {_unit addItemToVest "1Rnd_SmokeGreen_Grenade_shell";};
_unit addBackpack "tf_rt1523g_green";
for "_i" from 1 to 10 do {_unit addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Epipen";};
_unit addItemToBackpack "AGM_EarBuds";
_unit addItemToBackpack "AGM_Bloodbag";

for "_i" from 1 to 3 do {_unit addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "1Rnd_SmokeOrange_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokePurple_Grenade_shell";};
_unit addHeadgear "CFB_TW_Patrol";

comment "Add weapons";
_unit addWeapon "rhs_m4_m320";
_unit addWeapon "AGM_Vector";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_1";
