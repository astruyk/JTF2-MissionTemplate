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
this addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 4 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {this addItemToUniform "SmokeShell";};
this addItemToUniform "SmokeShellGreen";
this addItemToUniform "SmokeShellRed";
this addItemToUniform "rhs_mag_rgd5";
this addVest "rhs_6b23_digi_6sh92_vog";
for "_i" from 1 to 10 do {this addItemToVest "rhs_30Rnd_545x39_AK";};
this addItemToVest "rhs_mag_rgd5";
this addBackpack "rhs_sidor";
for "_i" from 1 to 7 do {this addItemToBackpack "rhs_45Rnd_545X39_AK_Green";};
this addHeadgear "rhs_6b27m_digi";

comment "Add weapons";
this addWeapon "rhs_weap_ak74m";
this addPrimaryWeaponItem "rhs_acc_dtk";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_fadak_2";
this linkItem "NVGoggles_INDEP";