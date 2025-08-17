execute if predicate witchpack:deadornovehicle run kill @s
execute unless predicate witchpack:has_passenger run kill @s
execute unless score @s c_wp_hp matches 10.. run scoreboard players add @s c_wp_hp 1
execute if data entity @s attack.player run function witchpack:blocks/cauldron_hit
execute if data entity @s interaction run function witchpack:blocks/cauldron_interact