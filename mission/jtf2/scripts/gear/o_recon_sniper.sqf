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
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 3 do {player addItemToUniform "rhs_10Rnd_762x54mmR_7N1";};
player addVest "rhs_6b23_digi_6sh92_vog";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellRed";};
for "_i" from 1 to 11 do {player addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
player addHeadgear "rhs_Booniehat_digi";

comment "Add weapons";
player addWeapon "rhs_weap_svdp_npz";
player addPrimaryWeaponItem "rhs_acc_tgpv";
player addPrimaryWeaponItem "optic_AMS";
player addWeapon "Binocular";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_fadak_2";
player linkItem "NVGoggles_INDEP";