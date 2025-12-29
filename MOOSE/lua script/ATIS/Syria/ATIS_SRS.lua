-- ATIS SYRIA -- 062022 by [BEARS] Boyington
-- the objective is to get real world frequencies for available atis station for Syria map
-- SRS : Don't forget to change the SRS Path below (mysrspath)

mysrspath = "C:\\Program Files\\DCS-SimpleRadio-Standalone"
myvoicegender ="male"
mylanguage="en-US"

-- Incirlik AB 129.75 LTAG 05/23
atisIncirlik=ATIS:New(AIRBASE.Syria.Incirlik,129.75)
atisIncirlik:SetSRS(mysrspath, myvoicegender, mylanguage)
atisIncirlik:SetTowerFrequencies({360.1, 122.100, 38.700, 3.900})
atisIncirlik:SetTACAN(21) --DAN
atisIncirlik:AddILS(109.3, "05") --055°
atisIncirlik:AddILS(111.70, "23") --235°
atisIncirlik:SetMapMarks()
atisIncirlik:ReportQNHOnly() 
atisIncirlik:ReportZuluTimeOnly() 
atisIncirlik:Start()

-- Damascus 128.22 OSDI 05/23
atisDamascus=ATIS:New(AIRBASE.Syria.Damascus,128.22)
atisDamascus:SetSRS(mysrspath, myvoicegender, mylanguage)
atisDamascus:SetTowerFrequencies({252.650, 118.500, 41.100, 5.100})
atisDamascus:SetActiveRunway("R")
atisDamascus:SetVOR(116.00) --DAM
atisDamascus:AddILS(109.9, "23") --230°
atisDamascus:AddILS(111.1, "05") --050°
atisDamascus:SetMapMarks()
atisDamascus:ReportQNHOnly() 
atisDamascus:ReportZuluTimeOnly() 
atisDamascus:Start()

-- Gazipasa 120.95 LTFG 08/26
atisGazipasa=ATIS:New(AIRBASE.Syria.Gazipasa,120.95)
atisGazipasa:SetSRS(mysrspath, myvoicegender, mylanguage)
atisGazipasa:SetTowerFrequencies({251.650, 119.250, 40.10, 4.600})
atisGazipasa:SetVOR(114.20) --GZP
atisGazipasa:AddILS(108.5, "08") --086°
atisGazipasa:SetMapMarks()
atisGazipasa:ReportQNHOnly() 
atisGazipasa:ReportZuluTimeOnly() 
atisGazipasa:Start()

-- Hatay 121.25 LTDA 04/22
atisHatay=ATIS:New(AIRBASE.Syria.Hatay,121.25)
atisHatay:SetSRS(mysrspath, myvoicegender, mylanguage)
atisHatay:SetTowerFrequencies({250.250, 128.500, 38.650, 3.875})
atisHatay:SetVOR(112.05) --HTY
atisHatay:AddILS(108.9, "04") --044°
atisHatay:AddILS(108.15, "22") --224°
atisHatay:SetMapMarks()
atisHatay:ReportQNHOnly() 
atisHatay:ReportZuluTimeOnly() 
atisHatay:Start()

-- Paphos 127.32 LCPH 11/29
atisPaphos=ATIS:New(AIRBASE.Syria.Paphos,127.32)
atisPaphos:SetSRS(mysrspath, myvoicegender, mylanguage)
atisPaphos:SetTowerFrequencies({251.850, 119.900, 40.300, 4.700})
atisPaphos:SetTACAN(79) --AK
atisPaphos:SetVOR(117.9) --PHA
atisPaphos:AddILS(108.9, "29") --294°
atisPaphos:SetMapMarks()
atisPaphos:ReportQNHOnly() 
atisPaphos:ReportZuluTimeOnly() 
atisPaphos:Start()

-- Haifa 135.4 LLHA 16/34
atisHaifa=ATIS:New(AIRBASE.Syria.Haifa,135.4)
atisHaifa:SetSRS(mysrspath, myvoicegender, mylanguage)
atisHaifa:SetTowerFrequencies({250.15, 127.80, 38.55, 3.825})
atisHaifa:SetMapMarks()
atisHaifa:ReportQNHOnly() 
atisHaifa:ReportZuluTimeOnly() 
atisHaifa:Start()

-- Larnaca 126.55 LCLK 04/22
atisLarnaca=ATIS:New(AIRBASE.Syria.Larnaca,126.55)
atisLarnaca:SetSRS(mysrspath, myvoicegender, mylanguage)
atisLarnaca:SetTowerFrequencies({251.900, 121.20, 40.350, 4.725})
atisLarnaca:SetVOR(112.8) --LCA
atisLarnaca:AddILS(110.8, "22") --228°
atisLarnaca:SetMapMarks()
atisLarnaca:ReportQNHOnly() 
atisLarnaca:ReportZuluTimeOnly() 
atisLarnaca:Start()

-- Akrotiri 125.00 LCRA 10/28
atisAkrotiri=ATIS:New(AIRBASE.Syria.Akrotiri,125.00)
atisAkrotiri:SetSRS(mysrspath, myvoicegender, mylanguage)
atisAkrotiri:SetTowerFrequencies({251.750, 128.00, 40.200, 4.650})
atisAkrotiri:SetTACAN(107) --AK
atisAkrotiri:SetVOR(116.00)
atisAkrotiri:AddILS(109.7, "28") --291°
atisAkrotiri:SetMapMarks()
atisAkrotiri:ReportQNHOnly() 
atisAkrotiri:ReportZuluTimeOnly() 
atisAkrotiri:Start()

-- Gaziantep 119.27 LTAJ 10/28
atisGaziantep=ATIS:New(AIRBASE.Syria.Gaziantep,119.27)
atisGaziantep:SetSRS(mysrspath, myvoicegender, mylanguage)
atisGaziantep:SetTowerFrequencies({250.050, 120.100, 38.450, 3.775})
atisGaziantep:SetVOR(116.70) --GAZ
atisGaziantep:AddILS(109.1, "28") --286°
atisGaziantep:SetMapMarks()
atisGaziantep:ReportQNHOnly() 
atisGaziantep:ReportZuluTimeOnly() 
atisGaziantep:Start()

-- Adana_Sakirpasa 119.22 LTAF 05/23
atisAdana_Sakirpasa=ATIS:New(AIRBASE.Syria.Adana_Sakirpasa,119.22)
atisAdana_Sakirpasa:SetSRS(mysrspath, myvoicegender, mylanguage)
atisAdana_Sakirpasa:SetTowerFrequencies({251.00, 121.100, 39.450, 4.275})
atisAdana_Sakirpasa:SetVOR(112.70) --ADA
atisAdana_Sakirpasa:AddILS(108.70, "05") --056°
atisAdana_Sakirpasa:SetMapMarks()
atisAdana_Sakirpasa:ReportQNHOnly() 
atisAdana_Sakirpasa:ReportZuluTimeOnly() 
atisAdana_Sakirpasa:Start()

-- Beirut_Rafic_Hariri 120.60 OLBA 03/21 16/34 17/35
atisBeirut_Rafic_Hariri=ATIS:New(AIRBASE.Syria.Beirut_Rafic_Hariri,120.60)
atisBeirut_Rafic_Hariri:SetSRS(mysrspath, myvoicegender, mylanguage)
atisBeirut_Rafic_Hariri:SetTowerFrequencies({252.600, 118.900, 41.050, 5.075})
atisBeirut_Rafic_Hariri:SetVOR(112.60) --KAD
atisBeirut_Rafic_Hariri:AddILS(110.70, "03") --035°
atisBeirut_Rafic_Hariri:AddILS(110.10, "16") --169°
atisBeirut_Rafic_Hariri:AddILS(109.50, "17") --179°
atisBeirut_Rafic_Hariri:SetMapMarks()
atisBeirut_Rafic_Hariri:ReportQNHOnly() 
atisBeirut_Rafic_Hariri:ReportZuluTimeOnly() 
atisBeirut_Rafic_Hariri:Start()

--- Airbases of the Syria map:
--
-- AIRBASE.Syria.Kuweires
-- AIRBASE.Syria.Marj_Ruhayyil
-- AIRBASE.Syria.Kiryat_Shmona
-- AIRBASE.Syria.Marj_as_Sultan_North
-- AIRBASE.Syria.Eyn_Shemer
-- AIRBASE.Syria.Incirlik
-- AIRBASE.Syria.Damascus
-- AIRBASE.Syria.Bassel_Al_Assad
-- AIRBASE.Syria.Rosh_Pina
-- AIRBASE.Syria.Aleppo
-- AIRBASE.Syria.Al_Qusayr
-- AIRBASE.Syria.Wujah_Al_Hajar
-- AIRBASE.Syria.Al_Dumayr
-- AIRBASE.Syria.Gazipasa
-- AIRBASE.Syria.Hatay
-- AIRBASE.Syria.Nicosia
-- AIRBASE.Syria.Pinarbashi
-- AIRBASE.Syria.Paphos
-- AIRBASE.Syria.Kingsfield
-- AIRBASE.Syria.Thalah
-- AIRBASE.Syria.Haifa
-- AIRBASE.Syria.Khalkhalah
-- AIRBASE.Syria.Megiddo
-- AIRBASE.Syria.Lakatamia
-- AIRBASE.Syria.Rayak
-- AIRBASE.Syria.Larnaca
-- AIRBASE.Syria.Mezzeh
-- AIRBASE.Syria.Gecitkale
-- AIRBASE.Syria.Akrotiri
-- AIRBASE.Syria.Naqoura
-- AIRBASE.Syria.Gaziantep
-- AIRBASE.Syria.Sayqal
-- AIRBASE.Syria.Tiyas
-- AIRBASE.Syria.Shayrat
-- AIRBASE.Syria.Taftanaz
-- AIRBASE.Syria.H4
-- AIRBASE.Syria.King_Hussein_Air_College
-- AIRBASE.Syria.Rene_Mouawad
-- AIRBASE.Syria.Jirah
-- AIRBASE.Syria.Ramat_David
-- AIRBASE.Syria.Qabr_as_Sitt
-- AIRBASE.Syria.Minakh
-- AIRBASE.Syria.Adana_Sakirpasa
-- AIRBASE.Syria.Palmyra
-- AIRBASE.Syria.Hama
-- AIRBASE.Syria.Ercan
-- AIRBASE.Syria.Marj_as_Sultan_South
-- AIRBASE.Syria.Tabqa
-- AIRBASE.Syria.Beirut_Rafic_Hariri
-- AIRBASE.Syria.An_Nasiriyah
-- AIRBASE.Syria.Abu_al_Duhur
-- AIRBASE.Syria.At_Tanf
-- AIRBASE.Syria.H3
-- AIRBASE.Syria.H3_Northwest
-- AIRBASE.Syria.H3_Southwest
-- AIRBASE.Syria.Kharab_Ishk
-- AIRBASE.Syria.Raj_al_Issa_East
-- AIRBASE.Syria.Raj_al_Issa_West
-- AIRBASE.Syria.Ruwayshid
-- AIRBASE.Syria.Sanliurfa
-- AIRBASE.Syria.Tal_Siman
-- AIRBASE.Syria.Deir_ez_Zor