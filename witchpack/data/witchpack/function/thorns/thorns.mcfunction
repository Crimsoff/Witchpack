execute unless block ~ ~ ~ #minecraft:flowers run kill @s

data modify entity @s data.Caught set from entity @n[type=!#witchpack:immovable,tag=!c_wp_immovable,tag=!c_wp_taglock_immune,distance=..0.5] UUID
execute if entity @e[type=!#witchpack:immovable,tag=!c_wp_immovable,tag=!c_wp_taglock_immune,sort=nearest,distance=..0.5] run playsound minecraft:enchant.thorns.hit block @a[distance=..16] ~ ~ ~ 0.25 2
execute if entity @e[type=!#witchpack:immovable,tag=!c_wp_immovable,tag=!c_wp_taglock_immune,sort=nearest,distance=..0.5] run particle minecraft:dust{color:[1, 0, 0], scale:0.5} ~ ~ ~ 0.1 0.1 0.1 0 3
execute if entity @e[type=!#witchpack:immovable,tag=!c_wp_immovable,tag=!c_wp_taglock_immune,sort=nearest,distance=..0.5] run tag @s add c_wp_thorns_full
execute if entity @e[type=!#witchpack:immovable,tag=!c_wp_immovable,tag=!c_wp_taglock_immune,sort=nearest,distance=..0.5] run tag @s remove c_wp_thorns