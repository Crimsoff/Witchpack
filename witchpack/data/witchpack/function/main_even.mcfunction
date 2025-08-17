# Spawn Egg
execute as @e[type=marker,tag=c_wp_mandrake_init] at @s run function witchpack:mobs/mandrake_spawnegg
execute as @e[type=marker,tag=c_wp_cauldron_spawn] at @s run function witchpack:blocks/cauldron_spawnegg

# Anointing Paste
execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data".MakeCauldron at @s if block ~ ~ ~ cauldron run function witchpack:items/anointing_paste

# Crops
execute as @e[type=marker,tag=c_wp_mandrake_seeds_init] at @s run function witchpack:crops/mandrake_init

# Thorns for taglocking
execute as @e[type=marker,tag=c_wp_thorns_init] at @s run function witchpack:thorns/thorns_init
execute as @e[type=marker,tag=c_wp_thorns] at @s run function witchpack:thorns/thorns
execute as @e[type=marker,tag=c_wp_thorns_full] at @s unless block ~ ~ ~ #minecraft:flowers run kill @s

# triggers
scoreboard players enable @a c_wp_force_exit_mirror
execute as @a[scores={c_wp_force_exit_mirror=1..}] at @s run function witchpack:dimension/forceexitmirror

# Rituals
execute as @e[type=item,tag=c_wp_lower_count] run scoreboard players remove @s c_wp_removal_delay 2
execute as @e[type=item,tag=c_wp_lower_count] at @s if score @s c_wp_removal_delay matches ..0 run function witchpack:rituals/remove_item