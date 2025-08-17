

execute store result entity @s Item.components."minecraft:custom_model_data".floats[0] float 1 run random value 4..40
execute if entity @s[tag=c_wp_chalk_gold] run data modify entity @s Item.components."minecraft:custom_model_data".floats[0] set value 3f
playsound minecraft:ui.cartography_table.take_result player @a ~ ~ ~ 0.75 0.75 0

tag @s remove c_wp_uuid_set
data modify entity @s[tag=c_wp_chalk_init] Item.components."minecraft:entity_data" set value {id:"minecraft:glow_item_frame",ItemDropChance:0f,Silent:1b,Invisible:1b,Tags:["c_wp_chalk_init"]}
data modify entity @s[tag=c_wp_chalk_init] Item.components."minecraft:entity_data".Item set from entity @s Item
data modify entity @s[tag=c_wp_chalk_init] Item.components."minecraft:entity_data".Tags set from entity @s Tags

execute store result score @s c_wp_ritual_facing run data get entity @s Facing
summon marker ~ ~ ~ {Tags:["c_wp_chalk_cleaner"]}

tag @s remove c_wp_chalk_init
tag @s add c_wp_item_required
tag @s add c_wp_chalk