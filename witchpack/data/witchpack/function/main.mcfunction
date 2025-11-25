# Initialize entities
execute as @a unless score @s c_wp_version = .c_wp_current_version c_wp_version run function witchpack:player/player_init
execute as @e[type=!#witchpack:immovable,tag=!c_wp_uuid_set] run function witchpack:setuuid

# Get game time
execute store result score .c_wp_gametime_t c_wp_gametime run time query gametime
scoreboard players operation .c_wp_gametime_s_last c_wp_gametime = .c_wp_gametime_s c_wp_gametime
scoreboard players operation .c_wp_gametime_s c_wp_gametime = .c_wp_gametime_t c_wp_gametime
scoreboard players operation .c_wp_gametime_s c_wp_gametime /= #20 c_wp_const
scoreboard players operation .c_wp_gametime_even c_wp_gametime = .c_wp_gametime_t c_wp_gametime
scoreboard players operation .c_wp_gametime_even c_wp_gametime %= #2 c_wp_const

# Every Tick
# Mobs
scoreboard players add @e[type=minecraft:item_display,tag=c_wp_mandrake_temp] c_wp_count 1
execute as @e[type=item_display,tag=c_wp_mandrake_temp] if score @s c_wp_count matches 4.. run kill @s

# Crops
execute as @e[type=item_display,tag=c_wp_mandrake_plant] at @s run function witchpack:crops/mandrake

# Items
execute as @a if items entity @s armor.head *[minecraft:custom_data={Deaf:1b}] at @s run function witchpack:items/earmuffs

# Broom stuff
execute as @e[type=minecraft:marker,tag=c_wp_broom_init] at @s run function witchpack:broom/init_broom
execute as @e[type=minecraft:interaction,tag=c_wp_broom_hb] at @s run function witchpack:broom/broom_hb
execute as @a if predicate witchpack:riding_broom at @s run function witchpack:broom/broom
execute as @e[type=item_display,tag=c_wp_broom_hit] at @s run function witchpack:broom/broom_hit_anim

# Rituals
execute as @e[type=glow_item_frame,tag=c_wp_chalk_init,] at @s run function witchpack:rituals/chalk_init
execute as @e[type=glow_item_frame,tag=c_wp_chalk] at @s run function witchpack:rituals/chalk

execute as @e[type=glow_item_frame,tag=c_wp_chalk_gold] at @s store result score @s c_wp_ritual_activated run data get entity @s ItemRotation
execute as @e[type=glow_item_frame,tag=c_wp_chalk_gold] if score @s c_wp_ritual_activated matches 1.. at @s run function witchpack:rituals/activate_ritual
execute as @e[type=marker,tag=c_wp_chalk_cleaner] at @s unless entity @e[type=glow_item_frame,tag=c_wp_chalk,distance=..0.1] run function witchpack:rituals/chalk_cleaner


execute as @e[type=glow_item_frame,tag=c_wp_ritual_active] at @s run function witchpack:rituals/active

###################
# Every other tick
execute if score .c_wp_gametime_even c_wp_gametime matches 0 run function witchpack:main_even
execute if score .c_wp_gametime_even c_wp_gametime matches 1 run function witchpack:main_odd

