execute as @s[tag=c_wp_ritual_active] run scoreboard players remove @s c_wp_ritual_timer 1

execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_broom] at @s if score @s c_wp_ritual_timer matches ..0 run function witchpack:rituals/infusion/broom_finish

execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_waystone_binding] at @s if score @s c_wp_ritual_timer matches ..0 run function witchpack:rituals/infusion/waystone_finish

execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_lightning] at @s if score @s c_wp_ritual_timer matches ..0 run function witchpack:rituals/summon/lightning_finish
execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_smite_entity] at @s if score @s c_wp_ritual_timer matches ..0 run function witchpack:rituals/summon/smite_entity_finish
execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_smite_location] at @s if score @s c_wp_ritual_timer matches ..0 run function witchpack:rituals/summon/smite_location_finish

execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_teleport_entity] at @s if score @s c_wp_ritual_timer matches 50 run particle minecraft:portal ~ ~ ~ 0 0 0 1 100
execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_teleport_entity] at @s if score @s c_wp_ritual_timer matches ..0 run function witchpack:rituals/warp/teleportentity_finish

execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_teleport_to_entity] at @s if score @s c_wp_ritual_timer matches 50 run particle minecraft:portal ~ ~ ~ 0 0 0 1 100
execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_teleport_to_entity] at @s if score @s c_wp_ritual_timer matches ..0 run function witchpack:rituals/warp/teleport_to_entity_finish

execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_teleport_to_location] at @s if score @s c_wp_ritual_timer matches 50 run particle minecraft:portal ~ ~ ~ 0 0 0 1 100
execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_teleport_to_location] at @s if score @s c_wp_ritual_timer matches ..0 run function witchpack:rituals/warp/teleport_to_location_finish

execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_fall_curse] at @s if score @s c_wp_ritual_timer matches ..0 run function witchpack:rituals/curses/curse_fall_finish
execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_weakness_curse] at @s if score @s c_wp_ritual_timer matches ..0 run function witchpack:rituals/curses/curse_weakness_finish
execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_slowness_curse] at @s if score @s c_wp_ritual_timer matches ..0 run function witchpack:rituals/curses/curse_slowness_finish
execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_giant_curse] at @s if score @s c_wp_ritual_timer matches ..0 run function witchpack:rituals/curses/curse_giant_finish
execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_small_curse] at @s if score @s c_wp_ritual_timer matches ..0 run function witchpack:rituals/curses/curse_small_finish
execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_mining_curse] at @s if score @s c_wp_ritual_timer matches ..0 run function witchpack:rituals/curses/curse_mining_finish
execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_clear_curse] at @s if score @s c_wp_ritual_timer matches ..0 run function witchpack:rituals/curses/clearcurse_finish

execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_sanctuary_small] at @s run function witchpack:rituals/active_rituals/sanctuary_small
execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_sanctuary_medium] at @s run function witchpack:rituals/active_rituals/sanctuary_medium
execute as @s[tag=c_wp_ritual_active,tag=c_wp_ritual_sanctuary_large] at @s run function witchpack:rituals/active_rituals/sanctuary_large
