execute as @s at @s store success score %bookToClean variables run tag @e[tag=NotEnchantedTrident, limit=1, distance=..1] add EnchantingTrident

execute if score %bookToClean variables matches 0 run return 0

execute as @e[tag=EnchantingTrident] run data modify entity @s Item.tag.enderfork set value 1b
execute as @e[tag=EnchantingTrident] run data modify entity @s Item.tag.enderfork_loaded set value 0b
execute as @e[tag=EnchantingTrident] run data modify entity @s Item.tag.enderfork_active set value 1b

kill @s

tag @e[tag=EnchantingTrident] remove EnchantingTrident