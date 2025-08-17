tag @s add c_wp_ritual_active
execute as @e run function witchpack:setuuid

execute as @e[type=item,nbt={Item:{id:"minecraft:slime_ball"}},limit=1,sort=nearest,tag=!c_wp_lower_count] run data modify entity @s PickupDelay set value 100
execute as @e[type=item,nbt={Item:{id:"minecraft:slime_ball"}},limit=1,sort=nearest,tag=!c_wp_lower_count] run scoreboard players set @s c_wp_removal_delay 20
execute as @e[type=item,nbt={Item:{id:"minecraft:slime_ball"}},limit=1,sort=nearest,tag=!c_wp_lower_count] run tag @s add c_wp_lower_count

execute as @e[type=item,nbt={Item:{id:"minecraft:feather"}},limit=1,sort=nearest,tag=!c_wp_lower_count] run data modify entity @s PickupDelay set value 100
execute as @e[type=item,nbt={Item:{id:"minecraft:feather"}},limit=1,sort=nearest,tag=!c_wp_lower_count] run scoreboard players set @s c_wp_removal_delay 40
execute as @e[type=item,nbt={Item:{id:"minecraft:feather"}},limit=1,sort=nearest,tag=!c_wp_lower_count] run tag @s add c_wp_lower_count

execute as @e[type=item,nbt={Item:{id:"minecraft:diamond"}},limit=1,sort=nearest,tag=!c_wp_lower_count] run data modify entity @s PickupDelay set value 100
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond"}},limit=1,sort=nearest,tag=!c_wp_lower_count] run scoreboard players set @s c_wp_removal_delay 60
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond"}},limit=1,sort=nearest,tag=!c_wp_lower_count] run tag @s add c_wp_lower_count

execute store result score @s c_wp_link_UUID0 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{TaglockFilled:1b}}}},limit=1,sort=nearest,tag=!c_wp_lower_count] Item.components."minecraft:custom_data".UUID[0] 1
execute store result score @s c_wp_link_UUID1 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{TaglockFilled:1b}}}},limit=1,sort=nearest,tag=!c_wp_lower_count] Item.components."minecraft:custom_data".UUID[1] 1
execute store result score @s c_wp_link_UUID2 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{TaglockFilled:1b}}}},limit=1,sort=nearest,tag=!c_wp_lower_count] Item.components."minecraft:custom_data".UUID[2] 1
execute store result score @s c_wp_link_UUID3 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{TaglockFilled:1b}}}},limit=1,sort=nearest,tag=!c_wp_lower_count] Item.components."minecraft:custom_data".UUID[3] 1

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{TaglockFilled:1b}}}},limit=1,sort=nearest,tag=!c_wp_lower_count] run data modify entity @s PickupDelay set value 100
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{TaglockFilled:1b}}}},limit=1,sort=nearest,tag=!c_wp_lower_count] run scoreboard players set @s c_wp_removal_delay 80
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{TaglockFilled:1b}}}},limit=1,sort=nearest,tag=!c_wp_lower_count] run tag @s add c_wp_lower_count

execute as @a[limit=1,sort=nearest] at @s run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 1
xp add @a[limit=1,sort=nearest,level=10..] -10 levels

scoreboard players set @s c_wp_ritual_timer 100
tag @s add c_wp_ritual_fall_curse