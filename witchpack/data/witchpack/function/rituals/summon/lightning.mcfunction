tag @s add c_wp_ritual_active

execute as @e[type=item,nbt={Item:{id:"minecraft:lightning_rod"}},limit=1,sort=nearest,tag=!c_wp_lower_count] run data modify entity @s PickupDelay set value 100
execute as @e[type=item,nbt={Item:{id:"minecraft:lightning_rod"}},limit=1,sort=nearest,tag=!c_wp_lower_count] run scoreboard players set @s c_wp_removal_delay 20
execute as @e[type=item,nbt={Item:{id:"minecraft:lightning_rod"}},limit=1,sort=nearest,tag=!c_wp_lower_count] run tag @s add c_wp_lower_count

execute as @a[limit=1,sort=nearest] at @s run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 1
xp add @a[limit=1,sort=nearest,level=5..] -5 levels

scoreboard players set @s c_wp_ritual_timer 40
tag @s add c_wp_ritual_lightning