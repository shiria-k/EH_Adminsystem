Echo = Echo or {}

function Echo.IsValidPlayer(ply)
    return IsValid(ply) and ply:IsPlayer()
end

function Echo.IsAdminAllowed(ply)
    if not Echo.IsValidPlayer(ply) then return false end
    local group = string.lower(ply:GetUserGroup() or "user")
    return Echo.Config.AdminGroups and Echo.Config.AdminGroups[group] == true
end

function Echo.DebugPrint(msg)
    if Echo.Config and Echo.Config.Debug then
        print("[Echo Debug] " .. tostring(msg))
    end
end
