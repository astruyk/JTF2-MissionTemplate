_side = _this select 0;

_markerName = "";
switch (_side) do 
{
	default { _markerName = "respawn_west"; };
	case (east): { _markerName = "respawn_east"; };
	case (independent): { _markerName = "respawn_guerrila"; };
	case (civilian): { _markerName = "respawn_civilian"; };
};

_markerName;