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
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShellGreen";};
player addItemToUniform "AGM_EarBuds";
player addVest "rhs_6b23_6sh92";
for "_i" from 1 to 8 do {player addItemToVest "AGM_Bandage";};
for "_i" from 1 to 4 do {player addItemToVest "AGM_Morphine";};
for "_i" from 1 to 2 do {player addItemToVest "AGM_Epipen";};
player addItemToVest "rhs_100Rnd_762x54mmR";
player addBackpack "B_Kitbag_sgg";
player addItemToBackpack "AGM_SpareBarrel";
for "_i" from 1 to 5 do {player addItemToBackpack "rhs_100Rnd_762x54mmR";};
player addHeadgear "rhs_6b28_green_ess";

comment "Add weapons";
player addWeapon "rhs_weap_pkp";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak_1";
