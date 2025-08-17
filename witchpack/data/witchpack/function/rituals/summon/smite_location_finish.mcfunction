execute if data entity @e[type=minecraft:marker,limit=1,sort=nearest,tag=c_wp_chalk_cleaner] data.Pos.dimension run function witchpack:rituals/summon/smite_location_macro_d with entity @e[type=marker,tag=c_wp_chalk_cleaner,limit=1,sort=nearest] data.Pos
execute unless data entity @e[type=minecraft:marker,limit=1,sort=nearest,tag=c_wp_chalk_cleaner] data.Pos.dimension run function witchpack:rituals/summon/smite_location_macro with entity @e[type=marker,tag=c_wp_chalk_cleaner,limit=1,sort=nearest] data.Pos

tag @s remove c_wp_ritual_smite_location
tag @s remove c_wp_ritual_active
