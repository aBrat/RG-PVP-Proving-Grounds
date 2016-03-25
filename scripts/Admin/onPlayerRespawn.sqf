private ["_unit","_corpse"];

_unit = _this select 0;
_corpse = _this select 1;

if (local _unit) then {
  _corpse removeAction Debug_Console_Action;
	
      Debug_Console_Action = player addAction["<t color='#FFFF11'>Debug Console</t>", "createDialog ""RscDisplayDebugPublic""", nil, 1, false, True, "", "_this == Admin_1 || _this ==  Admin_2 || _this ==  Admin_3 || _this ==  Admin_4 || _this ==  Helios1 || _this ==  Mars1 || _this ==  Helios2 || _this ==  Mars2"];
};
