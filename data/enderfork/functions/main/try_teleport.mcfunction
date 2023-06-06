execute as @s at @s run tag @p add EnderForkChecking

execute as @a run execute as @e[type=trident,nbt={inGround:1b,Trident:{tag:{enderfork:1b, enderfork_active:1b}}}] at @s store result score @s TpSucces run execute if score @s UUID1 = @p[tag=EnderForkChecking] UUID1 run execute if score @s UUID2 = @p[tag=EnderForkChecking] UUID2 run execute if score @s UUID3 = @p[tag=EnderForkChecking] UUID3 run execute if score @s UUID4 = @p[tag=EnderForkChecking] UUID4 run tp @p[tag=EnderForkChecking] ~ ~ ~

execute unless score @s TpSucces matches 1 run function enderfork:main/try_teleport

damage @p[tag=EnderForkChecking] 2 fall
tag @a remove EnderForkChecking

execute as @e[type=trident,nbt={inGround:1b,Trident:{tag:{enderfork:1b, enderfork_active:1b}}}] run function enderfork:main/trident_deactivate