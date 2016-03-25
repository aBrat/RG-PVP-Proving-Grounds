if(hasInterface) then 
{
private ["_playerRespawn"];
private ["_adminRespawn"];

if (isNil "Admin_1") then {Admin_1 = objNull};
if (isNil "Admin_2") then {Admin_2 = objNull};
if (isNil "Admin_3") then {Admin_3 = objNull};
if (isNil "Admin_4") then {Admin_4 = objNull};
if (isNil "Helios1") then {Helios1 = objNull};
if (isNil "Mars1") then {Mars1 = objNull};
if (isNil "Helios2") then {Helios2 = objNull};
if (isNil "Mars2") then {Mars2 = objNull};
if (isNil "Andrews1") then {Andrews1= objNull};
if (isNil "Andrews2") then {Andrews2= objNull};

//Admin command access to select units
if ((local Admin_1) || (local Admin_2) || (local Admin_3) || (local Admin_4) || (local Helios1) || (local Mars1) || (local Helios2) || (local Mars2)) then 
	{

			Debug_Console_Action = player addAction["<t color='#FFFF11'>Debug Console</t>", "createDialog ""RscDisplayDebugPublic""", nil, 1, false, True, "", "_this == Admin_1 || _this ==  Admin_2 || _this ==  Admin_3 || _this ==  Admin_4 || _this ==  Helios1 || _this ==  Mars1 || _this ==  Helios2 || _this ==  Mars2"];
      _playerRespawn = player addEventHandler ["Respawn", { _this execVM "scripts\Admin\AdminRespawn.sqf";}]; 
			
	};  

if ((local Andrews1) || (local Andrews2))  then 
	{

			Splendid_Camera_Action = player addAction["<t color='#FFFF11'>Splendid Camera</t>", {["Paste",["Stratis",getPos player,getDir player,0.7,[0,0],0,0,855.569,0.3,1]] call bis_fnc_camera;}, nil, 1, false, True, "", "_this == Andrews1 || _this ==  Andrews2 "];
			_adminRespawn = player addEventHandler ["Respawn", { _this execVM "scripts\Admin\AndrewsRespawn.sqf";}];
	};

};

