Echo = Echo or {}

net.Receive("Echo_Notify", function()
    local msg = net.ReadString()
    chat.AddText(Color(120,200,255), "[Echo] ", Color(255,255,255), msg)
end)
