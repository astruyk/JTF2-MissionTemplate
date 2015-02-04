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
_unit forceAddUniform "rhs_uniform_flora";
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_30Rnd_545x39_7n22_AK";};
_unit addItemToUniform "AGM_EarBuds";
_unit addVest "rhs_6b23_sniper";
_unit addItemToVest "AGM_ItemKestrel";
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 8 do {_unit addItemToVest "rhs_30Rnd_545x39_7n22_AK";};
_unit addBackpack "rhs_assault_umbts";
for "_i" from 1 to 12 do {_unit addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Bloodbag";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7n22_AK";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
_unit addHeadgear "rhs_Booniehat_flora";

comment "Add weapons";
_unit addWeapon "rhs_weap_ak74m_desert";
_unit addPrimaryWeaponItem "rhs_acc_1p29";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_fadak_1";
