-- https://flightcontrol-master.github.io/MOOSE_DOCS/Documentation/Core.Menu.html
-- https://forum.dcs.world/topic/197841-nested-submenu-that-activates-triggers/ 
-- https://www.youtube.com/watch?v=v8gexx2Z17s&list=WL&index=17 
-- https://www.digitalcombatsimulator.com/en/files/3320466/ 

-- addSubMenu il menu è visibile sia dal team BLUE e RED
-- addSubMenuForCoalition visibile solo dal team BLUE
local M1 = missionCommands.addSubMenu('TR. A2A',nil)
local M2 = missionCommands.addSubMenu('TR. A2G',nil)
local M3 = missionCommands.addSubMenu('TR. Support/Logistic',nil)
local M4 = missionCommands.addSubMenu('Mission',nil)
local M5 = missionCommands.addSubMenu('SEAD',M2)
local M6 = missionCommands.addSubMenu('STRIKE',M2)
local M7 = missionCommands.addSubMenu('CAS',M2)

missionCommands.addCommand('Escort', M1,function() trigger.action.setUserFlag(111,1) end, nil)
missionCommands.addCommand('CAP', M1,function() trigger.action.setUserFlag(112,1) end, nil)
missionCommands.addCommand('Intercept', M1,function() trigger.action.setUserFlag(113,1) end, nil)
missionCommands.addCommand('A', M3,function() trigger.action.setUserFlag(151,1) end, nil)
missionCommands.addCommand('B', M3,function() trigger.action.setUserFlag(152,1) end, nil)
missionCommands.addCommand('C', M3,function() trigger.action.setUserFlag(153,1) end, nil)
missionCommands.addCommand('Mission 01', M4,function() trigger.action.setUserFlag(161,1) end, nil)
missionCommands.addCommand('Mission 02', M4,function() trigger.action.setUserFlag(162,1) end, nil)
missionCommands.addCommand('Mission 03', M4,function() trigger.action.setUserFlag(163,1) end, nil)
missionCommands.addCommand('Mission 04', M4,function() trigger.action.setUserFlag(164,1) end, nil)
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