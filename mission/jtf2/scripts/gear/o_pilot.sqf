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
this forceAddUniform "rhs_uniform_df15";
for "_i" from 1 to 10 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_morphine";};
this addItemToUniform "ACE_EarPlugs";
this addItemToUniform "ACE_epinephrine";
this addVest "rhs_vydra_3m";
for "_i" from 1 to 6 do {this addItemToVest "rhs_30Rnd_545x39_AK";};
this addItemToVest "SmokeShell";
this addItemToVest "SmokeShellGreen";
this addItemToVest "SmokeShellRed";
this addHeadgear "rhs_zsh7a_mike";

comment "Add weapons";
this addWeapon "rhs_weap_ak74m_folded";
this addPrimaryWeaponItem "rhs_acc_dtk";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "tf_fadak_1";
this linkItem "ItemGPS";
this linkItem "NVGoggles_INDEP";