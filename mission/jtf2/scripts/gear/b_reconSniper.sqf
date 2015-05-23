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
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_Kestrel4500";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToUniform "9Rnd_45ACP_Mag";};
player addItemToUniform "7Rnd_408_Mag";
player addVest "CFB_TW_Vest_Tactical";
for "_i" from 1 to 2 do {player addItemToVest "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_epinephrine";};
for "_i" from 1 to 6 do {player addItemToVest "7Rnd_408_Mag";};
for "_i" from 1 to 2 do {player addItemToVest "9Rnd_45ACP_Mag";};

comment "Add weapons";
player addWeapon "srifle_LRR_camo_F";
player addPrimaryWeaponItem "optic_SOS";
player addWeapon "hgun_ACPC2_F";
player addHandgunItem "muzzle_snds_acp";
player addWeapon "ACE_Vector";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_1";
player linkItem "itemGps";
