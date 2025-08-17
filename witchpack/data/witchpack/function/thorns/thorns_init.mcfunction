execute unless block ~ ~ ~ #minecraft:flowers run tag @s add c_wp_thorns_destroy
execute if entity @e[type=marker,tag=c_wp_thorns,distance=..0.5] run tag @s add c_wp_thorns_destroy
execute if entity @e[type=marker,tag=c_wp_thorns_full,distance=..0.5] run tag @s add c_wp_thorns_destroy

execute if entity @s[tag=c_wp_thorns_destroy] run playsound minecraft:entity.generic.extinguish_fire player @a[distance=..16] ~ ~ ~ 0.5 2
execute if entity @s[tag=c_wp_thorns_destroy] run particle minecraft:witch ~ ~ ~ 0.25 0.25 0.25 0 5
execute if entity @s[tag=c_wp_thorns_destroy] run kill @s

execute unless entity @s[tag=c_wp_thorns_destroy] run playsound minecraft:item.crop.plant block @a[distance=..16] ~ ~ ~ 1 1
execute unless entity @s[tag=c_wp_thorns_destroy] run particle minecraft:happy_villager ~ ~ ~ 0.25 0.25 0.25 0 5

tag @s add c_wp_thorns
tag @s remove c_wp_thorns_init