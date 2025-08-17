execute facing entity @s feet positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["c_wp_tmp"]}

execute facing entity @s feet positioned ^ ^ ^1 store result score @s c_wp_x run data get entity @n[type=marker,tag=c_wp_tmp,distance=..2] Pos[0] 1000
execute facing entity @s feet positioned ^ ^ ^1 store result score @s c_wp_y run data get entity @n[type=marker,tag=c_wp_tmp,distance=..2] Pos[1] 1000
execute facing entity @s feet positioned ^ ^ ^1 store result score @s c_wp_z run data get entity @n[type=marker,tag=c_wp_tmp,distance=..2] Pos[2] 1000

execute facing entity @s feet positioned ^ ^ ^1 run kill @n[type=marker,tag=c_wp_tmp,distance=..0.5]

scoreboard players operation @s c_wp_x -= @n[type=glow_item_frame,distance=..2,tag=c_wp_chalk_gold] c_wp_x
scoreboard players operation @s c_wp_y -= @n[type=glow_item_frame,distance=..2,tag=c_wp_chalk_gold] c_wp_y
scoreboard players operation @s c_wp_z -= @n[type=glow_item_frame,distance=..2,tag=c_wp_chalk_gold] c_wp_z

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s c_wp_x
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s c_wp_y
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s c_wp_z