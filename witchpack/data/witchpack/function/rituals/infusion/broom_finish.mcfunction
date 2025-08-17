playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 2 0.1
particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.05 20
summon item ~ ~0.1 ~ {Motion:[0.0,0.25,0.0],Tags:["c_wp_broom_init"],Item:{id:"minecraft:witch_spawn_egg",count:1,components:{"minecraft:entity_data":{id:"minecraft:marker",Tags:["c_wp_broom_init"]},"minecraft:item_name":'Enchanted Broom',rarity:"rare","minecraft:item_model":"witchpack:broom","minecraft:enchantment_glint_override":true,"minecraft:max_stack_size":1}}}
tag @s remove c_wp_ritual_broom
tag @s remove c_wp_ritual_active