tag @s remove c_wp_curse_weakness
tag @s remove c_wp_curse_slowness
tag @s remove c_wp_curse_fall
tag @s remove c_wp_curse_mining
tag @s remove c_wp_curse_small
tag @s remove c_wp_curse_giant
tag @s remove c_wp_curse

attribute @s minecraft:attack_damage modifier remove witchpack:curse_weakness

attribute @s minecraft:movement_speed modifier remove witchpack:curse_slowness

attribute @s minecraft:block_break_speed modifier remove witchpack:curse_mining

attribute @s minecraft:fall_damage_multiplier modifier remove witchpack:curse_fall
attribute @s minecraft:safe_fall_distance modifier remove witchpack:curse_fall

attribute @s minecraft:scale modifier remove witchpack:curse_small
attribute @s minecraft:block_interaction_range modifier remove witchpack:curse_small
attribute @s minecraft:entity_interaction_range modifier remove witchpack:curse_small

attribute @s minecraft:scale modifier remove witchpack:curse_giant
attribute @s minecraft:block_interaction_range modifier remove witchpack:curse_giant
attribute @s minecraft:entity_interaction_range modifier remove witchpack:curse_giant

playsound minecraft:entity.witch.celebrate player @s ~ ~ ~ 1 2