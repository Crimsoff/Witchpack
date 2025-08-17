execute as @e[type=!#witchpack:immovable,tag=!c_wp_immovable] if score @s c_wp_UUID0 = @e[sort=nearest,limit=1,tag=c_wp_chalk_gold] c_wp_link_UUID0 if score @s c_wp_UUID1 = @e[sort=nearest,limit=1,tag=c_wp_chalk_gold] c_wp_link_UUID1 if score @s c_wp_UUID2 = @e[sort=nearest,limit=1,tag=c_wp_chalk_gold] c_wp_link_UUID2 if score @s c_wp_UUID3 = @e[sort=nearest,limit=1,tag=c_wp_chalk_gold] c_wp_link_UUID3 at @s run summon lightning_bolt ~ ~ ~

tag @s remove c_wp_ritual_smite_entity
tag @s remove c_wp_ritual_active