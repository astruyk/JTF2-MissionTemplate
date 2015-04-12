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
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_rgd5";};
for "_i" from 1 to 8 do {player addItemToVest "rhs_30Rnd_545x39_7n10_AK";};
player addBackpack "rhs_sidor";
for "_i" from 1 to 12 do {player addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 4 do {player addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {player addItemToBackpack "AGM_Epipen";};
player addItemToBackpack "AGM_EarBuds";
for "_i" from 1 to 2 do {player addItemToBackpack "AGM_Bloodbag";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_30Rnd_545x39_7n10_AK";};
player addHeadgear "rhs_tsh4_ess";

comment "Add weapons";
player addWeapon "rhs_weap_ak74m_2mag_camo";
player addPrimaryWeaponItem "rhs_acc_pkas";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak_1";
