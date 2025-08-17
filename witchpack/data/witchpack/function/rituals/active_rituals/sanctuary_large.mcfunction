execute unless entity @a[distance=..6.75,level=1..] run return run function witchpack:rituals/cancel_ritual

scoreboard players set @s c_wp_chalk_total 0
scoreboard players set @s c_wp_chalk_otherworld 0
scoreboard players set @s c_wp_chalk_infernal 0
execute as @e[type=glow_item_frame,tag=c_wp_chalk,distance=1.99..2.25] run scoreboard players add @n[type=glow_item_frame,tag=c_wp_chalk_gold,distance=..0.5] c_wp_chalk_total 1
execute if score @s c_wp_chalk_total matches 12.. as @e[type=glow_item_frame,tag=c_wp_chalk,distance=3.99..4.5] run scoreboard players add @n[type=glow_item_frame,tag=c_wp_chalk_gold,distance=..0.5] c_wp_chalk_total 1
execute if score @s c_wp_chalk_total matches 36.. as @e[type=glow_item_frame,tag=c_wp_chalk,distance=5.99..6.75] run scoreboard players add @n[type=glow_item_frame,tag=c_wp_chalk_gold,distance=..0.5] c_wp_chalk_total 1
execute if score @s c_wp_chalk_total matches ..71 run return run function witchpack:rituals/cancel_ritual

particle minecraft:dust{scale:1.5,color:[1.0,0.85,0.0]} ~ ~ ~ 0.1 0.1 0.1 0 1
execute unless score .c_wp_gametime_s c_wp_gametime = .c_wp_gametime_s_last c_wp_gametime run xp add @p[distance=..6.75,level=1..] -3 points

execute store result score @s c_wp_x run data get entity @s Pos[0] 1000
execute store result score @s c_wp_y run data get entity @s Pos[1] 1000
execute store result score @s c_wp_z run data get entity @s Pos[2] 1000

execute as @e[type=!player,type=!item,type=!#witchpack:immovable,tag=!c_wp_chalk,tag=!c_wp_immovable,distance=..6.75] run function witchpack:rituals/active_rituals/sanctuary_knockback