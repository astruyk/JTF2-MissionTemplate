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
for "_i" from 1 to 2 do {player addItemToUniform "rhs_30Rnd_545x39_7n22_AK";};
player addItemToUniform "AGM_EarBuds";
player addVest "rhs_6b23_sniper";
player addItemToVest "AGM_ItemKestrel";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 8 do {player addItemToVest "rhs_30Rnd_545x39_7n22_AK";};
player addBackpack "rhs_assault_umbts";
for "_i" from 1 to 12 do {player addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 4 do {player addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {player addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {player addItemToBackpack "AGM_Bloodbag";};
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_30Rnd_545x39_7n22_AK";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellRed";};
player addHeadgear "rhs_Booniehat_flora";

comment "Add weapons";
player addWeapon "rhs_weap_ak74m_desert";
player addPrimaryWeaponItem "rhs_acc_1p29";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak_1";
