execute as @n[type=item,distance=..0.5] if data entity @s {Item:{id:"minecraft:wither_rose"}} run function witchpack:rituals/remove_item

scoreboard players remove @s c_wp_capacity 1

data modify entity @s data.brew append value {id:"minecraft:wither",amplifier:0,duration:2400}

scoreboard players add @s c_wp_color 1511952
scoreboard players operation @s c_wp_color /= #2 c_wp_const
execute positioned ~ ~-1 ~ on passengers if entity @s[tag=aj.wp_cauldron.display_node.water] store result entity @s item.components."minecraft:dyed_color" int 1 run scoreboard players get @n[type=item_display,tag=aj.wp_cauldron.root] c_wp_color

tag @s add c_wp_brew_wither
tag @s remove c_wp_cauldron_water
tag @s remove c_wp_brew_time
tag @s remove c_wp_brew_amp