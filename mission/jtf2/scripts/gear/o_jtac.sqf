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
for "_i" from 1 to 2 do {player addItemToUniform "rhs_VOG25";};
for "_i" from 1 to 2 do {player addItemToUniform "rhs_30Rnd_545x39_7n10_AK";};
player addItemToUniform "AGM_EarBuds";
player addVest "rhs_6b23_6sh92_radio";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 4 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_9x19_17";};
for "_i" from 1 to 3 do {player addItemToVest "rhs_GRD40_white";};
for "_i" from 1 to 8 do {player addItemToUniform "rhs_30Rnd_545x39_7n10_AK";};
player addBackpack "tf_mr3000_rhs";
for "_i" from 1 to 12 do {player addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 6 do {player addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {player addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {player addItemToBackpack "AGM_Bloodbag";};
for "_i" from 1 to 10 do {player addItemToBackpack "rhs_GRD40_red";};
for "_i" from 1 to 10 do {player addItemToBackpack "rhs_GRD40_green";};
for "_i" from 1 to 5 do {player addItemToBackpack "rhs_VOG25";};
for "_i" from 1 to 4 do {player addItemToUniform "rhs_30Rnd_545x39_7n10_AK";};
player addHeadgear "rhs_fieldcap";

comment "Add weapons";
player addWeapon "rhs_weap_ak74m_gp25";
player addWeapon "rhs_weap_pya";
player addWeapon "AGM_Vector";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak_1";
