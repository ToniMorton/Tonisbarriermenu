class CfgPatches
{
	class Toni_Barrier_Menu
	{
		weapons[] = {};
		requiredVersion = 1.0;
		author[] = {"Toni Morton"};
		authorUrl = "http://steamcommunity.com/id/ToniMorton/";
		version = 1.0;
        units[] = {};
		requiredAddons[] = {};
	};
};
class CfgFunctions
{
  #include "CfgFunctions.hpp"
};
#include "Dialogs\Defines.hpp"
#include "Dialogs\GUI.hpp"
class RscDisplayInventory
{
	class Controls
	{
            class Toni_GUI_BarrierMenu: RscButtonMenuOK
            {   
                idc = -1;
                text = "Open Toni's Barrier Menu"; //--- ToDo: Localize;
                x = 29 * GUI_GRID_W + GUI_GRID_X;
                y = -0.5 * GUI_GRID_H + GUI_GRID_Y;
                w = 14 * GUI_GRID_W;
                h = 1 * GUI_GRID_H;
                tooltip = "Opens Toni's Barrier Menu"; //--- ToDo: Localize;
                action = "closedialog 0; createdialog 'Toni_GUI_BarrierGUI';";
            };
    };
};