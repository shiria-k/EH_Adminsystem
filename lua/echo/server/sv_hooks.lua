hook.Add("PlayerSpawn", "Echo_PlayerSpawn", function(ply)
    timer.Simple(0, function()
        if not IsValid(ply) then return end
        ply:StripWeapons()
        ply:AllowFlashlight(true)
    end)
end)

hook.Add("PlayerNoClip", "Echo_BlockNoClip", function(ply)
    return Echo.IsAdminAllowed and Echo.IsAdminAllowed(ply)
end)
