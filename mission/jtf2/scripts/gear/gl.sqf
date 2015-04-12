comment "Exported from Arsenal by Anton WO.";

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "CFB_TW_Uniform";
for "_i" from 1 to 3 do {player addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
player addVest "CFB_TW_Vest_PlateCarrier2";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 11 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 6 do {player addItemToVest "rhs_mag_M433_HEDP";};
player addBackpack "CFB_TW_Backpack_Kitbag";
for "_i" from 1 to 15 do {player addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 6 do {player addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {player addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {player addItemToBackpack "AGM_Bloodbag";};
player addItemToBackpack "AGM_EarBuds";
for "_i" from 1 to 25 do {player addItemToBackpack "rhs_mag_M433_HEDP";};
for "_i" from 1 to 5 do {player addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 5 do {player addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
for "_i" from 1 to 5 do {player addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
player addHeadgear "CFB_TW_Helmet";

comment "Add weapons";
player addWeapon "rhs_m4_m320";
player addPrimaryWeaponItem "rhsusf_acc_compm4";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_1";
