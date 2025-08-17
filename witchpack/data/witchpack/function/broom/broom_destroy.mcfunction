summon item ~ ~ ~ {Tags:["c_wp_broom_init"],Item:{id:"minecraft:witch_spawn_egg",count:1,components:{"minecraft:entity_data":{id:"minecraft:marker",Tags:["c_wp_broom_init"]},"minecraft:item_name":'Enchanted Broom',rarity:"rare","minecraft:item_model":"witchpack:broom","minecraft:enchantment_glint_override":true,"minecraft:max_stack_size":1}}}
execute if data entity @s data.Name run data modify entity @n[type=item,distance=..1,nbt={Item:{components:{"minecraft:item_name":'Enchanted Broom'}}}] Item.components."minecraft:custom_name" set from entity @s data.Name
playsound minecraft:entity.armor_stand.break neutral @a ~ ~ ~ 1 2
execute on vehicle run kill @s
execute on passengers if entity @s[type=bat,tag=c_wp_broom_hb2] run kill @s
kill @s
