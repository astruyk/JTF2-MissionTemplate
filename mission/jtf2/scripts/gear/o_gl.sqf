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
for "_i" from 1 to 5 do {this addItemToUniform "rhs_VOG25";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_VG40OP_white";};
this addItemToUniform "rhs_VG40OP_green";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_VG40OP_red";};
this addVest "rhs_6b23_digi_6sh92_vog";
for "_i" from 1 to 9 do {this addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 5 do {this addItemToVest "ACE_morphine";};
this addItemToVest "ACE_epinephrine";
this addItemToVest "ACE_EarPlugs";
for "_i" from 1 to 9 do {this addItemToVest "rhs_30Rnd_545x39_AK";};
this addItemToVest "rhs_VOG25";
this addHeadgear "rhs_6b27m_digi";

comment "Add weapons";
this addWeapon "rhs_weap_ak74m_gp25";
this addPrimaryWeaponItem "rhs_acc_dtk";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_fadak_2";
this linkItem "NVGoggles_INDEP";