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
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShell";};
player addItemToUniform "SmokeShellGreen";
player addItemToUniform "HandGrenade";
player addItemToUniform "ACE_IR_Strobe_Item";
player addVest "CFB_TW_Vest_PlateCarrier2";
for "_i" from 1 to 11 do {player addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";};
player addHeadgear "CFB_TW_Helmet";

comment "Add weapons";
player addWeapon "rhs_weap_m14ebrri";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
player addPrimaryWeaponItem "optic_MRCO";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_1";
player linkItem "B_UavTerminal";
player linkItem "NVGoggles_INDEP";

