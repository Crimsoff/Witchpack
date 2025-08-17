execute as @e[type=!#witchpack:immovable,tag=!c_wp_immovable] if score @s c_wp_UUID0 = @e[sort=nearest,limit=1,tag=c_wp_chalk_gold] c_wp_link_UUID0 if score @s c_wp_UUID1 = @e[sort=nearest,limit=1,tag=c_wp_chalk_gold] c_wp_link_UUID1 if score @s c_wp_UUID2 = @e[sort=nearest,limit=1,tag=c_wp_chalk_gold] c_wp_link_UUID2 if score @s c_wp_UUID3 = @e[sort=nearest,limit=1,tag=c_wp_chalk_gold] c_wp_link_UUID3 at @s run function witchpack:rituals/curses/curse_slowness_entity
playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 1 0

tag @s remove c_wp_ritual_slowness_curse
tag @s remove c_wp_ritual_active