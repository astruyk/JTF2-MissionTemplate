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
for "_i" from 1 to 5 do {player addItemToUniform "rhs_VOG25";};
for "_i" from 1 to 2 do {player addItemToUniform "rhs_VG40OP_white";};
player addItemToUniform "rhs_VG40OP_green";
for "_i" from 1 to 2 do {player addItemToUniform "rhs_VG40OP_red";};
player addVest "rhs_6b23_digi_6sh92_vog";
for "_i" from 1 to 9 do {player addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToVest "ACE_morphine";};
player addItemToVest "ACE_epinephrine";
player addItemToVest "ACE_EarPlugs";
for "_i" from 1 to 9 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
player addItemToVest "rhs_VOG25";
player addHeadgear "rhs_6b27m_digi";

comment "Add weapons";
player addWeapon "rhs_weap_ak74m_gp25";
player addPrimaryWeaponItem "rhs_acc_dtk";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak_2";
player linkItem "NVGoggles_INDEP";