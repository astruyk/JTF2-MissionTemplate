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
for "_i" from 1 to 4 do {_unit addItemToUniform "rhs_mag_M441_HE";};
_unit addItemToUniform "AGM_EarBuds";
_unit addVest "CFB_TW_Vest_Tactical";
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 8 do {_unit addItemToVest "9Rnd_45ACP_Mag";};
for "_i" from 1 to 7 do {_unit addItemToVest "1Rnd_SmokeBlue_Grenade_shell";};
_unit addBackpack "tf_rt1523g_big_bwmod";
for "_i" from 1 to 12 do {_unit addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Bloodbag";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_mag_M441_HE";};
_unit addHeadgear "CFB_TW_Patrol";

comment "Add weapons";
_unit addWeapon "rhs_weap_M320";
_unit addWeapon "hgun_ACPC2_F";
_unit addWeapon "AGM_Vector";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_1";
