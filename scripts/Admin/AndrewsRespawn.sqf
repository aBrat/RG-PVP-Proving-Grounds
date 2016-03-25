private ["_unit","_corpse"];

_unit = _this select 0;
_corpse = _this select 1;

if (local _unit) then {
  _corpse removeAction Splendid_Camera_Action;
	
      Splendid_Camera_Action = player addAction["<t color='#FFFF11'>Splendid Camera</t>", {["Paste",["Stratis",getPos player,getDir player,0.7,[0,0],0,0,855.569,0.3,1]] call bis_fnc_camera;}, nil, 1, false, True, "", "_this == Andrews1 || _this ==  Andrews2 "];
};

