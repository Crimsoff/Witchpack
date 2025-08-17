
execute if entity @e[type=marker,tag=c_wp_thorns_full,distance=..0.5] run data modify storage witchpack:taglock UUID set from entity @n[type=marker,tag=c_wp_thorns_full,distance=..0.5] data.Caught
execute if entity @e[type=marker,tag=c_wp_thorns_full,distance=..0.5] run return run function witchpack:items/taglockfinal


execute if entity @s[distance=..4.5] positioned ^ ^ ^1 run function witchpack:items/taglock2