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
player addVest "rhs_6b23_6sh92";
for "_i" from 1 to 5 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 5 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 5 do {player addItemToVest "rhs_30Rnd_545x39_7n10_AK";};
for "_i" from 1 to 10 do {player addItemToVest "AGM_Bandage";};
for "_i" from 1 to 4 do {player addItemToVest "AGM_Morphine";};
for "_i" from 1 to 2 do {player addItemToVest "AGM_Epipen";};
player addItemToVest "AGM_Bloodbag";
player addItemToVest "AGM_EarBuds";
player addBackpack "B_Kitbag_sgg";
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_100Rnd_762x54mmR";};
for "_i" from 1 to 12 do {player addItemToBackpack "rhs_30Rnd_545x39_7n10_AK";};
for "_i" from 1 to 6 do {player addItemToBackpack "rhs_VOG25";};
player addHeadgear "rhs_6b27m_ess";

comment "Add weapons";
player addWeapon "rhs_weap_ak74m";
player addPrimaryWeaponItem "rhs_acc_pkas";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_1";
