_signPost = _this select 0;
_leftTexturePath = _this select 1;
_rightTexturePath = "";
if (count _this > 2) then
{
	_rightTexturePath = _this select 2;
};

_leftTextureObject = "UserTexture1m_F" createVehicle (position _signPost);
_leftTextureObject setdir getdir(_signPost);
_leftTextureObject setObjectTexture [0, _leftTexturePath];

if (_rightTexturePath != "") then
{
	_leftTextureObject attachTo [_signPost,[-0.5, -0.05, 0.6]];
	
	_rightTextureObject = "UserTexture1m_F" createVehicle (position _signPost);
	_rightTextureObject setdir getdir(_signPost);
	_rightTextureObject SetObjectTexture [0, _rightTexturePath];
	_rightTextureObject attachTo [_signPost,[0.5, -0.05, 0.6]];
}
else
{
	_leftTextureObject attachTo [_signPost,[0, -0.05, 0.6]];
};