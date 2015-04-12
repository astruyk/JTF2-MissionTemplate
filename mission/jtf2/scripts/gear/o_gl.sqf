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
player addVest "rhs_6b23_6sh92_vog";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 11 do {player addItemToVest "rhs_30Rnd_545x39_7n10_AK";};
for "_i" from 1 to 6 do {player addItemToVest "rhs_VOG25";};
player addBackpack "rhs_sidor";
for "_i" from 1 to 15 do {player addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 6 do {player addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {player addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {player addItemToBackpack "AGM_Bloodbag";};
player addItemToBackpack "AGM_EarBuds";
for "_i" from 1 to 25 do {player addItemToBackpack "rhs_VOG25";};
for "_i" from 1 to 5 do {player addItemToBackpack "rhs_GRD40_red";};
for "_i" from 1 to 5 do {player addItemToBackpack "rhs_GRD40_green";};
for "_i" from 1 to 5 do {player addItemToBackpack "rhs_GRD40_white";};
player addHeadgear "rhs_6b27m_bala";

comment "Add weapons";
player addWeapon "rhs_weap_ak74m_gp25";
player addPrimaryWeaponItem "rhs_acc_pkas";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak_1";
