execute as @a[nbt={Inventory:[{id:"minecraft:ender_pearl"}], SelectedItem:{id:"minecraft:trident", tag:{enderfork:1b, enderfork_loaded:0b}}}] run tag @s add TransferAmmo

execute as @a[tag=TransferAmmo] run item modify entity @s weapon.mainhand enderfork:trident_load
execute as @a[tag=TransferAmmo] run clear @s ender_pearl 1

tag @a remove TransferAmmo