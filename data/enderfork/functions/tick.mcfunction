execute as @a[tag=!UUIDsaved] run function enderfork:uuid-save/uuid_save_player
execute as @e[tag=!UUIDsavedTrident,type=trident,nbt={Trident:{tag:{enderfork:1b}}}] run function enderfork:uuid-save/uuid_save_trident

function enderfork:ammo/ammo_transfering

execute as @e[type=trident, nbt={inGround:1b,Trident:{tag:{enderfork:1b, enderfork_active:1b, enderfork_loaded:1b}}}] at @s run function enderfork:main/try_teleport

item modify entity @a[nbt={SelectedItem:{tag:{enderfork:1b, enderfork_active:0b}}}] weapon.mainhand enderfork:trident_activate

execute as @a[nbt={SelectedItem:{tag:{enderfork:1b}}}] run function enderfork:main/trident_lore