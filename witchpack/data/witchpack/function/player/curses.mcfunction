execute if entity @s[tag=c_wp_curse_weakness] run attribute @s minecraft:attack_damage modifier add witchpack:curse_weakness -4 add_value

execute if entity @s[tag=c_wp_curse_slowness] run attribute @s minecraft:movement_speed modifier add witchpack:curse_slowness -0.15 add_multiplied_total

execute if entity @s[tag=c_wp_curse_mining] run attribute @s minecraft:block_break_speed modifier add witchpack:curse_mining -0.5 add_multiplied_total

execute if entity @s[tag=c_wp_curse_fall] run attribute @s minecraft:fall_damage_multiplier modifier add witchpack:curse_fall 1 add_value
execute if entity @s[tag=c_wp_curse_fall] run attribute @s minecraft:safe_fall_distance modifier add witchpack:curse_fall -2 add_value

execute if entity @s[tag=c_wp_curse_small] run attribute @s minecraft:scale modifier add witchpack:curse_small -0.5 add_multiplied_total
execute if entity @s[tag=c_wp_curse_small] run attribute @s minecraft:block_interaction_range modifier add witchpack:curse_small -1 add_value
execute if entity @s[tag=c_wp_curse_small] run attribute @s minecraft:entity_interaction_range modifier add witchpack:curse_small -1 add_value

execute if entity @s[tag=c_wp_curse_giant] run attribute @s minecraft:scale modifier add witchpack:curse_giant 1 add_multiplied_total
execute if entity @s[tag=c_wp_curse_giant] run attribute @s minecraft:block_interaction_range modifier add witchpack:curse_giant 1 add_value
execute if entity @s[tag=c_wp_curse_giant] run attribute @s minecraft:entity_interaction_range modifier add witchpack:curse_giant 1 add_value
