


```lua

  local entity = World:create()
  entity:add(new_body(100,100))
  entity:add(new_rectangle_component())
```


```lua
  local player_type = {
    {new_body, 300, 100},
    {new_rectangle_component}
  }
  local test = World:assemble(player_type)
```

```lua
  local test2 = World:assemble {
    {new_body, 300, 100},
    {new_rectangle_component}
  }
```