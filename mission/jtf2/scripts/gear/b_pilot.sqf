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
for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 2 do {this addItemToVest "Chemlight_green";};
this addHeadgear "H_PilotHelmetHeli_B";

comment "Add weapons";
this addWeapon "rhs_weap_m4a1_carryhandle";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ACE_Altimeter";
this linkItem "tf_anprc152_3";
this linkItem "ItemGPS";
this linkItem "NVGoggles_INDEP";