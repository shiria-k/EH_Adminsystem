Echo = Echo or {}
Echo.Version = "1.0.0"

local function EchoInclude(path)
    if SERVER then AddCSLuaFile(path) end
    include(path)
end

local function EchoServer(path)
    if SERVER then include(path) end
end

local function EchoClient(path)
    if SERVER then AddCSLuaFile(path) else include(path) end
end

EchoInclude("echo/sh_config.lua")
EchoInclude("echo/sh_utils.lua")
EchoServer("echo/server/sv_init.lua")
EchoServer("echo/server/sv_hooks.lua")
EchoServer("echo/server/sv_commands.lua")
EchoClient("echo/client/cl_init.lua")
EchoClient("echo/client/cl_hooks.lua")
EchoClient("echo/client/cl_hud.lua")

print("[Echo Sandbox] Loaded.")