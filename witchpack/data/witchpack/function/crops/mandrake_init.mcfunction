execute unless predicate witchpack:validfarmland run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:witch_spawn_egg",count:1,components:{"minecraft:entity_data":{id:"minecraft:marker",Tags:["c_wp_mandrake_seeds_init"]},"minecraft:item_name":'Mandrake Seeds',"minecraft:item_model":"witchpack:mandrake_seeds"}}}

execute if predicate witchpack:validfarmland align y positioned ~ ~1 ~ run summon item_display ~ ~ ~ {width:1f,height:1f,Tags:["c_wp_mandrake_plant"],item:{id:"minecraft:wheat",count:1,components:{"minecraft:item_model":"witchpack:mandrake_crop","minecraft:custom_model_data":{floats:[0]}}}}
execute if predicate witchpack:validfarmland run setblock ~ ~0.5 ~ wheat

kill @s