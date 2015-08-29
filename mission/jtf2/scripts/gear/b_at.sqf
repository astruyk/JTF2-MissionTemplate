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
for "_i" from 1 to 5 do {this addItemToUniform "ACE_morphine";};
this addItemToUniform "ACE_epinephrine";
this addItemToUniform "ACE_EarPlugs";
this addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
this addVest "CFB_TW_Vest_PlateCarrier2";
for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
this addItemToVest "HandGrenade";
this addItemToVest "SmokeShellGreen";
for "_i" from 1 to 11 do {this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
this addBackpack "CFB_TW_Backpack_Kitbag";
for "_i" from 1 to 3 do {this addItemToBackpack "RPG32_F";};
for "_i" from 1 to 2 do {this addItemToBackpack "RPG32_HE_F";};
this addHeadgear "CFB_TW_Helmet";

comment "Add weapons";
this addWeapon "rhs_weap_m4a1_carryhandle";
this addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
this addPrimaryWeaponItem "rhsusf_acc_ACOG";
this addWeapon "launch_RPG32_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_anprc152_1";
this linkItem "NVGoggles_INDEP";