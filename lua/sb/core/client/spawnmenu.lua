--
-- Created by IntelliJ IDEA.
-- User: Stijn
-- Date: 21/12/12
-- Time: 13:38
-- To change this template use File | Settings | File Templates.
--

local function SBTab()
    if usetab:GetBool() then
        spawnmenu.AddToolTab("Spacebuild", "SB")
    end
end

hook.Add("AddToolMenuTabs", "SBTab", SBTab)