tag @e[type=item,nbt={Item:{id:"minecraft:trident"}}] add NotEnchantedTrident
tag @e[type=item, tag=NotEnchantedTrident, nbt={Item:{tag:{enderfork:1b}}}] remove NotEnchantedTrident

execute as @e[type=item, nbt={Item:{id:"minecraft:enchanted_book",tag:{enderfork_book:1b}}}] at @s run function enderfork:craft/check_book

tag @e remove NotEnchantedTrident