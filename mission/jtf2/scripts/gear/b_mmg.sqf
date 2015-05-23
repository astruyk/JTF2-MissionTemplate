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
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShellGreen";};
player addItemToUniform "ACE_EarPlugs";
player addVest "CFB_TW_Vest_PlateCarrier2";
for "_i" from 1 to 4 do {player addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 3 do {player addItemToVest "ACE_quikclot";};
for "_i" from 1 to 1 do {player addItemToVest "ACE_morphine";};
for "_i" from 1 to 1 do {player addItemToVest "ACE_epinephrine";};
for "_i" from 1 to 1 do {player addItemToVest "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_100Rnd_762x51";};
player addBackpack "B_Carryall_oli";
player addItemToBackpack "ACE_SpareBarrel";
for "_i" from 1 to 5 do {player addItemToBackpack "rhsusf_100Rnd_762x51";};
player addHeadgear "CFB_TW_Helmet_ECH";

comment "Add weapons";
player addWeapon "rhs_weap_m240B";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_2";
