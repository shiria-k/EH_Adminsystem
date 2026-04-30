-- EH Adminsystem - Server Commands
-- Safe sandbox console commands for admins.

Echo = Echo or {}

local function CanUseCommand(ply)
    if not IsValid(ply) then
        return true
    end

    if Echo.IsAdminAllowed then
        return Echo.IsAdminAllowed(ply)
    end

    return ply:IsAdmin() or ply:IsSuperAdmin()
end

concommand.Add("eh_adminsystem_reload", function(ply)
    if not CanUseCommand(ply) then
        if Echo.Notify then
            Echo.Notify(ply, "Keine Berechtigung fuer diesen Befehl.")
        end
        return
    end

    include("echo/sh_config.lua")
    include("echo/sh_utils.lua")

    if Echo.Notify and IsValid(ply) then
        Echo.Notify(ply, "EH Adminsystem wurde neu geladen.")
    end

    print("[EH Adminsystem] Reload command executed.")
end)
