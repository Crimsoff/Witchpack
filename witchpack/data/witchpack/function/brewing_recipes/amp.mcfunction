execute as @n[type=item,distance=..0.5] if data entity @s {Item:{id:"minecraft:glowstone_dust"}} run function witchpack:rituals/remove_item

scoreboard players remove @s c_wp_capacity 1

execute store result score @s c_wp_count run data get entity @s data.brew[-1].amplifier 1
scoreboard players add @s c_wp_count 1
execute store result entity @s data.brew[-1].amplifier int 1 run scoreboard players get @s c_wp_count

execute store result score @s c_wp_count run data get entity @s data.brew[-1].duration 1
scoreboard players operation @s c_wp_count /= #2 c_wp_const
execute store result entity @s data.brew[-1].duration int 1 run scoreboard players get @s c_wp_count


tag @s add c_wp_brew_amp