util.AddNetworkString("Echo_Notify")

function Echo.Notify(ply, msg)
    if not IsValid(ply) then return end
    net.Start("Echo_Notify")
    net.WriteString(msg)
    net.Send(ply)
end
