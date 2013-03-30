local Enemy = require 'nodes/enemy'
local gamestate = require 'vendor/gamestate'
local Timer = require 'vendor/timer'
local sound = require 'vendor/TEsound'

return {
    name = 'turkeyBoss',
    height = 108,
    width = 130,
    damage = 1,
    jumpkill = false,
    last_jump = 0,
    bb_width = 90,
    bb_height = 108,
    velocity = {x = 0, y = 0},
    hp = 8,
    tokens = 15,
    tokenTypes = { -- p is probability ceiling and this list should be sorted by it, with the last being 1
        { item = 'coin', v = 1, p = 0.9 },
        { item = 'health', v = 1, p = 1 }
    },
    animations = {
        jump = {
            right = {'loop', {'3-4,2'}, 0.25},
            left = {'loop', {'3-4,3'}, 0.25}
        },
        default = {
            right = {'loop', {'1-2,2'}, 0.25},
            left = {'loop', {'1-2,3'}, 0.25}
        },
        dying = {
            right = {'once', {'1-4,2'}, 0.25},
            left = {'once', {'1-4,3'}, 0.25}
        },
        enter = {
            right = {'once', {'1-3,1'}, 0.25},
            left = {'once', {'1-3,1'}, 0.25}
        },
    },
    enter = function( enemy )
        enemy.direction = math.random(2) == 1 and 'left' or 'right'
    end,
    die = function( enemy )
        
    
    
    
    
    end,
    update = function( dt, enemy, player, level )
        if enemy.dead then
            return
        end
        if enemy.velocity.y == 0 then enemy.state = 'enter' end
        -- local direction = player.position.x > enemy.position.x and -1 or 1
            
        -- enemy.last_jump = enemy.last_jump + dt
        -- if enemy.last_jump > 2.5+math.random() then
            -- enemy.state = 'jump'
            -- enemy.last_jump = 0
            -- enemy.velocity.y = -math.random(100,500)
            -- enemy.velocity.x = math.random(10,100)*direction
        -- end
        -- if enemy.velocity.y == 0 then
            -- enemy.state = 'default'
        -- end
        -- start moving in a direction once you escape the wall
        -- if enemy.state=='jump' and enemy.velocity.x==0 then
            -- enemy.velocity.x = 100*direction
        -- end
         
        -- if enemy.velocity.x < 0 then
            -- enemy.direction = 'right'
        -- elseif enemy.velocity.x > 0 then
            -- enemy.direction = 'left'
        -- end

    end    
}