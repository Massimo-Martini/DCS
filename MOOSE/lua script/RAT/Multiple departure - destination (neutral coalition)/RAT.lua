-- BLUE COALITION

-- Object 
local A380=RAT:New("RAT_A380")  -- A380 RAT object

-- Define rute A380
A380:SetCoalitionAircraft("neutral")
A380:SetDeparture({"Abu Dhabi Intl", "Sharjah Intl"})
A380:SetDestination({"Sharjah Intl", "Al Ain Intl"})
A380:SetTerminalType(AIRBASE.TerminalType.OpenBig)
A380:Commute()
A380:Spawn(2)