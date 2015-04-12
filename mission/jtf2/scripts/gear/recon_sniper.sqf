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
player forceAddUniform "U_B_GhillieSuit";
player addItemToUniform "AGM_EarBuds";
player addItemToUniform "AGM_ItemKestrel";
for "_i" from 1 to 4 do {player addItemToUniform "AGM_Bandage";};
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToUniform "9Rnd_45ACP_Mag";};
player addItemToUniform "7Rnd_408_Mag";
player addVest "CFB_TW_Vest_Tactical";
for "_i" from 1 to 3 do {player addItemToVest "AGM_Morphine";};
player addItemToVest "AGM_Epipen";
for "_i" from 1 to 6 do {player addItemToVest "7Rnd_408_Mag";};
for "_i" from 1 to 2 do {player addItemToVest "9Rnd_45ACP_Mag";};

comment "Add weapons";
player addWeapon "srifle_LRR_camo_F";
player addPrimaryWeaponItem "optic_SOS";
player addWeapon "hgun_ACPC2_F";
player addHandgunItem "muzzle_snds_acp";
player addWeapon "AGM_Vector";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_1";
player linkItem "itemGps";
