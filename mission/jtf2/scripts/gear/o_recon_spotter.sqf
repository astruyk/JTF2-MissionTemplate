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
player addItemToUniform "ACE_DAGR";
player addVest "rhs_6b23_digi_6sh92_vog";
player addItemToVest "ACE_microDAGR";
player addItemToVest "ACE_RangeCard";
player addItemToVest "ACE_Kestrel4500";
player addItemToVest "SmokeShell";
for "_i" from 1 to 10 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
player addHeadgear "rhs_Booniehat_digi";

comment "Add weapons";
player addWeapon "rhs_weap_ak74m_camo";
player addPrimaryWeaponItem "rhs_acc_dtk4short";
player addPrimaryWeaponItem "rhs_acc_1p78";
player addWeapon "ACE_Vector";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_fadak_2";
player linkItem "NVGoggles_INDEP";