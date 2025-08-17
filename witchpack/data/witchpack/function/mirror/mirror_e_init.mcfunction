# Only allow mirrors to be bound in the overworld. Does not care after bounding
execute unless data entity @s data.mirrorX unless dimension minecraft:overworld run playsound minecraft:block.glass.break block @a ~ ~ ~ 2
execute unless data entity @s data.mirrorX unless dimension minecraft:overworld run kill @s
execute unless data entity @s data.mirrorX unless dimension minecraft:overworld run return fail

summon marker ~ ~ ~ {Tags:["c_wp_mirror_e_marker_init"]}
execute unless data entity @s data.mirrorX run data modify entity @n[type=minecraft:marker,tag=c_wp_mirror_e_marker_init,distance=..1] data.mirrorX set from entity @s block_pos[0]
execute unless data entity @s data.mirrorX run data modify entity @n[type=minecraft:marker,tag=c_wp_mirror_e_marker_init,distance=..1] data.mirrorZ set from entity @s block_pos[2]
execute unless data entity @s data.mirrorX at @s run function witchpack:dimension/generatemirror

execute if data entity @s data.mirrorX store result entity @n[type=minecraft:marker,tag=c_wp_mirror_e_marker_init,distance=..1] data.mirrorX int 1 run data get entity @s data.mirrorX
execute if data entity @s data.mirrorX store result entity @n[type=minecraft:marker,tag=c_wp_mirror_e_marker_init,distance=..1] data.mirrorZ int 1 run data get entity @s data.mirrorZ


execute store result score @n[type=minecraft:marker,tag=c_wp_mirror_e_marker_init,distance=..1] c_wp_link_UUID0 run data get entity @s UUID[0] 1
execute store result score @n[type=minecraft:marker,tag=c_wp_mirror_e_marker_init,distance=..1] c_wp_link_UUID1 run data get entity @s UUID[1] 1
execute store result score @n[type=minecraft:marker,tag=c_wp_mirror_e_marker_init,distance=..1] c_wp_link_UUID2 run data get entity @s UUID[2] 1
execute store result score @n[type=minecraft:marker,tag=c_wp_mirror_e_marker_init,distance=..1] c_wp_link_UUID3 run data get entity @s UUID[3] 1

tag @n[type=minecraft:marker,tag=c_wp_mirror_e_marker_init,distance=..1] add c_wp_mirror_e_marker
tag @n[type=minecraft:marker,tag=c_wp_mirror_e_marker_init,distance=..1] remove c_wp_mirror_e_marker_init

tag @s add c_wp_mirror_e
tag @s remove c_wp_mirror_e_init