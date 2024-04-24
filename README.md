# raylib_lua_sandbox

# License: MIT

# Created By: Lightnet

# Stage:
 * early prototype idea.

# Information:

  Using the VSCode.

  Just testing build for Raylib with lua script.



# Resources refs:
 - https://gist.github.com/alexander-matz/f8ee4eb9fdf676203d70c1e5e329a6ec raylib.lua
 - https://github.com/raysan5/raylib-lua/blob/master/examples/core/core_3d_camera_free.lua


# Windows:
  There are couple way to run application one is task, other is lanucher plugin for lua.

  * https://github.com/tsnake41/raylib-lua

  Download files binary. Need to config in .vscode folder for application to run.

 settings.json
```
{
  "pixelbyte.love2d.path": "path/raylua_s.exe"
}
```
Required full path.

task.json
```
{
  "command": "${workspaceRoot}\\run.bat",
}
```
```
{
  "command": "path/raylua_s.exe",
  "args": ["main.lua"],
}
```

Project area.
```
./bin/raylua_s.exe main.lua
```
https://github.com/tsnake41/raylib-lua?tab=readme-ov-file


# Links:

 * https://www.raylib.com/
 * https://github.com/tsnake41/raylib-lua
 * 

# Credits:

 * https://www.youtube.com/watch?v=GhyV6_D2NEU Love2D | Entity Component System | Episode 2
 * 
