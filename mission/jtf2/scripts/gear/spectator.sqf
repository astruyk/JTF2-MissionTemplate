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
player forceAddUniform "CFB_TW_Tshirt_Uniform";
player addItemToUniform "AGM_EarBuds";
for "_i" from 1 to 3 do {player addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
player addVest "CFB_TW_Vest_Tactical";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 8 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 1 do {player addItemToVest "9Rnd_45ACP_Mag";};
player addBackpack "tf_rt1523g_big_bwmod";
for "_i" from 1 to 12 do {player addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 6 do {player addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {player addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {player addItemToBackpack "AGM_Bloodbag";};
for "_i" from 1 to 5 do {player addItemToBackpack "7Rnd_408_Mag";};
for "_i" from 1 to 5 do {player addItemToBackpack "9Rnd_45ACP_Mag";};
player addItemToBackpack "rhsusf_acc_compm4";
player addHeadgear "CFB_TW_Boonie";

comment "Add weapons";
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "muzzle_snds_M";
player addPrimaryWeaponItem "acc_pointer_IR";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "hgun_ACPC2_F";
player addHandgunItem "muzzle_snds_acp";
player addWeapon "AGM_Vector";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_1";
player linkItem "itemGps";
