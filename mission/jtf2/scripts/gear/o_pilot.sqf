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
player forceAddUniform "rhs_uniform_df15";
for "_i" from 1 to 2 do {player addItemToUniform "rhs_30Rnd_545x39_AK";};
player addVest "V_TacVest_oli";
player addItemToVest "AGM_EarBuds";
player addItemToVest "AGM_MapTools";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 5 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
player addBackpack "tf_mr3000_rhs";
for "_i" from 1 to 7 do {player addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {player addItemToBackpack "AGM_Epipen";};
player addItemToBackpack "AGM_Bloodbag";
for "_i" from 1 to 7 do {player addItemToBackpack "AGM_Bandage";};
player addHeadgear "rhs_zsh7a_mike";

comment "Add weapons";
player addWeapon "rhs_weap_ak74m_folded";
player addWeapon "Binocular";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak_1";
player linkItem "itemGps";
