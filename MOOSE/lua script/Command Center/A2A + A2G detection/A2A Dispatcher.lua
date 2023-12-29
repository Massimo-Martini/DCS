-- Creo il command center
BlueHQ = GROUP:FindByName( "BlueHQ", "HQ Astra")
BlueCommandCenter = COMMANDCENTER:New( BlueHQ, "Astra" )
--BlueCommandCenter:SetReferenceZones( "Combat" )

BlueA2AScoring = SCORING:New( "A2A Mission" )

-- Dichiara la missione per il Centro di Comando.
BlueA2AMission = MISSION:New( BlueCommandCenter, "A.T.O. A2A mission", "High", "Attack detected bandit", coalition.side.BLUE ):AddScoring( BlueA2AScoring )

-- Definisci la rete che rileverà il nemico.
BlueFACset = SET_GROUP:New():FilterPrefixes( "FAC" ):FilterCoalitions("blue"):FilterStart()
BlueFACareas = DETECTION_UNITS:New( BlueFACset )

-- Defenisco i gruppi di attacco
BlueGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterPrefixes( "Player" ):FilterStart()

A2A = TASK_A2A_DISPATCHER:New( BlueA2AMission, BlueGroups, BlueFACareas )
A2A:SetRefreshTimeInterval( 10 )

function A2A:OnAfterAssign( From, Event, To, Task, TaskUnit, PlayerName )
  Task:SetScoreOnProgress( "Player " .. PlayerName .. " destroyed a target", 20, TaskUnit )
  Task:SetScoreOnSuccess( "The task has been successfully completed!", 200, TaskUnit )
  Task:SetScoreOnFail( "The task has failed completion!", -100, TaskUnit )
end