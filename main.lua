--[[
  # Information:
    main entry point for application.
]]
local app = require 'app'

-- rl.SetConfigFlags(rl.FLAG_VSYNC_HINT)
-- rl.InitWindow(800, 450, "raylib [core] example - basic window")
--setup
app:initialize()

--loop update and draw
while not rl.WindowShouldClose() do
  app:update()

	rl.BeginDrawing()
  rl.ClearBackground(rl.RAYWHITE)
  app:draw()
	--rl.DrawText("Congrats! You created your first window!", 190, 200, 20, rl.LIGHTGRAY)
  if rl.GuiButton({0,0,64,32},"Hello") then
    print("click button...")
  end
	rl.EndDrawing()
end

app:cleanup()
rl.CloseWindow()