comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add containers";
this forceAddUniform "rhs_uniform_emr_patchless";
for "_i" from 1 to 8 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_45Rnd_545X39_AK_Green";};
this addVest "rhs_6b23_digi_6sh92_vog";
for "_i" from 1 to 5 do {this addItemToVest "ACE_morphine";};
this addItemToVest "ACE_epinephrine";
for "_i" from 1 to 7 do {this addItemToVest "rhs_45Rnd_545X39_AK_Green";};
this addItemToVest "SmokeShell";
this addHeadgear "rhs_6b27m_digi";

comment "Add weapons";
this addWeapon "rhs_weap_ak74m_2mag";
this addPrimaryWeaponItem "rhs_acc_dtk";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "tf_fadak_2";
this linkItem "NVGoggles_INDEP";