tag @s add c_wp_ritual_active

execute as @n[type=item,nbt={Item:{id:"minecraft:phantom_membrane"}},tag=!c_wp_lower_count,distance=..64] run data modify entity @s PickupDelay set value 100
execute as @n[type=item,nbt={Item:{id:"minecraft:phantom_membrane"}},tag=!c_wp_lower_count,distance=..64] run scoreboard players set @s c_wp_removal_delay 20
execute as @n[type=item,nbt={Item:{id:"minecraft:phantom_membrane"}},tag=!c_wp_lower_count,distance=..64] run tag @s add c_wp_lower_count

execute as @n[type=item,nbt={Item:{id:"minecraft:brush",components:{"minecraft:custom_data":{Broom:1b}}}},tag=!c_wp_lower_count,distance=..64] run data modify entity @s PickupDelay set value 100
execute as @n[type=item,nbt={Item:{id:"minecraft:brush",components:{"minecraft:custom_data":{Broom:1b}}}},tag=!c_wp_lower_count,distance=..64] run scoreboard players set @s c_wp_removal_delay 40
execute as @n[type=item,nbt={Item:{id:"minecraft:brush",components:{"minecraft:custom_data":{Broom:1b}}}},tag=!c_wp_lower_count,distance=..64] run tag @s add c_wp_lower_count

execute as @a[limit=1,sort=nearest] at @s run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 1
xp add @a[limit=1,sort=nearest,level=10..] -10 levels

scoreboard players set @s c_wp_ritual_timer 60
tag @s add c_wp_ritual_broom