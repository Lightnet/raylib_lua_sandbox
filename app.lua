print("init app...")

local World = require 'World'
local Component = require 'Component'
local System = require 'System'
local coms = require 'common_components'

local app = {
  _NAME = "app",
  _DESCRIPTION = 'Game Engine',
  _VERSION = "0.0.1",
  _LICENSE = "MIT",
  _LOVE = 11.5,
}

--///////////////////////////////////////////////
-- ECS
--///////////////////////////////////////////////
function new_renderer_system()
  local renderer = System.new {"body", "rect"}

  function renderer:load(entity)
    print "found one!"
  end

  function renderer:draw(entity)
    local body = entity:get "body"
    love.graphics.rectangle('fill', body.x,body.y,32,32)
  end

  return renderer
end

-- local player_type = {
--   {new_body, 300, 100},
--   {new_rectangle_component}
-- }

--///////////////////////////////////////////////
--
--///////////////////////////////////////////////

function app:initialize(options)
  rl.SetConfigFlags(rl.FLAG_VSYNC_HINT)
  rl.InitWindow(800, 450, "raylib lua - basic window")
  
  World:register(new_renderer_system())

  local entity = World:create()
  entity:add(coms.new_body(100,100))
  entity:add(coms.new_rectangle_component())
end

function app:update(dt)

end

function app:draw()
  rl.DrawText("Congrats! You created your first lua window!", 190, 200, 20, rl.LIGHTGRAY)
end

function app:cleanup()

end

return app