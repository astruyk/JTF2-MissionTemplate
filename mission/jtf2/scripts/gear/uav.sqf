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
for "_i" from 1 to 3 do {player addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
player addItemToUniform "AGM_EarBuds";
player addVest "CFB_TW_Vest_Tactical";
player addItemToVest "AGM_MapTools";
for "_i" from 1 to 5 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 5 do {player addItemToVest "AGM_Bandage";};
for "_i" from 1 to 2 do {player addItemToVest "AGM_Morphine";};
for "_i" from 1 to 1 do {player addItemToVest "AGM_Epipen";};
for "_i" from 1 to 2 do {player addItemToVest "AGM_UAVBattery";};
player addBackpack "B_UAV_01_backpack_F";
player addHeadgear "CFB_TW_Patrol";
player addGoggles "G_Goggles_VR";

comment "Add weapons";
player addWeapon "rhs_weap_m4";
player addPrimaryWeaponItem "rhsusf_acc_compm4";
player addWeapon "AGM_Vector";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_1";
player linkItem "B_UavTerminal";
