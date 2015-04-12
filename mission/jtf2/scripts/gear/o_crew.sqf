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
player forceAddUniform "rhs_uniform_vdv_mflora";
for "_i" from 1 to 3 do {player addItemToUniform "rhs_30Rnd_545x39_AK";};
player addVest "rhs_6b23_ML_crew";
player addItemToVest "AGM_EarBuds";
player addItemToVest "AGM_MapTools";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 5 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
for "_i" from 1 to 5 do {player addItemToVest "AGM_Morphine";};
for "_i" from 1 to 2 do {player addItemToVest "AGM_Epipen";};
for "_i" from 1 to 7 do {player addItemToVest "AGM_Bandage";};
player addBackpack "tf_mr3000_rhs";
player addItemToBackpack "ToolKit";
player addHeadgear "rhs_tsh4_ess";

comment "Add weapons";
player addWeapon "rhs_weap_ak74m_folded";
player addWeapon "Binocular";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak_1";
player linkItem "itemGps";
