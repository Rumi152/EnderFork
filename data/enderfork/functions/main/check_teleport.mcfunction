tag @s add EnderforkChecking

execute as @a[sort=nearest] if score @s UUID1 = @e[tag=EnderforkChecking, limit=1] UUID1 if score @s UUID2 = @e[tag=EnderforkChecking, limit=1] UUID2 if score @s UUID3 = @e[tag=EnderforkChecking, limit=1] UUID3 if score @s UUID4 = @e[tag=EnderforkChecking, limit=1] UUID4 at @e[tag=EnderforkChecking, limit=1] run function enderfork:main/teleport_player_to

tag @s remove TridentChecking