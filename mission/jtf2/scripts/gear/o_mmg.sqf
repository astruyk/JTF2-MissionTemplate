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
this addItemToUniform "ACE_EarPlugs";
this addItemToUniform "rhs_mag_rgd5";
for "_i" from 1 to 2 do {this addItemToUniform "SmokeShell";};
this addVest "rhs_6b23_digi_6sh92";
this addItemToVest "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToVest "rhs_100Rnd_762x54mmR";};
this addHeadgear "rhs_6b27m_digi";

comment "Add weapons";
this addWeapon "rhs_weap_pkp";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_fadak_3";
this linkItem "NVGoggles_INDEP";