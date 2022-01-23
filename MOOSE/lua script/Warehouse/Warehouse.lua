-- Define Warehouses.
local warehouse={}

-- ********** Al Minhad **********
warehouse.AlMinhad = WAREHOUSE:New(STATIC:FindByName("Warahouse Al Minhad"), "Al Minhad AFB")
warehouse.AlMinhad:Start()
warehouse.AlMinhad:SetSpawnZone( ZONE:FindByName("SpawnWHAlMinhad") )
warehouse.AlMinhad:SetSaveOnMissionEnd("C:\Users\Massimo\Saved Games\DCS.openbeta\Missions\Desert_Storm\Assets\\")


-- ********** Al Dhafra **********
warehouse.AlDhafra = WAREHOUSE:New(STATIC:FindByName("Warahouse Al Dhafra"), "Al Dhafra AFB")
warehouse.AlDhafra:Start()
warehouse.AlDhafra:SetSpawnZone( ZONE:FindByName("SpawnWHAlDhafra") )
warehouse.AlDhafra:SetSaveOnMissionEnd("C:\Users\Massimo\Saved Games\DCS.openbeta\Missions\Desert_Storm\Assets\\")

warehouse.AlDhafra:AddAsset("Fanteria", 20)
warehouse.AlDhafra:AddAsset("CH-47D", 5, WAREHOUSE.Attribute.AIR_TRANSPORTHELO)
--warehouse.AlDhafra:AddAsset("C-130", 5, WAREHOUSE.Attribute.AIR_TRANSPORTHELO)

warehouse.AlDhafra:AddRequest(warehouse.AlMinhad, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_INFANTRY, 1, WAREHOUSE.TransportType.HELICOPTER, WAREHOUSE.Quantity.ALL)