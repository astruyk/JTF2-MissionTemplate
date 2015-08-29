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
for "_i" from 1 to 10 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_morphine";};
this addItemToUniform "ACE_epinephrine";
this addItemToUniform "rhs_mag_rgd5";
for "_i" from 1 to 2 do {this addItemToUniform "SmokeShell";};
this addItemToUniform "SmokeShellGreen";
this addItemToUniform "SmokeShellRed";
this addVest "rhs_6b23_digi_6sh92_vog";
this addItemToVest "ACE_EarPlugs";
this addItemToVest "rhs_mag_rgd5";
for "_i" from 1 to 10 do {this addItemToVest "rhs_30Rnd_545x39_AK";};
this addHeadgear "rhs_6b27m_digi";

comment "Add weapons";
this addWeapon "rhs_weap_ak74m";
this addPrimaryWeaponItem "rhs_acc_dtk";
this addWeapon "rhs_weap_rpg26";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_fadak_2";
this linkItem "NVGoggles_INDEP";