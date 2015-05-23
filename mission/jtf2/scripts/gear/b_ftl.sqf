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
player forceAddUniform "CFB_TW_Rolled_Uniform";
for "_i" from 1 to 3 do {player addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
player addVest "CFB_TW_Vest_PlateCarrier1";
for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 4 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 8 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
for "_i" from 1 to 8 do {player addItemToVest "1Rnd_Smoke_Grenade_shell";};
for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_M433_HEDP";};
player addBackpack "tf_rt1523g_big_bwmod";
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 1 do {player addItemToBackpack "ACE_tourniquet";};
player addItemToBackpack "ACE_EarPlugs";
for "_i" from 1 to 7 do {player addItemToBackpack "rhs_mag_M433_HEDP";};
for "_i" from 1 to 6 do {player addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 6 do {player addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
for "_i" from 1 to 6 do {player addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";};
player addHeadgear "CFB_TW_Patrol";

comment "Add weapons";
player addWeapon "rhs_m4a1_m320";
player addPrimaryWeaponItem "rhsusf_acc_compm4";
player addWeapon "ACE_Vector";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_1";
player linkItem "itemGps";
