scoreboard players set .mobCount c_wp_count 0
execute as @e[distance=..128,tag=aj.global.root] run scoreboard players add .mobCount c_wp_count 1

execute if score .mobCount c_wp_count matches 21.. run function animated_java:wp_mandrake/animations/death/play
execute if score .mobCount c_wp_count matches 21.. run return fail

summon ocelot ~ ~1000 ~ {DeathLootTable:"witchpack:entities/mandrake",CustomNameVisible:0b,CustomName:'Mandrake',Silent:1b,Tags:["c_wp_mandrake"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:5},{id:"minecraft:attack_damage",base:0},{id:"minecraft:follow_range",base:0},{id:"minecraft:tempt_range",base:0}]}

execute positioned ~ ~1000 ~ store result score @s c_wp_link_UUID0 run data get entity @n[tag=c_wp_mandrake] UUID[0]
execute positioned ~ ~1000 ~ store result score @s c_wp_link_UUID1 run data get entity @n[tag=c_wp_mandrake] UUID[1]
execute positioned ~ ~1000 ~ store result score @s c_wp_link_UUID2 run data get entity @n[tag=c_wp_mandrake] UUID[2]
execute positioned ~ ~1000 ~ store result score @s c_wp_link_UUID3 run data get entity @n[tag=c_wp_mandrake] UUID[3]

execute positioned ~ ~1000 ~ as @n[tag=c_wp_mandrake] store result score @s c_wp_UUID0 run data get entity @s UUID[0]
execute positioned ~ ~1000 ~ as @n[tag=c_wp_mandrake] store result score @s c_wp_UUID1 run data get entity @s UUID[1]
execute positioned ~ ~1000 ~ as @n[tag=c_wp_mandrake] store result score @s c_wp_UUID2 run data get entity @s UUID[2]
execute positioned ~ ~1000 ~ as @n[tag=c_wp_mandrake] store result score @s c_wp_UUID3 run data get entity @s UUID[3]

function animated_java:wp_mandrake/animations/spawn/play
