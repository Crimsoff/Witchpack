execute align xyz unless block ~ ~ ~ #air run summon item ~ ~ ~ {Item:{id:"minecraft:witch_spawn_egg",count:1,components:{"minecraft:entity_data":{id:"minecraft:marker",Tags:["c_wp_cauldron_spawn"]},"minecraft:item_model":"witchpack:cauldron","minecraft:item_name":"Witch's Cauldron","minecraft:rarity":"uncommon"}}}
execute align xyz if block ~ ~ ~ #air rotated 0 0 positioned ~0.5 ~ ~0.5 run function animated_java:wp_cauldron/summon {args: {}}

kill @s