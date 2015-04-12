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
for "_i" from 1 to 3 do {player addItemToUniform "rhs_30Rnd_545x39_7n10_AK";};
player addItemToUniform "AGM_EarBuds";
player addVest "rhs_6b23_medic";
for "_i" from 1 to 5 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 10 do {player addItemToVest "rhs_30Rnd_545x39_7n10_AK";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellYellow";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellBlue";};
player addBackpack "B_Kitbag_sgg";
for "_i" from 1 to 15 do {player addItemToBackpack "AGM_Bloodbag";};
for "_i" from 1 to 25 do {player addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 20 do {player addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 15 do {player addItemToBackpack "AGM_Epipen";};
player addHeadgear "rhs_6b28_green";

comment "Add weapons";
player addWeapon "rhs_weap_ak74m_2mag_camo";
player addPrimaryWeaponItem "rhs_acc_pkas";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak_1";
