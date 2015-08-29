comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "CFB_TW_Uniform";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_EarPlugs";
player addVest "CFB_TW_Vest_PlateCarrier2";
player addItemToVest "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 11 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
player addItemToVest "Chemlight_green";
player addItemToVest "rhs_m136_hedp_mag";
player addHeadgear "CFB_TW_Helmet";
player addGoggles "rhs_googles_clear";

comment "Add weapons";
player addWeapon "rhs_weap_m16a4_carryhandle_grip_pmag";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhs_weap_M136_hedp";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_1";
player linkItem "ItemGPS";
player linkItem "NVGoggles_INDEP";

