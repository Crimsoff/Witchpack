execute as @n[type=item,distance=..0.5] if data entity @s {Item:{id:"minecraft:black_dye"}} run function witchpack:rituals/remove_item


scoreboard players set @s c_wp_color 1908001
execute positioned ~ ~-1 ~ on passengers if entity @s[tag=aj.wp_cauldron.display_node.water] store result entity @s item.components."minecraft:dyed_color" int 1 run scoreboard players get @n[type=item_display,tag=aj.wp_cauldron.root] c_wp_color

tag @s remove c_wp_cauldron_water
