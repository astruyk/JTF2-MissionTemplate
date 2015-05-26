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
player forceAddUniform "CFB_TW_Rolled_Uniform";
for "_i" from 1 to 3 do {player addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
player addItemToUniform "ACE_EarPlugs";
player addVest "CFB_TW_Vest_PlateCarrier1";
for "_i" from 1 to 5 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 10 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellYellow";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellBlue";};
player addBackpack "CFB_TW_Backpack_Kitbag";
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 7 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_atropine";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_personalAidKit";};
player addHeadgear "CFB_TW_Boonie";

comment "Add weapons";
player addWeapon "rhs_weap_m4";
player addPrimaryWeaponItem "rhsusf_acc_compm4";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_1";
