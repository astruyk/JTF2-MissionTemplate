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
player addItemToUniform "rhs_100Rnd_762x54mmR";
player addVest "rhs_6b23_6sh92";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 3 do {player addItemToVest "rhs_100Rnd_762x54mmR";};
player addBackpack "B_Kitbag_sgg";
for "_i" from 1 to 12 do {player addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 5 do {player addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {player addItemToBackpack "AGM_Epipen";};
player addItemToBackpack "AGM_Bloodbag";
player addItemToBackpack "AGM_EarBuds";
player addItemToBackpack "AGM_SpareBarrel";
for "_i" from 1 to 6 do {player addItemToBackpack "rhs_100Rnd_762x54mmR";};
player addHeadgear "rhs_6b27m_ess";

comment "Add weapons";
player addWeapon "rhs_weap_pkp";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak_1";
