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
player addItemToUniform "AGM_EarBuds";
for "_i" from 1 to 3 do {player addItemToUniform "rhs_30Rnd_545x39_7n10_AK";};
player addVest "rhs_6b23_6sh92_radio";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 8 do {player addItemToVest "rhs_30Rnd_545x39_7n10_AK";};
for "_i" from 1 to 12 do {player addItemToVest "AGM_Bandage";};
for "_i" from 1 to 4 do {player addItemToVest "AGM_Morphine";};
for "_i" from 1 to 2 do {player addItemToVest "AGM_Epipen";};
player addItemToVest "AGM_Bloodbag";
player addBackpack "rhs_rpg";
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_rpg7_PG7VL_mag";};
player addItemToBackpack "rhs_acc_pgo7v";
player addHeadgear "rhs_6b28_flora_ess";

comment "Add weapons";
player addWeapon "rhs_weap_ak74m_camo";
player addPrimaryWeaponItem "rhs_acc_pkas";
player addWeapon "rhs_weap_rpg7";


comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak_1";

