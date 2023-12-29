-- Creo il command center
BlueHQ = GROUP:FindByName( "BlueHQ", "HQ Astra")
BlueCommandCenter = COMMANDCENTER:New( BlueHQ, "Astra" )
--BlueCommandCenter:SetReferenceZones( "Combat" )

BlueA2GScoring = SCORING:New( "A2G Mission" )

-- Dichiara la missione per il Centro di Comando.
BlueA2GMission = MISSION:New( BlueCommandCenter, "A.T.O. A2G mission", "High", "Attack detected units", coalition.side.BLUE ):AddScoring( BlueA2GScoring )

-- Definisci la rete che rileverà il nemico.
BlueFACset = SET_GROUP:New():FilterPrefixes( "FAC" ):FilterCoalitions("blue"):FilterStart()
BlueFACareas = DETECTION_UNITS:New( BlueFACset )

-- Defenisco i gruppi di attacco
BlueGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterPrefixes( "Player" ):FilterStart()

A2G = TASK_A2G_DISPATCHER:New( BlueA2GMission, BlueGroups, BlueFACareas )
A2G:SetRefreshTimeInterval( 10 )

function A2G:OnAfterAssign( From, Event, To, Task, TaskUnit, PlayerName )
  Task:SetScoreOnProgress( "Player " .. PlayerName .. " destroyed a target", 20, TaskUnit )
  Task:SetScoreOnSuccess( "The task has been successfully completed!", 200, TaskUnit )
  Task:SetScoreOnFail( "The task has failed completion!", -100, TaskUnit )
end