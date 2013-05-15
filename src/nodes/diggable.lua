local Timer = require 'vendor/timer'
local anim8 = require 'vendor/anim8'
local gamestate = require 'vendor/gamestate'
local Dirt = require 'nodes/dirt'

local Dig = {}
Dig.__index = Dig

function Dig.new(node, collider)
    local dig = {}
    setmetatable(dig, Dig)
    dig.node = node
    dig.collider = collider
    
    local level = gamestate.currentState()
    
    for x = 0, (node.width / 24) - 1 do
        for y = 0, (node.height / 24) - 1 do
            local dirtNode = {x = node.x + x * 24,
                              y = node.y + y * 24,
                              width = 24,
                              height = 24,
                              properties = node.properties,
                              type = 'dirt',
                             }
            local dirt = Dirt.new(dirtNode, collider)
            table.insert(level, dirt)
        end
    end
    
    return dig
end

return Dig
