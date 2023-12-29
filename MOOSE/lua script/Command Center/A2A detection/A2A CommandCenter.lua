-- *************************** RISORSE ***************************
-- https://flightcontrol-master.github.io/MOOSE_DOCS/Documentation/Tasking.CommandCenter.html 
-- https://flightcontrol-master.github.io/MOOSE_DOCS/Documentation/Tasking.Mission.html
-- https://github.com/FlightControl-Master/MOOSE_MISSIONS/tree/master/TAD%20-%20Task%20Dispatching/A2A%20-%20Air%202%20Air%20Task%20Dispatching/TAD-A2A-000%20-%20AREAS%20-%20Detection%20test
-- ****************************************************************

-- Creo il command center
BlueHQ = GROUP:FindByName( "BlueHQ")
BlueCommandCenter = COMMANDCENTER:New( BlueHQ, "Astra" )

BlueScoring = SCORING:New( "A2A Dispatching demo" )

-- Dichiara la missione per il Centro di Comando.
BlueMission = MISSION:New( BlueCommandCenter, "A2A Mission", "High", "Watch the air enemy units being detected.", coalition.side.BLUE ):AddScoring( BlueScoring )

-- Definisci la rete che rileverà il nemico.
BlueEWRSet = SET_GROUP:New():FilterPrefixes( "IAADSBlue EWR" ):FilterCoalitions("blue"):FilterStart()
-- Definisco l'area di rilevamento
BlueEWRDetection = DETECTION_AREAS:New( BlueEWRSet, 30000 ) --3000=3km
BlueEWRDetection:SetFriendliesRange( 80000 )
BlueEWRDetection:SetRefreshTimeInterval( 20 )

-- Defenisco i gruppi di attacco
BlueAttackGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterPrefixes( "Fighter" ):FilterStart()

TaskDispatcher = TASK_A2A_DISPATCHER:New( BlueMission, BlueAttackGroups, BlueEWRDetection )
TaskDispatcher:SetRefreshTimeInterval( 10 )