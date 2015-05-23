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
for "_i" from 1 to 2 do {player addItemToUniform "rhsusf_20Rnd_762x51_m993_Mag";};
player addItemToUniform "AGM_EarBuds";
player addVest "CFB_TW_Vest_Tactical";
player addItemToVest "ACE_Kestrel4500";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 6 do {player addItemToVest "rhsusf_20Rnd_762x51_m993_Mag";};
player addBackpack "CFB_TW_Backpack_Assault";
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 1 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 8 do {player addItemToBackpack "rhsusf_20Rnd_762x51_m993_Mag";};
player addItemToBackpack "rhsusf_acc_compm4";
player addHeadgear "CFB_TW_Boonie";

comment "Add weapons";
player addWeapon "rhs_weap_m14ebrri";
player addPrimaryWeaponItem "rhsusf_acc_ACOG2";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_1";
