execute positioned ^ ^-0.75 ^0.5 run scoreboard players add @e[type=!#witchpack:immovable,tag=!c_wp_immovable,distance=..0.5] c_wp_into_mirror 4
execute positioned ^ ^-0.75 ^0.5 if entity @e[type=!#witchpack:immovable,tag=!c_wp_immovable,distance=..0.5] at @s run particle minecraft:portal ~ ~ ~ 0 0 0 0.5 1

execute as @n[type=marker,tag=c_wp_mirror_e_marker,distance=..0.1] positioned ^ ^-0.75 ^0.5 if entity @e[distance=..0.5,scores={c_wp_into_mirror=61..}] run function witchpack:mirror/tomirror with entity @s data