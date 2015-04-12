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
for "_i" from 1 to 3 do {player addItemToUniform "rhs_30Rnd_545x39_7n22_AK";};
for "_i" from 1 to 1 do {player addItemToVest "rhs_mag_9x19_17";};
player addVest "rhs_6b23_digi_rifleman";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 7 do {player addItemToVest "rhs_30Rnd_545x39_7n22_AK";};
for "_i" from 1 to 1 do {player addItemToVest "rhs_mag_9x19_17";};
player addBackpack "tf_mr3000_rhs";
for "_i" from 1 to 12 do {player addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 6 do {player addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {player addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {player addItemToBackpack "AGM_Bloodbag";};
for "_i" from 1 to 5 do {player addItemToBackpack "rhs_10Rnd_762x54mmR_7N1";};
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_mag_9x19_17";};
player addItemToBackpack "rhs_acc_1pn93_1";
player addHeadgear "rhs_Booniehat_digi";

comment "Add weapons";
player addWeapon "rhs_weap_ak74m_desert";
player addPrimaryWeaponItem "rhs_acc_tgpa";
player addPrimaryWeaponItem "rhs_acc_pkas";
player addWeapon "rhs_weap_pya";
player addWeapon "AGM_Vector";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak_1";
player linkItem "itemGps";
