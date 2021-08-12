-- Define Object 
local A380=RAT:New("RAT_A380")      -- A380 RAT object
local B757=RAT:New("RAT_B757")      -- B757 RAT object
local B737=RAT:New("RAT_B737")      -- B737 RAT object
local A330=RAT:New("RAT_A330")      -- A330 RAT object
local CESSNA=RAT:New("RAT_Cessna")  -- CESSNA RAT object

-- Define A380
A380:SetCoalitionAircraft("neutral")
A380:ATC_Messages(false)
A380:Livery({"Air France", "Emirates", "Lufthansa"})
A380:SetDeparture({"Abu Dhabi Intl", "Shiraz Intl", "Kish Intl", "Dubai Intl"})
A380:SetDestination({"Shiraz Intl", "Sharjah Intl", "Al Ain Intl", "Dubai Intl"})
A380:SetTerminalType(AIRBASE.TerminalType.OpenBig)
A380:Commute()
A380:Spawn(3)

-- Define B757
B757:SetCoalitionAircraft("neutral")
B757:ATC_Messages(false)
B757:Livery({"Delta Airlines", "American Airways", "DHL Cargo"})
B757:SetDeparture({"Dubai Intl", "Al Maktoum Intl", "Kish Intl", "Fujairah Intl", "Bandar Abbas Intl"})
B757:SetDestination({"Kish Intl", "Bandar Abbas Intl", "Al-Bateen", "Fujairah Intl", "Bandar Abbas Intl"})
B757:SetTerminalType(AIRBASE.TerminalType.OpenBig)
B757:Commute()
B757:Spawn(3)

-- Define B737
B737:SetCoalitionAircraft("neutral")
B737:ATC_Messages(false)
B737:Livery({"Airzena", "Air Berlin", "Air Algerie", "British Airways"})
B737:SetDeparture({"Dubai Intl", "Al-Bateen", "Kish Intl", "Bandar Abbas Intl", "Shiraz Intl", "Abu Dhabi Intl", "Fujairah Intl", "Al Maktoum Intl"})
B737:SetDestination({"Kish Intl", "Dubai Intl", "Al Maktoum Intl", "Sharjah Intl", "Al Ain Intl", "Shiraz Intl", "Fujairah Intl", "Al Maktoum Intl"})
B737:SetTerminalType(AIRBASE.TerminalType.OpenBig)
B737:Commute()
B737:Spawn(3)

-- Define A330
A330:SetCoalitionAircraft("neutral")
A330:ATC_Messages(false)
A330:Livery({"AirAsia", "Air Canada", "Air China", "Aeroflot"})
A330:SetDeparture({"Dubai Intl", "Al-Bateen", "Kish Intl", "Bandar Abbas Intl", "Shiraz Intl", "Abu Dhabi Intl", "Fujairah Intl", "Al Maktoum Intl"})
A330:SetDestination({"Kish Intl", "Dubai Intl", "Al Maktoum Intl", "Sharjah Intl", "Al Ain Intl", "Shiraz Intl", "Fujairah Intl", "Al Maktoum Intl"})
A330:SetTerminalType(AIRBASE.TerminalType.OpenBig)
A330:Commute()
A330:Spawn(3)

-- Define CESSNA
CESSNA:SetCoalitionAircraft("neutral")
CESSNA:ATC_Messages(false)
CESSNA:Livery({"V5-BUG", "VH-JGA", "Silver eagle Blue", "Silver eagle Red"})
CESSNA:SetDeparture({"Abu Musa Island", "Sirri Island", "Bandar Lengeh", "Bandar-e-Jask", "Fujairah Intl"})
CESSNA:SetDestination({"Abu Musa Island", "Sirri Island", "Bandar Lengeh", "Bandar-e-Jask", "Fujairah Intl"})
CESSNA:SetTerminalType(AIRBASE.TerminalType.OpenBig)
CESSNA:Commute()
CESSNA:Spawn(3)