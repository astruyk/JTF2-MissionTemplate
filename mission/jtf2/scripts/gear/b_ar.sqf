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
this forceAddUniform "CFB_TW_Rolled_Uniform";
for "_i" from 1 to 10 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {this addItemToUniform "ACE_morphine";};
this addItemToUniform "ACE_EarPlugs";
this addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_CableTie";};
this addItemToUniform "ACE_IR_Strobe_Item";
this addVest "CFB_TW_Vest_PlateCarrier2";
for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
this addItemToVest "HandGrenade";
for "_i" from 1 to 2 do {this addItemToVest "rhs_200rnd_556x45_M_SAW";};
this addHeadgear "CFB_TW_Helmet";

comment "Add weapons";
this addWeapon "rhs_weap_m249_pip_L";
this addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
this addPrimaryWeaponItem "rhsusf_acc_ELCAN";
this addItemToVest "rhs_200rnd_556x45_M_SAW"; //must do this or you are left with half-empty vest

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_anprc152_1";
this linkItem "NVGoggles_INDEP";
