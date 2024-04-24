-- https://www.reddit.com/r/lua/comments/wi0bau/whats_the_correct_way_to_run_a_lua_file_that_uses/
-- 
print("init app...")
--package.path = 'src/?.lua;' .. package.path
package.path = 'engine/?.lua;' .. package.path
print("package.path: " , package.path)
--local socket = require("socket")--nope
local World = require 'world'
local Component = require 'component'
local System = require 'system'
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


local camera = {}
local cubePosition = nil

function app:initialize(options)
  rl.SetConfigFlags(rl.FLAG_VSYNC_HINT)
  rl.InitWindow(800, 450, "raylib lua - basic window")
  
  World:register(new_renderer_system())

  local entity = World:create()
  entity:add(coms.new_body(100,100))
  entity:add(coms.new_rectangle_component())
  --print(rl.vector3)
  -- https://github.com/TSnake41/raylib-lua/blob/master/examples/models_waving_cubes.lua
  -- camera.position = rl.new("Vector3", 10.0, 10.0, 10.0)  -- Camera position
  -- camera.target = rl.new("Vector3",0.0, 0.0, 0.0)      -- Camera looking at point
  -- camera.up = rl.new("Vector3",0.0, 1.0, 0.0)          -- Camera up vector (rotation towards target)
  -- camera.fovy = 45.0                          -- Camera field-of-view Y

  camera = rl.new("Camera3D", {
    position = { 30, 20, 30 },
    target = { 0, 0, 0 },
    up = { 0, 1, 0 },
    fovy = 70,
    type = rl.CAMERA_PERSPECTIVE
    --type = rl.CameraMode.FREE
  })

  cubePosition = rl.new("Vector3",0.0, 0.0, 0.0)

  --rl.SetCameraMode(camera, rl.CameraMode.FREE)      -- Set a free camera mode

end

function app:update(dt)
  if rl.IsKeyPressed(rl.KEY_ENTER) then 
    print("ENTER KEY...")
  end
end

function app:draw()
  rl.BeginDrawing()
  rl.ClearBackground(rl.RAYWHITE)
  rl.DrawText("Lua window!", 190, 200, 20, rl.LIGHTGRAY)

  rl.BeginMode3D(camera)-- start scene 3d
  rl.DrawGrid(10, 5.0)

  local cube_size = 1.0
  local cube_color = rl.ColorFromHSV(0.5,.75,.9)

  rl.DrawCube(cubePosition, cube_size, cube_size, cube_size, cube_color)

  rl.EndMode3D()-- end scene 3d
  rl.DrawFPS(10, 10)

  rl.EndDrawing()
  
end

function app:cleanup()

end

return app