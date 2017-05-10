class Toni_GUI_BarrierGUI 
{
idd = 1705;
style = 32;
name = "Toni_GUI_BarrierGUI";
movingEnable = 0;
onload = "[] spawn Toni_fnc_BarrierGUI";

class controlsbackground 
    {
        class Toni_GUI_BarrierBack: IGUIBack
        {
            idc = -1;
            x = 0 * GUI_GRID_W + GUI_GRID_X;
            y = 0 * GUI_GRID_H + GUI_GRID_Y;
            w = 40 * GUI_GRID_W;
            h = 25 * GUI_GRID_H;
            colorBackground[] = {0,0,0,0.4};
        };
    };
    
class controls 
    {

        class Toni_GUI_BarrierTitle: RscText
        {
            idc = -1;
            text = "Toni's Barrier Menu"; //--- ToDo: Localize;
            x = 0 * GUI_GRID_W + GUI_GRID_X;
            y = -1 * GUI_GRID_H + GUI_GRID_Y;
            w = 40 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            colorBackground[] = {1,0.475,0,1};
        };
        class Toni_GUI_BarrierX: RscButtonMenuCancel
        {
            text = "X"; //--- ToDo: Localize;
            x = 38.5 * GUI_GRID_W + GUI_GRID_X;
            y = -1 * GUI_GRID_H + GUI_GRID_Y;
            w = 1.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Close Menu"; //--- ToDo: Localize;
            action = "(finddisplay 1705) closedisplay 0";
        };
        class Toni_GUI_Barrierlistbox: RscListbox
        {
            idc = 2686;
            x = 2 * GUI_GRID_W + GUI_GRID_X;
            y = 2 * GUI_GRID_H + GUI_GRID_Y;
            w = 18 * GUI_GRID_W;
            h = 21 * GUI_GRID_H;
            tooltip = "Select The Barrier You Would Like To Spawn"; //--- ToDo: Localize;
        };
        class Toni_GUI_Barrierspawn: RscButton
        {
            idc = 1600;
            text = "Deploy Selected Barrier"; //--- ToDo: Localize;
            x = 22 * GUI_GRID_W + GUI_GRID_X;
            y = 4 * GUI_GRID_H + GUI_GRID_Y;
            w = 16 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Deploy The Selected Barrier"; //--- ToDo: Localize;
            action = "[lbtext[2686,(lbCurSel 2686)]] call Toni_fnc_spawnbarrier";
        };
        class Toni_GUI_BarrierCleanup: RscButton
        {
            idc = 1601;
            text = "Remove Selected Barrier Type"; //--- ToDo: Localize;
            x = 22 * GUI_GRID_W + GUI_GRID_X;
            y = 8 * GUI_GRID_H + GUI_GRID_Y;
            w = 16 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Cleans Up All Barriers Near You Of The Selected Type"; //--- ToDo: Localize;
            action = "[lbtext[2686,(lbCurSel 2686)],1] call Toni_fnc_cleanupbarrier";
        };
        class Toni_GUI_BarrierCleanupButton: RscButton
        {
            idc = 1602;
            text = "Remove All Barriers (10 Meter Radius)"; //--- ToDo: Localize;
            x = 22 * GUI_GRID_W + GUI_GRID_X;
            y = 12 * GUI_GRID_H + GUI_GRID_Y;
            w = 16 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Cleans Up All Barriers Near You Of ALL TYPES"; //--- ToDo: Localize;
            action = "[0,2] call Toni_fnc_cleanupbarrier";
        };
    };
};