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
for "_i" from 1 to 2 do {player addItemToUniform "rhs_45Rnd_545X39_AK_Green";};
player addVest "rhs_6b23_digi_6sh92_vog";
for "_i" from 1 to 5 do {player addItemToVest "ACE_morphine";};
player addItemToVest "ACE_epinephrine";
for "_i" from 1 to 7 do {player addItemToVest "rhs_45Rnd_545X39_AK_Green";};
player addItemToVest "SmokeShell";
player addHeadgear "rhs_6b27m_digi";

comment "Add weapons";
player addWeapon "rhs_weap_ak74m_2mag";
player addPrimaryWeaponItem "rhs_acc_dtk";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_fadak_2";
player linkItem "NVGoggles_INDEP";