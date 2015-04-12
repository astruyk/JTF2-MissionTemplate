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
player addItemToVest "AGM_DefusalKit";
player addItemToVest "AGM_M26_Clacker";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 8 do {player addItemToVest "rhs_30Rnd_545x39_7n10_AK";};
player addBackpack "B_Kitbag_rgr";
for "_i" from 1 to 10 do {player addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 4 do {player addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {player addItemToBackpack "AGM_Epipen";};
player addItemToBackpack "AGM_EarBuds";
player addItemToBackpack "AGM_Bloodbag";
player addItemToBackpack "MineDetector";
for "_i" from 1 to 4 do {player addItemToBackpack "DemoCharge_Remote_Mag";};
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_mine_pmn2";};
player addItemToBackpack "SatchelCharge_Remote_Mag";
player addHeadgear "rhs_6b28_flora_ess";

comment "Add weapons";
player addWeapon "rhs_weap_ak74m_2mag";
player addPrimaryWeaponItem "rhs_acc_pkas";
player addWeapon "Binocular";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak_1";
