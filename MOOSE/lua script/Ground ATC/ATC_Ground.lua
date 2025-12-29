-- This creates a new ATC_GROUND_CAUCASUS object.

-- Monitor all the airbases.
ATC_Ground = ATC_GROUND_CAUCASUS:New()

-- Monitor specific airbases only.

ATC_Ground = ATC_GROUND_CAUCASUS:New(
  { AIRBASE.Caucasus.Gelendzhik,     
    AIRBASE.Caucasus.Krymsk          
  }                                  
)  



-- Monitor all the airbases.
ATC_Ground = ATC_GROUND_NEVADA:New()

-- Monitor specific airbases.
ATC_Ground = ATC_GROUND_NEVADA:New(              
  { AIRBASE.Nevada.Laughlin_Airport,                        
    AIRBASE.Nevada.Lincoln_County,               
    AIRBASE.Nevada.North_Las_Vegas,              
    AIRBASE.Nevada.McCarran_International_Airport
  }                                              
) 



-- Monitor for these clients the airbases.
AirbasePoliceCaucasus = ATC_GROUND_PERSIANGULF:New()

-- Monitor specific airbases.
ATC_Ground = ATC_GROUND_PERSIANGULF:New( 
  { AIRBASE.PersianGulf.Kerman_Airport,
    AIRBASE.PersianGulf.Al_Minhad_AB 
  } 
)