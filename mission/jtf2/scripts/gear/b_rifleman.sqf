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
for "_i" from 1 to 3 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 8 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
player addBackpack "CFB_TW_Backpack_Assault";
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 1 do {player addItemToBackpack "ACE_tourniquet";};
player addItemToBackpack "ACE_EarPlugs";
player addHeadgear "CFB_TW_Helmet";

comment "Add weapons";
player addWeapon "rhs_weap_m16a4_carryhandle";
player addPrimaryWeaponItem "rhsusf_acc_compm4";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_1";
