do
local statObj = coalition.getStaticObjects(2) 					--1 Red coalition 2 blue coalition
	for i, static in pairs(statObj) do
		local staticName = static:getName()
			if string.match(staticName, "4temp Block.*") then
				static:destroy()				-- removes the object
			end
	end
end