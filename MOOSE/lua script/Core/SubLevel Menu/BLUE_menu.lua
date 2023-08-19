-- https://flightcontrol-master.github.io/MOOSE_DOCS/Documentation/Core.Menu.html
-- https://forum.dcs.world/topic/197841-nested-submenu-that-activates-triggers/ 
-- https://www.youtube.com/watch?v=v8gexx2Z17s&list=WL&index=17 
-- https://www.digitalcombatsimulator.com/en/files/3320466/ 

-- addSubMenu il menu è visibile sia dal team BLUE e RED
-- addSubMenuForCoalition visibile solo dal team BLUE

local M1 = missionCommands.addSubMenuForCoalition(coalition.side.BLUE, 'TR. A2A',nil)
local M2 = missionCommands.addSubMenuForCoalition(coalition.side.BLUE, 'TR. Sead',nil)
local M3 = missionCommands.addSubMenuForCoalition(coalition.side.BLUE, 'TR. Strike',nil)
local M4 = missionCommands.addSubMenuForCoalition(coalition.side.BLUE, 'TR. Cas',nil)
local M5 = missionCommands.addSubMenuForCoalition(coalition.side.BLUE, 'TR. Support/Logistic',nil)
local M6 = missionCommands.addSubMenuForCoalition(coalition.side.BLUE, 'Mission',nil)


missionCommands.addCommand('Escort', M1,function() trigger.action.setUserFlag(111,1) end, nil)
missionCommands.addCommand('Cap', M1,function() trigger.action.setUserFlag(112,1) end, nil)
missionCommands.addCommand('Intercept', M1,function() trigger.action.setUserFlag(113,1) end, nil)

missionCommands.addCommand('Easy', M2,function() trigger.action.setUserFlag(121,1) end, nil)
missionCommands.addCommand('Medium', M2,function() trigger.action.setUserFlag(122,1) end, nil)
missionCommands.addCommand('Hight', M2,function() trigger.action.setUserFlag(123,1) end, nil)

missionCommands.addCommand('A', M3,function() trigger.action.setUserFlag(131,1) end, nil)
missionCommands.addCommand('B', M3,function() trigger.action.setUserFlag(132,1) end, nil)
missionCommands.addCommand('C', M3,function() trigger.action.setUserFlag(133,1) end, nil)

missionCommands.addCommand('A', M4,function() trigger.action.setUserFlag(141,1) end, nil)
missionCommands.addCommand('B', M4,function() trigger.action.setUserFlag(142,1) end, nil)
missionCommands.addCommand('C', M4,function() trigger.action.setUserFlag(143,1) end, nil)

missionCommands.addCommand('A', M5,function() trigger.action.setUserFlag(151,1) end, nil)
missionCommands.addCommand('B', M5,function() trigger.action.setUserFlag(152,1) end, nil)
missionCommands.addCommand('C', M5,function() trigger.action.setUserFlag(153,1) end, nil)

missionCommands.addCommand('Mission 01', M6,function() trigger.action.setUserFlag(161,1) end, nil)
missionCommands.addCommand('Mission 02', M6,function() trigger.action.setUserFlag(162,1) end, nil)
missionCommands.addCommand('Mission 03', M6,function() trigger.action.setUserFlag(163,1) end, nil)
missionCommands.addCommand('Mission 04', M6,function() trigger.action.setUserFlag(164,1) end, nil)