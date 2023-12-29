BlueHQ = GROUP:FindByName( "BlueHQ", "HQ Astra")
BlueCommandCenter = COMMANDCENTER:New( BlueHQ, "Astra" )
--BlueCommandCenter:SetReferenceZones( "Combat" )

BlueSTRIKEScoring = SCORING:New( "Strike Mission" )

-- Dichiara la missione per il Centro di Comando.
BlueSTRIKEMission = MISSION:New( BlueCommandCenter, "A.T.O. STRIKE mission", "High", "Attack detected object", coalition.side.BLUE ):AddScoring( BlueSTRIKEScoring )

-- Defenisco i gruppi di attacco
BlueGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterPrefixes( "Player" ):FilterStart()

TargetSetUnit = SET_STATIC:New():FilterCoalitions("red"):FilterPrefixes("Target"):FilterStart()
TaskBAI = TASK_A2G_BAI:New(BlueSTRIKEMission, BlueGroups, "STRIKE", TargetSetUnit)

function TaskBAI:OnAfterAssign( From, Event, To, Task, TaskUnit, PlayerName )
  Task:SetScoreOnProgress( "Player " .. PlayerName .. "Target object destroyed", 21, TaskUnit )
  Task:SetScoreOnSuccess( "The task strike has been successfully completed!", 500, TaskUnit )
  Task:SetScoreOnFail( "The task strike has failed completion!", -1, TaskUnit )
end