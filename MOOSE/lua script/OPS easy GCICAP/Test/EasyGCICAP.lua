-------------------------------------------------------------------------
-- https://flightcontrol-master.github.io/MOOSE_DOCS_DEVELOP/Documentation/Ops.EasyGCICAP.html
-- https://github.com/FlightControl-Master/MOOSE_MISSIONS/tree/develop/Ops/EasyGCICAP
-------------------------------------------------------------------------


-------------------------------------------------------------------------
-- BLUE TEAM
-------------------------------------------------------------------------

-- Kutaisi (con note) --
local WingKutaisi = EASYGCICAP:New("Kutaisi Operations",AIRBASE.Caucasus.Kutaisi,"blue","DAMI_EWR #Kutaisi")
WingKutaisi:SetDefaultCAPSpeed(350)
WingKutaisi:SetDefaultCAPDirection(270)
WingKutaisi:SetDefaultMissionRange(200)
WingKutaisi:SetMaxAliveMissions(6)
-- Aggiungi CAP da Kutaisi, saremo a 30k ft a 400 kn, direzione iniziale 20 gradi (Est), tratta 20NM
WingKutaisi:AddPatrolPointCAP(AIRBASE.Caucasus.Kutaisi,ZONE:FindByName("Blue Zone 1"):GetCoordinate(),30000,400,20,14)
-- Aggiungi uno Squadrone con modello, 20 cellule, abilità buona, Modex a partire da 102
WingKutaisi:AddSquadron("Kutaisi AirWing 1","CAP Kutaisi",AIRBASE.Caucasus.Kutaisi,20,AI.Skill.GOOD,102)
WingKutaisi:SetDefaultTakeOffType(cold)
-- Difenderemo il nostro confine
WingKutaisi:AddAcceptZone(ZONE_POLYGON:New( "Blue Border", GROUP:FindByName( "Blue Border" ) ))
-- Attaccheremo gli intrusi anche qui - le zone di conflitto possono sovrapporsi ai confini - zona di impegno limitata
WingKutaisi:AddConflictZone(ZONE_POLYGON:New("Red Defense Zone 1", GROUP:FindByName( "Red Defense Zone 1" )))
-- Lasceremo i rossi in pace sul loro territorio
WingKutaisi:AddRejectZone(ZONE_POLYGON:New( "Red Border", GROUP:FindByName( "Red Border" ) ))

-- Vaziani --
local WingVaziani = EASYGCICAP:New("Vaziani Operations",AIRBASE.Caucasus.Vaziani,"blue","DAMI_EWR #Vaziani")
WingVaziani:SetDefaultCAPSpeed(350)
WingVaziani:SetDefaultCAPDirection(360)
WingVaziani:SetDefaultMissionRange(200)
WingVaziani:SetMaxAliveMissions(6)
WingVaziani:AddPatrolPointCAP(AIRBASE.Caucasus.Vaziani,ZONE:FindByName("Blue Zone 2"):GetCoordinate(),30000,400,20,12)
WingVaziani:AddSquadron("Vaziani AirWing 1","CAP Vaziani",AIRBASE.Caucasus.Vaziani,20,AI.Skill.GOOD,102)
WingVaziani:SetDefaultTakeOffType(cold)
WingVaziani:AddAcceptZone(ZONE_POLYGON:New( "Blue Border", GROUP:FindByName( "Blue Border" ) ))
WingVaziani:AddConflictZone(ZONE_POLYGON:New("Red Defense Zone 2", GROUP:FindByName( "Red Defense Zone 2" )))
WingVaziani:AddRejectZone(ZONE_POLYGON:New( "Red Border", GROUP:FindByName( "Red Border" ) ))

-- Kobuleti --
local WingKobuleti = EASYGCICAP:New("Kobuleti Operations",AIRBASE.Caucasus.Kobuleti,"blue","DAMI_EWR #Kobuleti")
WingKobuleti:SetDefaultCAPSpeed(350)
WingKobuleti:SetDefaultCAPDirection(360)
WingKobuleti:SetDefaultMissionRange(200)
WingKobuleti:SetMaxAliveMissions(6)
WingKobuleti:AddPatrolPointCAP(AIRBASE.Caucasus.Kobuleti,ZONE:FindByName("Blue Zone 3"):GetCoordinate(),30000,400,20,20)
WingKobuleti:AddSquadron("Kobuleti AirWing 1","CAP Kobuleti",AIRBASE.Caucasus.Kobuleti,20,AI.Skill.GOOD,102)
WingKobuleti:SetDefaultTakeOffType(cold)
WingKobuleti:AddConflictZone(ZONE_POLYGON:New("Red Defense Zone 1", GROUP:FindByName( "Red Defense Zone 1" )))
WingKobuleti:AddRejectZone(ZONE_POLYGON:New( "Red Border", GROUP:FindByName( "Red Border" ) ))

-- Senaki-Kolkhi --
local EliSenaki = EASYGCICAP:New("Senaki Operations",AIRBASE.Caucasus.Senaki_Kolkhi,"blue","DAMI_EWR #Senaki")
EliSenaki:SetDefaultCAPSpeed(100)
EliSenaki:SetDefaultCAPDirection(360)
EliSenaki:SetDefaultMissionRange(150)
EliSenaki:SetMaxAliveMissions(6)
EliSenaki:AddPatrolPointCAP(AIRBASE.Caucasus.Senaki_Kolkhi,ZONE:FindByName("Blue Zone 4"):GetCoordinate(),30000,400,20,8)
EliSenaki:AddSquadron("Senaki EliWing 1","CAP Secure area",AIRBASE.Caucasus.Senaki_Kolkhi,20,AI.Skill.GOOD,102)
EliSenaki:SetDefaultTakeOffType(cold)
EliSenaki:AddConflictZone(ZONE_POLYGON:New("Red Defense Zone 1", GROUP:FindByName( "Red Defense Zone 1" )))
EliSenaki:AddRejectZone(ZONE_POLYGON:New( "Red Border", GROUP:FindByName( "Red Border" ) ))



-------------------------------------------------------------------------
-- RED TEAM
-------------------------------------------------------------------------

-- Mozdok --
local WingMozdok = EASYGCICAP:New("Mozdok Operations",AIRBASE.Caucasus.Mozdok,"red","AirDome_EWR #Mozdok")
WingMozdok:SetDefaultCAPSpeed(350)
WingMozdok:SetDefaultCAPDirection(180)
WingMozdok:SetDefaultMissionRange(200)
WingMozdok:SetMaxAliveMissions(6)
WingMozdok:AddPatrolPointCAP(AIRBASE.Caucasus.Mozdok,ZONE:FindByName("Red Zone 1"):GetCoordinate(),30000,400,20,15)
WingMozdok:AddSquadron("Mozdok AirWing 1","CAP Mozdok",AIRBASE.Caucasus.Mozdok,20,AI.Skill.GOOD,102)
WingMozdok:SetDefaultTakeOffType(cold)
WingMozdok:AddAcceptZone(ZONE_POLYGON:New( "Red Border", GROUP:FindByName( "Red Border" ) ))
WingMozdok:AddRejectZone(ZONE_POLYGON:New( "Blue Border", GROUP:FindByName( "Blue Border" ) ))

-- Maykop-Khanskaya --
local WingMaykop = EASYGCICAP:New("Maykop Operations",AIRBASE.Caucasus.Maykop_Khanskaya,"red","AirDome_EWR #Maykop")
WingMaykop:SetDefaultCAPSpeed(350)
WingMaykop:SetDefaultCAPDirection(135)
WingMaykop:SetDefaultMissionRange(200)
WingMaykop:SetMaxAliveMissions(6)
WingMaykop:AddPatrolPointCAP(AIRBASE.Caucasus.Maykop_Khanskaya,ZONE:FindByName("Red Zone 2"):GetCoordinate(),30000,400,20,15)
WingMaykop:AddSquadron("Maykop AirWing 1","CAP Maykop",AIRBASE.Caucasus.Maykop_Khanskaya,20,AI.Skill.GOOD,102)
WingMaykop:SetDefaultTakeOffType(cold)
WingMaykop:AddAcceptZone(ZONE_POLYGON:New( "Red Border", GROUP:FindByName( "Red Border" ) ))
WingMaykop:AddRejectZone(ZONE_POLYGON:New( "Blue Border", GROUP:FindByName( "Blue Border" ) ))

-- Krasnodar-Center --
local WingKrasnodar = EASYGCICAP:New("Krasnodar Operations",AIRBASE.Caucasus.Krasnodar_Center,"red","AirDome_EWR #Krasnodar")
WingKrasnodar:SetDefaultCAPSpeed(350)
WingKrasnodar:SetDefaultCAPDirection(225)
WingKrasnodar:SetDefaultMissionRange(200)
WingKrasnodar:SetMaxAliveMissions(6)
WingKrasnodar:AddPatrolPointCAP(AIRBASE.Caucasus.Krasnodar_Center,ZONE:FindByName("Red Zone 3"):GetCoordinate(),30000,400,20,20)
WingKrasnodar:AddSquadron("Krasnodar AirWing 1","CAP Krasnodar",AIRBASE.Caucasus.Krasnodar_Center,20,AI.Skill.GOOD,102)
WingKrasnodar:SetDefaultTakeOffType(cold)
WingKrasnodar:AddAcceptZone(ZONE_POLYGON:New( "Red Border", GROUP:FindByName( "Red Border" ) ))
WingKrasnodar:AddRejectZone(ZONE_POLYGON:New( "Blue Border", GROUP:FindByName( "Blue Border" ) ))