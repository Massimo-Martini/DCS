-- https://flightcontrol-master.github.io/MOOSE_DOCS/Documentation/Core.Menu.html
-- https://forum.dcs.world/topic/197841-nested-submenu-that-activates-triggers/ 
-- https://www.youtube.com/watch?v=v8gexx2Z17s&list=WL&index=17 
-- https://www.digitalcombatsimulator.com/en/files/3320466/ 

-- addSubMenu il menu è visibile sia dal team BLUE e RED
-- addSubMenuForCoalition visibile solo dal team BLUE
local M1 = missionCommands.addSubMenuForCoalition(coalition.side.BLUE, 'TR. A2A',nil)
local M2 = missionCommands.addSubMenuForCoalition(coalition.side.BLUE, 'TR. A2G',nil)
local M3 = missionCommands.addSubMenuForCoalition(coalition.side.BLUE, 'Mission',nil)
local M4 = missionCommands.addSubMenuForCoalition(coalition.side.BLUE, 'Support/Logistic',M1)
local M5 = missionCommands.addSubMenuForCoalition(coalition.side.BLUE, 'SEAD',M2)
local M6 = missionCommands.addSubMenuForCoalition(coalition.side.BLUE, 'STRIKE',M2)
local M7 = missionCommands.addSubMenuForCoalition(coalition.side.BLUE, 'CAS',M2)
local M8 = missionCommands.addSubMenuForCoalition(coalition.side.BLUE, 'COMBINED ARMS',M2)

missionCommands.addCommand('Escort', M1,function() trigger.action.setUserFlag(111,1) end, nil)
missionCommands.addCommand('CAP', M1,function() trigger.action.setUserFlag(112,1) end, nil)
missionCommands.addCommand('Intercept', M1,function() trigger.action.setUserFlag(113,1) end, nil)
missionCommands.addCommand('Mission 01', M3,function() trigger.action.setUserFlag(161,1) end, nil)
missionCommands.addCommand('Mission 02', M3,function() trigger.action.setUserFlag(162,1) end, nil)
missionCommands.addCommand('Mission 03', M3,function() trigger.action.setUserFlag(163,1) end, nil)
missionCommands.addCommand('Mission 04', M3,function() trigger.action.setUserFlag(164,1) end, nil)
missionCommands.addCommand('C-130 Drop', M4,function() trigger.action.setUserFlag(151,1) end, nil)
missionCommands.addCommand('B', M4,function() trigger.action.setUserFlag(152,1) end, nil)
missionCommands.addCommand('UH-1H Rescue', M4,function() trigger.action.setUserFlag(153,1) end, nil)
missionCommands.addCommand('Easy', M5,function() trigger.action.setUserFlag(121,1) end, nil)
missionCommands.addCommand('Medium', M5,function() trigger.action.setUserFlag(122,1) end, nil)
missionCommands.addCommand('Hight', M5,function() trigger.action.setUserFlag(123,1) end, nil)
missionCommands.addCommand('Zone 1', M6,function() trigger.action.setUserFlag(131,1) end, nil)
missionCommands.addCommand('Zone 2', M6,function() trigger.action.setUserFlag(132,1) end, nil)
missionCommands.addCommand('Zone 3', M6,function() trigger.action.setUserFlag(133,1) end, nil)
missionCommands.addCommand('Zone 4', M6,function() trigger.action.setUserFlag(134,1) end, nil)
missionCommands.addCommand('Zone 5', M6,function() trigger.action.setUserFlag(135,1) end, nil)
missionCommands.addCommand('Air defense', M7,function() trigger.action.setUserFlag(141,1) end, nil)
missionCommands.addCommand('Infantery', M7,function() trigger.action.setUserFlag(142,1) end, nil)
missionCommands.addCommand('Mooving targets', M7,function() trigger.action.setUserFlag(143,1) end, nil)
missionCommands.addCommand('Z1 Tank battle', M8,function() trigger.action.setUserFlag(171,1) end, nil)
missionCommands.addCommand('Z3 Tank battle', M8,function() trigger.action.setUserFlag(172,1) end, nil)
missionCommands.addCommand('Z4 Drone', M8,function() trigger.action.setUserFlag(173,1) end, nil)