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
this forceAddUniform "CFB_RCAF_Coveralls_Sage";
for "_i" from 1 to 10 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {this addItemToUniform "ACE_morphine";};
this addItemToUniform "ACE_epinephrine";
this addItemToUniform "ACE_EarPlugs";
this addItemToUniform "ACE_IR_Strobe_Item";
this addVest "CFB_TW_Vest_Tactical";
for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
this addItemToVest "HandGrenade";
this addItemToVest "SmokeShellGreen";
for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
this addHeadgear "H_HelmetCrew_I";

comment "Add weapons";
this addWeapon "rhs_weap_m4a1_carryhandle";
this addWeapon "Rangefinder";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_anprc152_1";
this linkItem "NVGoggles_INDEP";