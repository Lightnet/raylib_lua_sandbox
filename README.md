# raylib_lua_sandbox

# License: MIT

# Created By: Lightnet

# Stage:
 * early prototype idea.

# Information:

  Using the VSCode.

  Just testing build for Raylib with lua script.


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

# Credits:
 * https://www.youtube.com/watch?v=GhyV6_D2NEU Love2D | Entity Component System | Episode 2
 * 

# Links:
 * https://www.raylib.com/
 * https://github.com/tsnake41/raylib-lua
 * 