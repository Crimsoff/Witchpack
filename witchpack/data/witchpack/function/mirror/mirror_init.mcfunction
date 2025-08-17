summon marker ~ ~ ~ {Tags:["c_wp_mirror_marker_init"]}

execute store result score @n[type=minecraft:marker,tag=c_wp_mirror_marker_init,distance=..1] c_wp_link_UUID0 run data get entity @s UUID[0] 1
execute store result score @n[type=minecraft:marker,tag=c_wp_mirror_marker_init,distance=..1] c_wp_link_UUID1 run data get entity @s UUID[1] 1
execute store result score @n[type=minecraft:marker,tag=c_wp_mirror_marker_init,distance=..1] c_wp_link_UUID2 run data get entity @s UUID[2] 1
execute store result score @n[type=minecraft:marker,tag=c_wp_mirror_marker_init,distance=..1] c_wp_link_UUID3 run data get entity @s UUID[3] 1

tag @n[type=minecraft:marker,tag=c_wp_mirror_marker_init,distance=..1] add c_wp_mirror_marker
tag @n[type=minecraft:marker,tag=c_wp_mirror_marker_init,distance=..1] remove c_wp_mirror_marker_init

tag @s add c_wp_mirror
tag @s remove c_wp_mirror_init