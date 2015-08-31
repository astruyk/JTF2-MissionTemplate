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
player forceAddUniform "rhs_uniform_emr_patchless";
for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
player addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShell";};
player addItemToUniform "SmokeShellGreen";
player addItemToUniform "SmokeShellRed";
player addItemToUniform "rhs_mag_rgd5";
player addVest "rhs_6b23_digi_6sh92_vog";
player addItemToVest "rhs_mag_rgd5";
for "_i" from 1 to 10 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
player addBackpack "B_UAV_01_backpack_F";
player addHeadgear "rhs_6b27m_digi";

comment "Add weapons";
player addWeapon "rhs_weap_ak74m";
player addPrimaryWeaponItem "rhs_acc_dtk";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak_2";
player linkItem "B_UavTerminal";
player linkItem "NVGoggles_INDEP";