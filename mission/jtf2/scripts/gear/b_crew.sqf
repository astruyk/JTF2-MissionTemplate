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
player addItemToVest "ACE_MapTools";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 5 do {player addItemToVest "30Rnd_9x21_Mag";};
for "_i" from 1 to 4 do {player addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 3 do {player addItemToVest "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_epinephrine";};
for "_i" from 1 to 1 do {player addItemToVest "ACE_tourniquet";};
player addItemToVest "ACE_EarPlugs";
player addBackpack "tf_rt1523g_black";
player addItemToBackpack "ToolKit";
player addHeadgear "H_HelmetCrew_B";

comment "Add weapons";
player addWeapon "SMG_02_F";
player addWeapon "ACE_Vector";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_1";
player linkItem "itemGps";
