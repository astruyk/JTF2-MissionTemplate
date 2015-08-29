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
this addItemToUniform "ACE_EarPlugs";
this addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 3 do {this addItemToUniform "rhs_10Rnd_762x54mmR_7N1";};
this addVest "rhs_6b23_digi_6sh92_vog";
for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShellRed";};
for "_i" from 1 to 11 do {this addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
this addHeadgear "rhs_Booniehat_digi";

comment "Add weapons";
this addWeapon "rhs_weap_svdp_npz";
this addPrimaryWeaponItem "rhs_acc_tgpv";
this addPrimaryWeaponItem "optic_AMS";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "tf_microdagr";
this linkItem "tf_fadak_2";
this linkItem "NVGoggles_INDEP";