comment "Exported from Arsenal by Anton WO.";

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
player forceAddUniform "CFB_TW_Tshirt_Uniform";
for "_i" from 1 to 3 do {player addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
player addItemToUniform "ACE_EarPlugs";
player addVest "CFB_TW_Vest_Tactical";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 4 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
for "_i" from 1 to 10 do {player addItemToVest "1Rnd_SmokeBlue_Grenade_shell";};
player addBackpack "tf_rt1523g_big_bwmod";
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 1 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 10 do {player addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 10 do {player addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
for "_i" from 1 to 5 do {player addItemToBackpack "rhs_mag_M441_HE";};
player addHeadgear "CFB_TW_Patrol";

comment "Add weapons";
player addWeapon "rhs_m4_m320";
player addPrimaryWeaponItem "rhsusf_acc_compm4";
player addWeapon "ACE_Vector";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_1";
