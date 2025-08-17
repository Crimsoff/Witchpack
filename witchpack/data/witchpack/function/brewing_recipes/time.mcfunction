execute as @n[type=item,distance=..0.5] if data entity @s {Item:{id:"minecraft:redstone"}} run function witchpack:rituals/remove_item

execute store result score @s c_wp_count run data get entity @s data.brew[-1].duration 1
scoreboard players operation @s c_wp_count *= #2 c_wp_const
execute store result entity @s data.brew[-1].duration int 1 run scoreboard players get @s c_wp_count

tag @s add c_wp_brew_time