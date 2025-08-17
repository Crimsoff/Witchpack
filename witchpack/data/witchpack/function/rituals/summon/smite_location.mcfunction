tag @s add c_wp_ritual_active

execute as @e[type=item,nbt={Item:{id:"minecraft:lightning_rod"}},limit=1,sort=nearest,tag=!c_wp_lower_count] run data modify entity @s PickupDelay set value 100
execute as @e[type=item,nbt={Item:{id:"minecraft:lightning_rod"}},limit=1,sort=nearest,tag=!c_wp_lower_count] run scoreboard players set @s c_wp_removal_delay 20
execute as @e[type=item,nbt={Item:{id:"minecraft:lightning_rod"}},limit=1,sort=nearest,tag=!c_wp_lower_count] run tag @s add c_wp_lower_count

data modify entity @e[type=marker,tag=c_wp_chalk_cleaner,limit=1,sort=nearest] data.Pos.x set from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{LocationFilled:1b}}}},limit=1,sort=nearest,tag=!c_wp_lower_count] Item.components."minecraft:custom_data".Pos[0]
data modify entity @e[type=marker,tag=c_wp_chalk_cleaner,limit=1,sort=nearest] data.Pos.y set from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{LocationFilled:1b}}}},limit=1,sort=nearest,tag=!c_wp_lower_count] Item.components."minecraft:custom_data".Pos[1]
data modify entity @e[type=marker,tag=c_wp_chalk_cleaner,limit=1,sort=nearest] data.Pos.z set from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{LocationFilled:1b}}}},limit=1,sort=nearest,tag=!c_wp_lower_count] Item.components."minecraft:custom_data".Pos[2]

execute if data entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{LocationFilled:1b}}}},limit=1,sort=nearest,tag=!c_wp_lower_count] Item.components."minecraft:custom_data".dimension run data modify entity @e[type=marker,tag=c_wp_chalk_cleaner,limit=1,sort=nearest] data.Pos.dimension set from entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{LocationFilled:1b}}}},limit=1,sort=nearest,tag=!c_wp_lower_count] Item.components."minecraft:custom_data".dimension

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{LocationFilled:1b}}}},limit=1,sort=nearest,tag=!c_wp_lower_count] run data modify entity @s PickupDelay set value 100
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{LocationFilled:1b}}}},limit=1,sort=nearest,tag=!c_wp_lower_count] run scoreboard players set @s c_wp_removal_delay 40
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{LocationFilled:1b}}}},limit=1,sort=nearest,tag=!c_wp_lower_count] run tag @s add c_wp_lower_count


execute as @a[limit=1,sort=nearest] at @s run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 1
xp add @a[limit=1,sort=nearest,level=10..] -10 levels

scoreboard players set @s c_wp_ritual_timer 60
tag @s add c_wp_ritual_smite_location
