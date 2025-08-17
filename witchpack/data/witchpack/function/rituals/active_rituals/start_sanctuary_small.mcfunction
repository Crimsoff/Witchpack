tag @s add c_wp_ritual_active
tag @s add c_wp_ritual_can_cancel

execute as @n[type=item,nbt={Item:{id:"minecraft:shield"}},tag=!c_wp_lower_count,distance=..64] run data modify entity @s PickupDelay set value 100
execute as @n[type=item,nbt={Item:{id:"minecraft:shield"}},tag=!c_wp_lower_count,distance=..64] run scoreboard players set @s c_wp_removal_delay 20
execute as @n[type=item,nbt={Item:{id:"minecraft:shield"}},tag=!c_wp_lower_count,distance=..64] run tag @s add c_wp_lower_count

execute as @n[type=item,nbt={Item:{id:"minecraft:diamond"}},tag=!c_wp_lower_count,distance=..64] run data modify entity @s PickupDelay set value 100
execute as @n[type=item,nbt={Item:{id:"minecraft:diamond"}},tag=!c_wp_lower_count,distance=..64] run scoreboard players set @s c_wp_removal_delay 40
execute as @n[type=item,nbt={Item:{id:"minecraft:diamond"}},tag=!c_wp_lower_count,distance=..64] run tag @s add c_wp_lower_count

tag @s add c_wp_ritual_sanctuary_small