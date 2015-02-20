// F3 - Disable Saving and Auto Saving
enableSaving [false, false];

// F3 - Mute Orders and Reports
enableSentences false;

// F3 - Briefing
[] call F_fnc_showBriefing;
[] call F_fnc_showOrbatNotes;

// F3 - Buddy Team Colours
[] call F_fnc_setTeamColours;

// F3 - View Distance
setViewDistance 2500;

// F3 - Name Tags
[10] call F_fnc_setupNameTags;

// F3 - Join Group Action
// [false] execVM "f\groupJoin\f_groupJoinAction.sqf";

// BWMF - Mission Timer/Safe Start
if (!isNil "PABST_fnc_safeStart") then {[] spawn PABST_fnc_safeStart;};

// F3 - Radio Framework
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
[] execVM "f\radios\radio_init.sqf";

//PABST: setup custom freqs automatically for people
[] call F_Pabst_fnc_setupRadioChannels;

// BWMF: DAC Debug Params
[] call F_DAC_fnc_setupDacParams;

// BWMF: Group and FTL Markers
[] call F_Markers_fnc_playerInit;
