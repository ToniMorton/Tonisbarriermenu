/*
Script fn_cleanupbarrier.sqf 
Author: Toni Morton (Inspired by Warnerm's barriers from Altis Life)
Description: Makes barriers You placed go away :D  
*/
_barriertodel = _this select 0;
_actionid = _this select 1;
barrierarray = ["Land_BarGate_F","RoadBarrier_small_F","RoadBarrier_F","Land_CncBarrier_stripes_F","Land_PlasticBarrier_03_F","RoadCone_L_F","Land_BagFence_Long_F","Land_RazorWire_F","Land_RoadCone_01_F","PlasticBarrier_03_blue_F","PlasticBarrier_02_yellow_F","Land_PortableLight_double_F"];
switch _actionid do 
{

    case 1:
    {
        switch _barriertodel do
        {
            case "Bargate":
            {
                _barrier = position player nearObjects ["Land_BarGate_F", 8];
                deleteVehicle (_barrier select 0);	
            };
            case "Foldable Barrier With Light":
            {
                _barrier = position player nearObjects ["RoadBarrier_small_F", 3];
                deleteVehicle (_barrier select 0);
            };             
            case "Full Size Road Barrier":
            {
                _barrier = position player nearObjects ["RoadBarrier_F", 3];
                deleteVehicle (_barrier select 0);
            };             
            case "Traffic Cone with Light":
            {
                _barrier = position player nearObjects ["RoadCone_L_F", 3.5];
                deleteVehicle (_barrier select 0);
            };             
            case "Plastic Construction Barrier (Orange)":
            {
                _barrier = position player nearObjects ["Land_PlasticBarrier_03_F", 3];
                deleteVehicle (_barrier select 0);
            };              
            case "Plastic Construction Barrier (Blue)":
            {
                _barrier = position player nearObjects ["PlasticBarrier_03_blue_F", 3];
                deleteVehicle (_barrier select 0);
            };                 
            case "Plastic Water Barrier":
            {
                _barrier = position player nearObjects ["PlasticBarrier_02_yellow_F", 3];
                deleteVehicle (_barrier select 0);
            };             
            case "Concrete Heavy Barrier":
            {
                _barrier = position player nearObjects ["Land_CncBarrier_stripes_F", 3];
                deleteVehicle (_barrier select 0);
            };             
            case "SandBag Wall":
            {
                _barrier = position player nearObjects ["Land_BagFence_Long_F", 3];
                deleteVehicle (_barrier select 0);
            };
            case "RazorWire Fence":
            {
                _barrier = position player nearObjects ["Land_RazorWire_F", 3];
                deleteVehicle (_barrier select 0);
            }; 
            case "Traffic Cone (Brown)":
            {
                _barrier = position player nearObjects ["Land_RoadCone_01_F", 3.5];
                deleteVehicle (_barrier select 0);
            };             
            case "Construction WorkLight":
            {
                _barrier = position player nearObjects ["Land_PortableLight_double_F", 3.5];
                deleteVehicle (_barrier select 0);
            }; 
        };
    };   
    case 2:
    {
        {   
            deleteVehicle _x; 
        }foreach nearestObjects [player,barrierarray,10];
    };
};