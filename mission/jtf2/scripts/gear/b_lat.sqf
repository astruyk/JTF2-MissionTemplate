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
this forceAddUniform "CFB_TW_Uniform";
for "_i" from 1 to 10 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {this addItemToUniform "ACE_morphine";};
this addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_CableTie";};
this addItemToUniform "ACE_EarPlugs";
this addVest "CFB_TW_Vest_PlateCarrier2";
this addItemToVest "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 11 do {this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
this addItemToVest "Chemlight_green";
this addItemToVest "rhs_m136_hedp_mag";
this addHeadgear "CFB_TW_Helmet";
this addGoggles "rhs_googles_clear";

comment "Add weapons";
this addWeapon "rhs_weap_m16a4_carryhandle_grip_pmag";
this addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
this addPrimaryWeaponItem "rhsusf_acc_ACOG";
this addWeapon "rhs_weap_M136_hedp";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_anprc152_1";
this linkItem "ItemGPS";
this linkItem "NVGoggles_INDEP";

