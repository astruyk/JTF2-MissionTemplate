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
this forceAddUniform "CFB_TW_Tshirt_Uniform";
for "_i" from 1 to 10 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {this addItemToUniform "ACE_morphine";};
this addItemToUniform "ACE_epinephrine";
this addItemToUniform "ACE_EarPlugs";
this addItemToUniform "HandGrenade";
this addItemToUniform "SmokeShellGreen";
this addItemToUniform "ACE_IR_Strobe_Item";
this addVest "CFB_TW_Vest_PlateCarrier2";
for "_i" from 1 to 2 do {this addItemToVest "rhsusf_100Rnd_762x51";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
this addHeadgear "CFB_TW_Helmet";

comment "Add weapons";
this addWeapon "rhs_weap_m240B_CAP";
this addPrimaryWeaponItem "rhsusf_acc_ELCAN";
this addItemToVest "rhsusf_100Rnd_762x51";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_anprc152_1";
this linkItem "NVGoggles_INDEP";
