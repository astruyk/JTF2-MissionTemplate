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
player forceAddUniform "rhs_uniform_df15";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_epinephrine";
player addVest "rhs_vydra_3m";
for "_i" from 1 to 6 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
player addItemToVest "SmokeShell";
player addItemToVest "SmokeShellGreen";
player addItemToVest "SmokeShellRed";
player addBackpack "B_Parachute";
player addHeadgear "rhs_zsh7a";

comment "Add weapons";
player addWeapon "rhs_weap_ak74m_folded";
player addPrimaryWeaponItem "rhs_acc_dtk";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_fadak_1";
player linkItem "ItemGPS";
player linkItem "NVGoggles_INDEP";