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
player forceAddUniform "rhs_uniform_flora";
player addItemToUniform "AGM_MapTools";
for "_i" from 1 to 3 do {player addItemToUniform "rhs_30Rnd_545x39_AK_green";};
player addVest "rhs_vest_commander";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 3 do {player addItemToVest "1Rnd_SmokeGreen_Grenade_shell";};
for "_i" from 1 to 1 do {player addItemToVest "rhs_30Rnd_545x39_AK_green";};
player addBackpack "tf_mr3000_rhs";
for "_i" from 1 to 10 do {player addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 4 do {player addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {player addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 8 do {player addItemToVest "rhs_30Rnd_545x39_AK_green";};
player addItemToBackpack "AGM_EarBuds";
player addItemToBackpack "AGM_Bloodbag";

for "_i" from 1 to 3 do {player addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 3 do {player addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";};
for "_i" from 1 to 3 do {player addItemToBackpack "1Rnd_SmokeOrange_Grenade_shell";};
for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_SmokePurple_Grenade_shell";};
player addHeadgear "rhs_fieldcap";

comment "Add weapons";
player addWeapon "rhs_weap_ak74m_folded";
player addPrimaryWeaponItem "rhs_acc_1p63";
player addWeapon "AGM_Vector";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak_1";
player linkItem "itemGps";
