
# Cauldron
execute as @e[type=interaction,tag=c_wp_cauldron_interaction] at @s run function witchpack:blocks/cauldron_interaction
execute as @e[type=minecraft:item_display,tag=aj.wp_cauldron.root] at @s run function witchpack:blocks/cauldron
execute as @e[type=shulker,tag=c_wp_cauldron_block] if predicate witchpack:deadornovehicle run kill @s

# Curses
execute as @e[tag=c_wp_curse] run function witchpack:curses

# Initialize mobs
execute as @e[type=zombie,tag=!c_wp_zombie_init] run function witchpack:mobs/zombie_init

# Clean up invalid brooms?
execute as @e[type=item_display,tag=c_wp_broom_display] unless predicate witchpack:has_passenger run kill @s
execute as @e[type=bat,tag=c_wp_broom_hb2] unless predicate witchpack:riding run kill @s
