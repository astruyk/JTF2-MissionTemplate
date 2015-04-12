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
player addItemToUniform "AGM_EarBuds";
player addVest "CFB_TW_Vest_PlateCarrier2";
for "_i" from 1 to 8 do {player addItemToVest "AGM_Bandage";};
for "_i" from 1 to 4 do {player addItemToVest "AGM_Morphine";};
for "_i" from 1 to 2 do {player addItemToVest "AGM_Epipen";};
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_100Rnd_762x51";};
player addBackpack "B_Carryall_oli";
player addItemToBackpack "AGM_SpareBarrel";
for "_i" from 1 to 5 do {player addItemToBackpack "rhsusf_100Rnd_762x51";};
player addHeadgear "CFB_TW_Helmet_ECH";

comment "Add weapons";
player addWeapon "rhs_weap_m240B";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_2";
