
execute if block ~ ~ ~ wheat unless block ~ ~ ~ wheat[age=0] run scoreboard players add @s c_wp_growth_stage 1
execute if score @s c_wp_growth_stage matches 5.. run scoreboard players set @s c_wp_growth_stage 4

execute if block ~ ~ ~ wheat unless block ~ ~ ~ wheat[age=0] run setblock ~ ~ ~ minecraft:wheat[age=0]

execute store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players get @s c_wp_growth_stage

execute if block ~ ~ ~ wheat run return 0
execute if score @s c_wp_growth_stage matches 4.. run function animated_java:wp_mandrake/summon {args: {}}
data modify entity @n[type=item,nbt={Item:{id:"minecraft:wheat_seeds",count:1}}] Item set value {id:"minecraft:witch_spawn_egg",count:1,components:{"minecraft:entity_data":{id:"minecraft:marker",Tags:["c_wp_mandrake_seeds_init"]},"minecraft:item_name":'Mandrake Seeds',"minecraft:item_model":"witchpack:mandrake_seeds"}}
kill @s