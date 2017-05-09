/*
Script fn_spawnbarrier.sqf 
Author: Toni Morton (Inspired by Warnerm's barriers from Altis Life)
Description: Makes barriers pop out of you. Lmao. 
*/
selection = _this select 0;
dropbarrier = player addaction [("Drop Barrier"),{detach barrier; barrier setVectorUP (surfaceNormal [(getPosATL barrier) select 0,(getPosATL barrier) select 1]); barrier = nil; player removeaction dropbarrier;},[""],0.1,false,true,"","vehicle player isequalto player"];
Barrier_Spawn = 
{
    selectedbarrier = _this select 0;
    detach barrier;
    barrier = selectedbarrier createVehicle position player;
    if (selection == "Bargate") then 
       { 
               barrier attachTo [player, [0, 4, 4.3]];
               barrier allowdamage false;
               dropbarrier;
       } 
       else
       {
               barrier attachTo [player, [0, 2, 0.35]];
               dropbarrier;
       };
};
switch selection do
{       
            case "Bargate":
            {
                ["Land_BarGate_F"] call Barrier_Spawn;
            };
            case "Foldable Barrier With Light":
            {
                ["RoadBarrier_small_F"] call Barrier_Spawn;
            };             
            case "Full Size Road Barrier":
            {
                ["RoadBarrier_F"] call Barrier_Spawn;
            };             
            case "Traffic Cone with Light":
            {
                ["RoadCone_L_F"] call Barrier_Spawn;
            };             
            case "Plastic Construction Barrier (Orange)":
            {
                ["Land_PlasticBarrier_03_F"] call Barrier_Spawn;
            };                         
            case "Plastic Construction Barrier (Blue)":
            {
                ["PlasticBarrier_03_blue_F"] call Barrier_Spawn;
            };              
            case "Plastic Water Barrier":
            {
                ["PlasticBarrier_02_yellow_F"] call Barrier_Spawn;
            };             
            case "Concrete Heavy Barrier":
            {
                ["Land_CncBarrier_stripes_F"] call Barrier_Spawn;
            };            
            case "SandBag Wall":
            {
                ["Land_CncBarrier_stripes_F"] call Barrier_Spawn;
            };            
            case "RazorWire Fence":
            {
                ["Land_RazorWire_F"] call Barrier_Spawn;
            };           
            case "Traffic Cone (Brown)":
            {
                ["Land_RoadCone_01_F"] call Barrier_Spawn;
            };           
            case "Construction WorkLight":
            {
                ["Land_PortableLight_double_F"] call Barrier_Spawn;
            };
};