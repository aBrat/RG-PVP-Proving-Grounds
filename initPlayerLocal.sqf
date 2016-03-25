//These scripts will be executed only on a CLIENT not HC
if (hasInterface) then {

//Execute and load briefing
execVM "briefing.sqf";

//makes players to wait for being initialized
waitUntil { sleep 0.01; !isNull player && isPlayer player };

//Admin commands
execVM "scripts\Admin\init.sqf";

//RG Task Force Tracker
execVM "scripts\tracker\init.sqf";

//Mine detector script
execVM "scripts\mineDetector\mineDetector.sqf";

//Assigns RG insignia to the units
execVM "scripts\insignia\insignia.sqf";

};//END
