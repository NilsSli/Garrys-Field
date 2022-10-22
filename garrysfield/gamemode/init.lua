AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")


function GM:PlayerSpawn(ply)
    ply:SetGravity(1)
    ply:SetMaxHealth(100)
    ply:SetMaxArmor(100)
    ply:SetRunSpeed(200)
    ply:SetWalkSpeed(100)
    ply:SetupHands()
end

function GM:PlayerInitialSpawn(ply)
  
end

function GM:OnNPCKilled(npc, attacker, inflictor)
    local randomarmor = math.random(1, 5)
    if (attacker:Armor() > attacker:GetMaxArmor()) then
        return
    else
        attacker:SetArmor(attacker:Armor() + randomarmor)
    end
end

function GM:PlayerDeath(victim, inflictor, attacker)
    
end

function GM:PlayerDisconnected(ply)
 
end

function GM:ShutDown()
 
end
