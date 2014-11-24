#define CFG_TYPE_WEAPON 1
#define CFG_TYPE_HANDGUN 2
#define CFG_TYPE_LAUNCHER 4
#define CFG_TYPE_BINOC 4096
#define CFG_TYPE_ITEM 131072
#define CFG_TYPE_SCOPED 0

if (isNil "Ares_Arsenal_Ammo_Box_BlackList") then
{
	Ares_Arsenal_Ammo_Box_BlackList= [];
};

// Assumes this will be called on all machines so this variable will be defined.
Ares_Create_Arsenal_Ammo_Box =
	{
		_ammoBox = "B_supplyCrate_F" createVehicle (_this select 0);
		clearMagazineCargoGlobal _ammoBox;
		clearWeaponCargoGlobal _ammoBox;
		clearItemCargoGlobal _ammoBox;
		clearBackpackCargoGlobal _ammoBox;
		
		_allWeaponsClasses = (configFile >> "CfgWeapons") call BIS_fnc_getCfgSubClasses;
		_weapons = [];
		_items = [];
		_namesOfAddedWeapons = [];
		{
			_weaponClassName = _x;
			_weaponConfig = configFile >> "CfgWeapons" >> _weaponClassName;
			_weaponType = getNumber (_weaponConfig >> "type");
			_weaponScope = getNumber (_weaponConfig >> "scope");
			_weaponDisplayName = getText (_weaponConfig >> "displayName");
			
			if (_weaponScope >= 2) then
			{
				if (_weaponClassName in Ares_Arsenal_Ammo_Box_BlackList) then
				{
					diag_log format["Blacklisted: %1", _weaponClassName];
				}
				else
				{
					if (not (_weaponDisplayName in _namesOfAddedWeapons)) then
					{
						switch (_weaponType) do
						{
							case CFG_TYPE_WEAPON;
							case CFG_TYPE_HANDGUN;
							case CFG_TYPE_LAUNCHER:
							{
								if (not isClass (_weaponConfig >> "LinkedItems")) then
								{
									diag_log format ["Adding Weapon: %1", _x];
									_weapons pushBack _weaponClassName;
									_namesOfAddedWeapons pushBack _weaponDisplayName;
								}
								else
								{
									diag_log format ["Item '%1' had linked items. Skipped", _weaponClassName];
								};
							};
							case CFG_TYPE_BINOC;
							case CFG_TYPE_ITEM:
							{
								diag_log format ["Adding Item: %1", _x];
								_items pushBack _weaponClassName;
								_namesOfAddedWeapons pushBack _weaponDisplayName;
							};
							default
							{
								diag_log format ["Unsupported weapon type %1 (%2)", _weaponClassName, _weaponType];
							};
						};
					}
					else
					{
						diag_log format ["Duplicate display name for %1 (%2)", _weaponClassName, _weaponDisplayName];
					};
				};
			};
		} forEach _allWeaponsClasses;
		
		// Add all the items
		[_ammoBox, _weapons, true] call BIS_fnc_addVirtualWeaponCargo;
		[_ammoBox, _items, true] call BIS_fnc_addVirtualItemCargo;
		
		// Make sure the box is configured as an arsenal box.
		["AmmoboxInit", [_ammoBox, false, {true}]] call BIS_fnc_arsenal;
		_ammoBox;
	};

["Arsenal Ammo Box (everything)", { [[_this select 0], "Ares_Create_Arsenal_Ammo_Box", false] call BIS_fnc_MP; []; }] execVm "Ares_CreateCustomMissionObject.sqf";