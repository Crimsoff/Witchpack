playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 2 0.1
particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.05 20

data modify entity @n[type=marker,tag=c_wp_chalk_cleaner,distance=..1] data.Pos.x set from entity @s block_pos[0]
data modify entity @n[type=marker,tag=c_wp_chalk_cleaner,distance=..1] data.Pos.y set from entity @s block_pos[1]
data modify entity @n[type=marker,tag=c_wp_chalk_cleaner,distance=..1] data.Pos.z set from entity @s block_pos[2]

summon item ~ ~ ~ {Motion:[0.0,0.25,0.0],PickupDelay:1,Tags:["c_wp_waystone_init"],Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:max_stack_size":64,"minecraft:enchantment_glint_override":true,"minecraft:repair_cost":1000,"minecraft:item_model":"minecraft:flint","minecraft:item_name":'Waystone',"minecraft:custom_data":{LocationFilled:1b,Pos:[0,0,0]}}}}
data modify entity @n[type=item,tag=c_wp_waystone_init,distance=..64] Item.components."minecraft:custom_data".Pos set from entity @s block_pos
data modify entity @n[type=item,tag=c_wp_waystone_init,distance=..64] Item.components."minecraft:custom_data".dimension set from entity @n[type=marker,tag=c_wp_chalk_cleaner,distance=..64] data.Pos.dimension

execute if data entity @n[type=minecraft:marker,tag=c_wp_chalk_cleaner,distance=..1] data.Pos.dimension run function witchpack:rituals/infusion/waystone_lore_macro_d with entity @n[type=marker,tag=c_wp_chalk_cleaner,distance=..1] data.Pos
execute unless data entity @n[type=minecraft:marker,tag=c_wp_chalk_cleaner,distance=..1] data.Pos.dimension run function witchpack:rituals/infusion/waystone_lore_macro with entity @n[type=marker,tag=c_wp_chalk_cleaner,distance=..1] data.Pos


tag @e[type=item,tag=c_wp_waystone_init,limit=1,sort=nearest] remove c_wp_waystone_init

tag @s remove c_wp_ritual_waystone_binding
tag @s remove c_wp_ritual_active