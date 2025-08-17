playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 1 2
data modify entity @s ItemRotation set value 0b

execute if entity @s[tag=c_wp_ritual_can_cancel] run return run function witchpack:rituals/cancel_ritual

scoreboard players set @s c_wp_chalk_total 0
scoreboard players set @s c_wp_chalk_otherworld 0
scoreboard players set @s c_wp_chalk_infernal 0

execute as @e[type=glow_item_frame,tag=c_wp_chalk,distance=1.99..2.25] run scoreboard players add @n[type=glow_item_frame,tag=c_wp_chalk_gold,distance=..0.5] c_wp_chalk_total 1
execute as @e[type=glow_item_frame,tag=c_wp_chalk_purple,distance=1.99..2.25] run scoreboard players add @n[type=glow_item_frame,tag=c_wp_chalk_gold,distance=..0.5] c_wp_chalk_otherworld 1
execute as @e[type=glow_item_frame,tag=c_wp_chalk_red,distance=1.99..2.25] run scoreboard players add @n[type=glow_item_frame,tag=c_wp_chalk_gold,distance=..0.5] c_wp_chalk_infernal 1

execute if score @s c_wp_chalk_total matches 12.. as @e[type=glow_item_frame,tag=c_wp_chalk,distance=3.99..4.5] run scoreboard players add @n[type=glow_item_frame,tag=c_wp_chalk_gold,distance=..0.5] c_wp_chalk_total 1
execute if score @s c_wp_chalk_total matches 12.. as @e[type=glow_item_frame,tag=c_wp_chalk_purple,distance=3.99..4.5] run scoreboard players add @n[type=glow_item_frame,tag=c_wp_chalk_gold,distance=..0.5] c_wp_chalk_otherworld 1
execute if score @s c_wp_chalk_total matches 12.. as @e[type=glow_item_frame,tag=c_wp_chalk_red,distance=3.99..4.5] run scoreboard players add @n[type=glow_item_frame,tag=c_wp_chalk_gold,distance=..0.5] c_wp_chalk_infernal 1

execute if score @s c_wp_chalk_total matches 36.. as @e[type=glow_item_frame,tag=c_wp_chalk,distance=5.99..6.75] run scoreboard players add @n[type=glow_item_frame,tag=c_wp_chalk_gold,distance=..0.5] c_wp_chalk_total 1
execute if score @s c_wp_chalk_total matches 36.. as @e[type=glow_item_frame,tag=c_wp_chalk_purple,distance=5.99..6.75] run scoreboard players add @n[type=glow_item_frame,tag=c_wp_chalk_gold,distance=..0.5] c_wp_chalk_otherworld 1
execute if score @s c_wp_chalk_total matches 36.. as @e[type=glow_item_frame,tag=c_wp_chalk_red,distance=5.99..6.75] run scoreboard players add @n[type=glow_item_frame,tag=c_wp_chalk_gold,distance=..0.5] c_wp_chalk_infernal 1

execute if entity @s[tag=c_wp_ritual_active] run return fail

execute if score @s c_wp_chalk_total matches 12..35 run function witchpack:rituals/small_ritual
execute if score @s c_wp_chalk_total matches 36..71 run function witchpack:rituals/medium_ritual
execute if score @s c_wp_chalk_total matches 72.. run function witchpack:rituals/large_ritual