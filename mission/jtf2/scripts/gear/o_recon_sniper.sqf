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
player forceAddUniform "rhs_uniform_msv_emr";
player addItemToUniform "AGM_EarBuds";
player addItemToUniform "AGM_ItemKestrel";
for "_i" from 1 to 4 do {player addItemToUniform "AGM_Bandage";};
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToUniform "rhs_mag_9x19_17";};
player addItemToUniform "rhs_10Rnd_762x54mmR_7N1";
player addVest "rhs_6b23_digi_sniper";
for "_i" from 1 to 3 do {player addItemToVest "AGM_Morphine";};
player addItemToVest "AGM_Epipen";
for "_i" from 1 to 10 do {player addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_9x19_17";};
for "_i" from 1 to 3 do {player addItemToUniform "SmokeShell";};
player addHeadgear "rhs_Booniehat_digi";

comment "Add weapons";
player addWeapon "rhs_weap_svdp_wd";
player addPrimaryWeaponItem "rhs_acc_pso1m2";
player addWeapon "rhs_weap_pya";
player addWeapon "AGM_Vector";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak_1";
player linkItem "itemGps";
