-- https://flightcontrol-master.github.io/MOOSE_DOCS_DEVELOP/Documentation/Wrapper.Group.html
-- https://flightcontrol-master.github.io/MOOSE_DOCS/Documentation/Core.Spawn.html
-- https://github.com/FlightControl-Master/MOOSE_MISSIONS/tree/master/SPA%20-%20Spawning

-- script originale
BASE:TraceClass('EVENT')
BASE:TraceClass('SPAWN')
BASE:TraceClass('ZONE')
BASE:TraceLevel(1)
BASE:TraceClass("DATABASE")

Spawn_Vehicle_1 = SPAWN:New( "Spawn Vehicle 1" )
Spawn_Group_1 = Spawn_Vehicle_1:Spawn()


-- VEICOLI EMERGENZA
-- impostare trigger "mission start" nome "trace"
BASE:TraceClass('EVENT')
BASE:TraceClass('SPAWN')
BASE:TraceClass('ZONE')
BASE:TraceLevel(1)
BASE:TraceClass("DATABASE")

-- spawn sul trigger
EmergencyPompieri = SPAWN:New( "Pompieri 1" )
EmergencyPompieri:InitLimit(1, 99)
EmergencyPompieri1 = EmergencyPompieri:Spawn()
-- destroy
EmergencyPompieri1:Destroy( false )