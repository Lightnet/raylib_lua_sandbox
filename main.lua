
local app = require 'app'

rl.SetConfigFlags(rl.FLAG_VSYNC_HINT)
rl.InitWindow(800, 450, "raylib [core] example - basic window")

app:initialize()

while not rl.WindowShouldClose() do
  app:update()

	rl.BeginDrawing()
  rl.ClearBackground(rl.RAYWHITE)
  app:draw()
	--rl.DrawText("Congrats! You created your first window!", 190, 200, 20, rl.LIGHTGRAY)
	rl.EndDrawing()
end

rl.CloseWindow()