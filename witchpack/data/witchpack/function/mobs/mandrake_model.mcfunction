execute if predicate witchpack:deadornovehicle run return run function animated_java:wp_mandrake/animations/death/play
execute unless entity @a[distance=..128] run return fail
execute if score .c_wp_gametime_even c_wp_gametime matches 0 on vehicle run return run function witchpack:mobs/mandrake_entity_even
execute on vehicle run function witchpack:mobs/mandrake_entity_odd
execute if entity @s[tag=!aj.wp_mandrake.animation.scream.playing] if score @s c_wp_e_attack_cd matches ..0 run function animated_java:wp_mandrake/animations/scream/play
scoreboard players remove @s c_wp_e_attack_cd 1
