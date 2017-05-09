disableSerialization;
_display = (findDisplay 1705);
_barrierlist = _display displayCtrl 2686;

_barrierlistarray = 
[
"Bargate",
"Foldable Barrier With Light",
"Full Size Road Barrier",
"Traffic Cone with Light",
"Plastic Construction Barrier",
"Concrete Heavy Barrier"
];

lbclear _barrierlist;
{
_barrierlist lbAdd _x;
}foreach _barrierlistarray;