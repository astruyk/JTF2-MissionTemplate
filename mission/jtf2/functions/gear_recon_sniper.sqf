comment "Exported from Arsenal by Anton WO.";

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add containers";
_unit forceAddUniform "U_B_GhillieSuit";
_unit addItemToUniform "AGM_EarBuds";
_unit addItemToUniform "AGM_ItemKestrel";
for "_i" from 1 to 4 do {_unit addItemToUniform "AGM_Bandage";};
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItemToUniform "9Rnd_45ACP_Mag";};
_unit addItemToUniform "7Rnd_408_Mag";
_unit addVest "CFB_TW_Vest_Tactical";
for "_i" from 1 to 3 do {_unit addItemToVest "AGM_Morphine";};
_unit addItemToVest "AGM_Epipen";
for "_i" from 1 to 6 do {_unit addItemToVest "7Rnd_408_Mag";};
for "_i" from 1 to 2 do {_unit addItemToVest "9Rnd_45ACP_Mag";};

comment "Add weapons";
_unit addWeapon "srifle_LRR_camo_F";
_unit addPrimaryWeaponItem "optic_SOS";
_unit addWeapon "hgun_ACPC2_F";
_unit addHandgunItem "muzzle_snds_acp";
_unit addWeapon "AGM_Vector";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_1";
_unit linkItem "itemGps";
