-- Random airport and destinations with mood civil aircraft
local A380=RAT:New("RAT_A380")                      -- Create RAT object
A380:SetTerminalType(AIRBASE.TerminalType.OpenBig)  -- big terminal
A380:Spawn(5)                                       -- Spawn five aircraft.