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
player forceAddUniform "CFB_RCAF_Coveralls_Sage";
for "_i" from 1 to 3 do {player addItemToUniform "30Rnd_9x21_Mag";};
player addVest "V_TacVest_oli";
player addItemToVest "AGM_EarBuds";
player addItemToVest "AGM_MapTools";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 5 do {player addItemToVest "30Rnd_9x21_Mag";};
for "_i" from 1 to 5 do {player addItemToVest "AGM_Morphine";};
for "_i" from 1 to 2 do {player addItemToVest "AGM_Epipen";};
for "_i" from 1 to 7 do {player addItemToVest "AGM_Bandage";};
player addBackpack "tf_rt1523g_black";
player addItemToBackpack "ToolKit";
player addHeadgear "H_HelmetCrew_B";

comment "Add weapons";
player addWeapon "SMG_02_F";
player addWeapon "AGM_Vector";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_1";
player linkItem "itemGps";
