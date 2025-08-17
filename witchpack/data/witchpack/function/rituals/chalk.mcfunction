execute if data entity @s Item unless entity @s[nbt={Item:{components:{"minecraft:item_model":"witchpack:illager_rune"}}}] run summon item ~ ~ ~ {Item:{id:"dirt", count:1},Tags:["c_wp_chalk_drop"]}
execute if data entity @s Item unless entity @s[nbt={Item:{components:{"minecraft:item_model":"witchpack:illager_rune"}}}] run data modify entity @n[type=item,tag=c_wp_chalk_drop] Item set from entity @s Item

execute unless entity @s[nbt={Item:{components:{"minecraft:item_model":"witchpack:illager_rune"}}}] run kill @s
