-------------------------------------------------------------------------
-- https://flightcontrol-master.github.io/MOOSE_DOCS/Documentation/Functional.Mantis.html
-- https://github.com/FlightControl-Master/MOOSE_MISSIONS/tree/master/Functional/Mantis
-------------------------------------------------------------------------


-------------------------------------------------------------------------
-- BLUE TEAM
-------------------------------------------------------------------------
BlueMantis = MANTIS:New("Pioppo","Blue SAM","Blue EWR",nil,"blue",false,"Blue Awacs")
BlueMantis:Debug(true)
BlueMantis.checkforfriendlies = true  
BlueMantis:Start()


-------------------------------------------------------------------------
-- RED TEAM
-------------------------------------------------------------------------
RedMantis = MANTIS:New("Airdome","Red SAM","Red EWR",nil,"red",false,"Red Awacs")
RedMantis:Debug(true)
RedMantis.checkforfriendlies = true  
RedMantis:Start()