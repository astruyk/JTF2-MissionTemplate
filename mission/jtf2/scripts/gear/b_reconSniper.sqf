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
for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_RangeCard";
player addItemToUniform "ACE_Kestrel4500";
for "_i" from 1 to 2 do {player addItemToUniform "9Rnd_45ACP_Mag";};
player addVest "CFB_TW_Vest_PlateCarrier2";
for "_i" from 1 to 8 do {player addItemToVest "rhsusf_20Rnd_762x51_m993_Mag";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "MiniGrenade";};
player addBackpack "CFB_TW_Backpack_Assault";
player addItemToBackpack "ACE_Clacker";
player addItemToBackpack "ACE_DAGR";
for "_i" from 1 to 2 do {player addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";};
player addItemToBackpack "ACE_HandFlare_Red";
player addItemToBackpack "ACE_HandFlare_Green";
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellBlue";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellPurple";};
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShellGreen";};
player addItemToBackpack "B_IR_Grenade";
for "_i" from 1 to 2 do {player addItemToBackpack "Chemlight_green";};
for "_i" from 1 to 2 do {player addItemToBackpack "Chemlight_blue";};
player addHeadgear "CFB_TW_Helmet_ECH";
player addGoggles "G_Tactical_Clear";

comment "Add weapons";
player addWeapon "rhs_weap_sr25_ec";
player addPrimaryWeaponItem "rhsusf_acc_SR25S";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
player addPrimaryWeaponItem "optic_AMS";
player addPrimaryWeaponItem "bipod_01_F_blk";
player addWeapon "hgun_ACPC2_F";
player addHandgunItem "muzzle_snds_acp";
player addWeapon "Laserdesignator";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152_1";
player linkItem "ItemGPS";
player linkItem "NVGoggles_INDEP";