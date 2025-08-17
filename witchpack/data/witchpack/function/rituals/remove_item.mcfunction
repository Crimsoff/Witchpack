execute store result score @s c_wp_item_count run data get entity @s Item.count
scoreboard players remove @s c_wp_item_count 1
execute store result entity @s Item.count int 1 run scoreboard players get @s c_wp_item_count
playsound minecraft:entity.item.pickup player @a ~ ~ ~ 1 0
particle minecraft:white_smoke ~ ~ ~ 0 0 0 0.01 10
execute if score @s c_wp_item_count matches 0 run kill @s

tag @s remove c_wp_lower_count