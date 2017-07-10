/*
file: Fn_barrierGUI.sqf

Author: Toni Morton (Inspired By Warnerm's Barriers From Altis Life)

Editor Credits: 

Description: 
Controls The Main GUI List, 
Simply add a descriptive name of whatever you like to spawn and 
then add it to the other files under the same name as a case.

DO NOT FORGET TO LEAVE THE LAST "" WITHOUT A , OR THIS WILL BREAK EVERYTHING.
*/
disableSerialization;
_display = (findDisplay 1705);
_barrierlist = _display displayCtrl 2686;

_barrierlistarray = 
[
"Bargate",
"Foldable Barrier With Light",
"Full Size Road Barrier",
"Traffic Cone with Light",
"Plastic Construction Barrier (Orange)",
"Plastic Construction Barrier (Blue)",
"Concrete Heavy Barrier",
"SandBag Wall",
"RazorWire Fence",
"Traffic Cone (Brown)",
"Construction WorkLight"
];

lbclear _barrierlist;
{
_barrierlist lbAdd _x;
}foreach _barrierlistarray;