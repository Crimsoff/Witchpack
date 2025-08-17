
# Cauldron
execute as @e[type=interaction,tag=c_wp_cauldron_interaction] at @s run function witchpack:blocks/cauldron_interaction
execute as @e[type=minecraft:item_display,tag=aj.wp_cauldron.root] at @s run function witchpack:blocks/cauldron
execute as @e[type=shulker,tag=c_wp_cauldron_block] if predicate witchpack:deadornovehicle run kill @s

# Curses
execute as @a[tag=c_wp_curse] run function witchpack:player/curses

# Initialize mobs
execute as @e[type=zombie,tag=!c_wp_zombie_init] run function witchpack:mobs/zombie_init

# Mirror - Disabled until I make an update to obtain the item
#execute as @e[type=painting,tag=c_wp_mirror_init] at @s run function witchpack:mirror/mirror_init
#execute as @e[type=minecraft:marker,tag=c_wp_mirror_marker] at @s run function witchpack:mirror/check_normal

#execute as @e[type=painting,tag=c_wp_mirror_d_init] at @s run function witchpack:mirror/mirror_d_init
#execute as @e[type=minecraft:marker,tag=c_wp_mirror_d_marker] at @s run function witchpack:mirror/check_demon

#execute as @e[type=painting,tag=c_wp_mirror_e_init] at @s run function witchpack:mirror/mirror_e_init
#execute as @e[type=minecraft:marker,tag=c_wp_mirror_e_marker] at @s run function witchpack:mirror/check_exorcised

#execute as @e[type=minecraft:painting,tag=c_wp_mirror_e] at @s run function witchpack:mirror/mirror_e

#execute as @e[type=minecraft:painting,tag=c_wp_mirror_d] at @s run function witchpack:mirror/mirror_d

#scoreboard players remove @e[scores={c_wp_into_mirror=1..}] c_wp_into_mirror 2
