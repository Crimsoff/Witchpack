execute unless predicate witchpack:taglockmain if predicate witchpack:taglockoff run item modify entity @s weapon.offhand witchpack:lowercount
execute if predicate witchpack:taglockmain run item modify entity @s weapon.mainhand witchpack:lowercount

execute at @s run summon item ~ ~ ~ {PickupDelay:1,Tags:["c_wp_taglock_init"],Item:{id:"minecraft:music_disc_creator",count:1,components:{"minecraft:item_name":'Taglock',"!minecraft:jukebox_playable":{},"minecraft:rarity":"uncommon","minecraft:item_model":"minecraft:potion","minecraft:potion_contents":{custom_color:13208153},"minecraft:lore":['Filled'],"minecraft:custom_data":{TaglockFilled:1b}}}}

execute at @s run data modify entity @n[type=item,tag=c_wp_taglock_init,distance=..1] Item.components."minecraft:custom_data".UUID set from storage witchpack:taglock UUID
execute at @s run tag @n[type=item,tag=c_wp_taglock_init,distance=..1] remove c_wp_taglock_init

scoreboard players set @s c_wp_item_cd 20

kill @n[type=marker,tag=c_wp_thorns_full,distance=..0.5]
