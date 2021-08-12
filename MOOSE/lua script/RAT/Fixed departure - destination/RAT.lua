-- Fixed airport and destinations with mood civil aircraft
local A380=RAT:New("RAT_A380")                      -- Create RAT object
A380:SetDeparture("Abu Dhabi Intl")                 -- fixed departure
A380:SetDestination("Dubai Intl")                   -- fixed destination
A380:SetTerminalType(AIRBASE.TerminalType.OpenBig)  -- big terminal only
A380:Commute()                                      -- at destination new aircraft fly back
A380:Spawn(1)                                       -- Spawn five aircraft.