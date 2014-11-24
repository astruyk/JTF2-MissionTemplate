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
		
		// Go through and gather all the items declared in 'CfgWeapons'. This includes most items, vests
		// and uniforms.
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
		[_ammoBox, _weapons, true] call BIS_fnc_addVirtualWeaponCargo;
		[_ammoBox, _items, true] call BIS_fnc_addVirtualItemCargo;
		
		// Gather up all the magazines that are declared. This includes explosives and grenades.
		_allMagazineClasses = (configFile >> "CfgMagazines") call BIS_fnc_getCfgSubClasses;
		_magazines = [];
		{
			_className = _x;
			
			if (not (_className in Ares_Arsenal_Ammo_Box_BlackList)) then
			{
				_config = configFile >> "CfgVehicles" >> _className;
				_displayName = getText(_config >> "displayName");
				_picture = getText(_config >> "picture");
				_scope = getNumber(_config >> "scope");
				
				if (_scope >= 2 && _displayName != "" && _picture != "") then
				{
					diag_log format ["Adding magazine: %1", _className];
					_magazines pushBack _className;
				}
				else
				{
					diag_log format ["Skipped magazine: %1", _className];
				};
			}
			else
			{
				diag_log format["Blacklisted: %1", _className];
			};
		} forEach _allMagazineClasses;
		[_ammoBox, _magazines, true] call BIS_fnc_addVirtualMagazineCargo;
		
		// Gather up all the backpacks that are declared. They're vehicles. Awesome.
		_allVehicleClasses = (configFile >> "CfgVehicles") call BIS_fnc_getCfgSubClasses;
		_backpacks = [];
		{
			_className = _x;
			if (not (_className in Ares_Arsenal_Ammo_Box_BlackList)) then
			{
				_config = configFile >> "CfgVehicles" >> _className;
				_displayName = getText(_config >> "displayName");
				_picture = getText(_config >> "picture");
				_scope = getNumber(_config >> "scope");
				_isBackpack = getNumber(_config >> "isbackpack");
				
				if (_scope >= 2 && _isBackpack == 1 && _displayName != "" && _picture != "") then
				{
					diag_log format ["Adding backpack: %1", _className];
					_backpacks pushBack _className;
				}
				else
				{
					diag_log format ["Skipped backpack: %1", _className];
				};
			}
			else
			{
				diag_log format["Blacklisted: %1", _className];
			};
		} forEach _allVehicleClasses;
		[_ammoBox, _backpacks select 0, true] call BIS_fnc_addVirtualBackpackCargo;
		
		// TODO CfgGlasses
		_allGlassesClasses = (configFile >> "CfgGlasses") call BIS_fnc_getCfgSubClasses;
		_glasses = [];
		{
			_className = _x;
			if (not (_className in Ares_Arsenal_Ammo_Box_BlackList)) then
			{
				_config = configFile >> "CfgVehicles" >> _className;
				_displayName = getText(_config >> "displayName");
				_picture = getText(_config >> "picture");
				_scope = getNumber(_config >> "scope");
				
				if (_scope >= 2 && _displayName != "" && _picture != "") then
				{
					diag_log format ["Adding glasses: %1", _className];
					_glasses pushBack _className;
				}
				else
				{
					diag_log format ["Skipped glasses: %1", _className];
				};
			}
			else
			{
				diag_log format["Blacklisted: %1", _className];
			};
		} forEach _allGlassesClasses;
		[_ammoBox, _glasses, true] call BIS_fnc_addVirtualItemCargo;
		
		// TODO CfgUnitInsignia
		_allInsigniaClasses = (configFile >> "CfgUnitInsignia") call BIS_fnc_getCfgSubClasses;
		_insignia = [];
		{
			_className = _x;
			if (not (_className in Ares_Arsenal_Ammo_Box_BlackList)) then
			{
				_config = configFile >> "CfgVehicles" >> _className;
				_displayName = getText(_config >> "displayName");
				_picture = getText(_config >> "picture");
				_scope = getNumber(_config >> "scope");
				
				if (_scope >= 2 && _displayName != "" && _picture != "") then
				{
					diag_log format ["Adding insignia: %1", _className];
					_insignia pushBack _className;
				}
				else
				{
					diag_log format ["Skipped insignia: %1", _className];
				};
			}
			else
			{
				diag_log format["Blacklisted: %1", _className];
			};
		} forEach _allInsigniaClasses;
		[_ammoBox, _insignia, true] call BIS_fnc_addVirtualItemCargo;
		
		// Make sure the box is configured as an arsenal box.
		["AmmoboxInit", [_ammoBox, false, {true}]] call BIS_fnc_arsenal;
		_ammoBox;
	};

["Arsenal Ammo Box (everything)", { [[_this select 0], "Ares_Create_Arsenal_Ammo_Box", false] call BIS_fnc_MP; []; }] execVm "Ares_CreateCustomMissionObject.sqf";