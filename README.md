```lua
FlyInvoke.GetPlayerInstance.OnInvoke = function(player: Player): PlayerClass.cls
	return player_instances[player]
end
FlyInvoke.GetNPCInstance.OnInvoke = function(id: ID): NPC.cls
	return NPC_instances[id]
end
```
```lua
local cls: PlayerCLS.cls = FlyInvoke.GetPlayerInstance:Invoke(
								player
							)
```
