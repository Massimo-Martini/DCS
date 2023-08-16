-- Blue
-- creo la rete EWR per i blue
DetectionGroupBlue = SET_GROUP:New()
DetectionGroupBlue:FilterPrefixes( { "Overlord", "Galaxy_EWR" } )
DetectionGroupBlue:FilterStart()

-- definisco i range
EWR_Blue = DETECTION_AREAS:New( DetectionGroupBlue, 30000 )
A2ADispatcher_Blue = AI_A2A_DISPATCHER:New( EWR_Blue )
A2ADispatcher_Blue:SetEngageRadius( 60000 )
A2ADispatcher_Blue:SetGciRadius(135000)

-- definisco i confini dei blue
BlueBorderZone = ZONE_POLYGON:New( "BLUE_Border", GROUP:FindByName( "BLUE_Border" ) )
A2ADispatcher_Blue:SetBorderZone( BlueBorderZone )

-- definisco gli squadroni
A2ADispatcher_Blue:SetSquadron( "Bulldogs", AIRBASE.PersianGulf.Al_Minhad_AB, { "CAPblue_one" }, 6 )
A2ADispatcher_Blue:SetSquadron( "Kunsan", AIRBASE.PersianGulf.Al_Minhad_AB, { "SCRAMBLEblue_one" }, 6 )
A2ADispatcher_Blue:SetSquadronTakeoffFromParkingHot( "Bulldogs" )
A2ADispatcher_Blue:SetSquadronTakeoffFromRunway( "Kunsan" )
A2ADispatcher_Blue:SetSquadronLandingAtEngineShutdown( "Bulldogs", "Kunsan")
A2ADispatcher_Blue:SetSquadronGrouping( "Bulldogs", 2 )
A2ADispatcher_Blue:SetSquadronGrouping( "Kunsan", 2 )

-- definisco le zone di cap
BlueCAPZoneOne = ZONE:New( "BLUE Cap one")
A2ADispatcher_Blue:SetSquadronCap( "Bulldogs", BlueCAPZoneOne, 8000, 20000, 600, 800, 800, 1200, "BARO" )
A2ADispatcher_Blue:SetSquadronCapInterval( "Bulldogs", 1, 60, 120, 1 )

-- GCI esegui
A2ADispatcher_Blue:SetSquadronGci( "Kunsan", 900, 1200 )

-- rifornimento
--A2ADispatcher_Blue:SetSquadronFuelThreshold( "Bulldogs", 0.3 )
--A2ADispatcher_Blue:SetSquadronTanker( "Bulldogs", "TexacoOne" )
A2ADispatcher_Blue:SetDefaultFuelThreshold( 0.3 )
A2ADispatcher_Blue:SetDefaultTanker( "TexacoOne" )



-- Red
-- creo la rete EWR per i red
DetectionGroupRed = SET_GROUP:New()
DetectionGroupRed:FilterPrefixes( { "Focus", "IADS_EWR" } )
DetectionGroupRed:FilterStart()

-- definisco i range
EWR_Red = DETECTION_AREAS:New( DetectionGroupRed, 30000 )
A2ADispatcher_Red = AI_A2A_DISPATCHER:New( EWR_Red )
A2ADispatcher_Red:SetEngageRadius( 60000 )
A2ADispatcher_Red:SetGciRadius( 135000 )

-- definisco i confini dei red
RedBorderZone = ZONE_POLYGON:New( "RED_Border", GROUP:FindByName( "RED_Border" ) )
A2ADispatcher_Red:SetBorderZone( RedBorderZone )

-- definisco gli squadroni
A2ADispatcher_Red:SetSquadron( "010thSquadron", AIRBASE.PersianGulf.Havadarya, { "CAPred_one" }, 6 )
A2ADispatcher_Red:SetSquadron( "014thSquadron", AIRBASE.PersianGulf.Havadarya, { "SCRAMBLEred_one" }, 6 )
A2ADispatcher_Red:SetSquadronTakeoffFromParkingHot( "010thSquadron" )
A2ADispatcher_Red:SetSquadronTakeoffFromRunway( "014thSquadron" )
A2ADispatcher_Red:SetSquadronLandingAtEngineShutdown( "010thSquadron", "014thSquadron" )
A2ADispatcher_Red:SetSquadronGrouping( "010thSquadron", 2 )
A2ADispatcher_Red:SetSquadronGrouping( "014thSquadron", 2 )

-- definisco le zone di cap
RedCAPZoneOne = ZONE:New( "RED Cap one")
A2ADispatcher_Red:SetSquadronCap( "010thSquadron", RedCAPZoneOne, 8000, 20000, 600, 800, 800, 1200, "BARO" )
A2ADispatcher_Red:SetSquadronCapInterval( "010thSquadron", 1, 60, 120, 1 )

-- GCI esegui
A2ADispatcher_Red:SetSquadronGci( "014thSquadron", 900, 1200 )

-- rifornimento
A2ADispatcher_Red:SetDefaultFuelThreshold( 0.3 )
A2ADispatcher_Red:SetDefaultTanker( "RabelOne" )