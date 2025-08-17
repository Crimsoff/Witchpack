execute unless items entity @s weapon.mainhand glass_bottle unless items entity @s weapon.offhand glass_bottle run return fail
tag @s add c_wp_cauldron_interacted
execute if entity @s[gamemode=!creative] unless items entity @s weapon.mainhand glass_bottle if items entity @s weapon.offhand glass_bottle run item modify entity @s weapon.offhand witchpack:lowercount
execute if entity @s[gamemode=!creative] if items entity @s weapon.mainhand glass_bottle run item modify entity @s weapon.mainhand witchpack:lowercount

execute as @n[type=interaction,tag=c_wp_cauldron_interaction] on vehicle if entity @s[tag=c_wp_brew_gunpowder] positioned ~ ~1 ~ run summon item ~ ~ ~ {Tags:["c_wp_brew_init"],Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:custom_name":{"italic":false,"text":"Witch's Brew"},"minecraft:rarity":"rare","minecraft:potion_contents":{custom_effects:[{id:"minecraft:absorption",amplifier:1,duration:1}]}}}}
execute as @n[type=interaction,tag=c_wp_cauldron_interaction] on vehicle if entity @s[tag=!c_wp_brew_gunpowder] positioned ~ ~1 ~ run summon item ~ ~ ~ {Tags:["c_wp_brew_init"],Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_name":{"italic":false,"text":"Witch's Brew"},"minecraft:rarity":"rare","minecraft:potion_contents":{custom_effects:[{id:"minecraft:absorption",amplifier:1,duration:1}]}}}}

execute as @n[type=interaction,tag=c_wp_cauldron_interaction] on vehicle positioned ~ ~1 ~ run data modify entity @n[type=item,tag=c_wp_brew_init] Item.components."minecraft:potion_contents".custom_effects set from entity @s data.brew
execute as @n[type=interaction,tag=c_wp_cauldron_interaction] on vehicle positioned ~ ~1 ~ run execute store result entity @n[type=item,tag=c_wp_brew_init] Item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get @s c_wp_color
execute as @n[type=interaction,tag=c_wp_cauldron_interaction] on vehicle positioned ~ ~1 ~ run tag @n[type=item,tag=c_wp_brew_init] remove c_wp_brew_init
execute as @n[type=interaction,tag=c_wp_cauldron_interaction] on vehicle at @s run function witchpack:brewing_recipes/clear_cauldron

execute as @n[type=interaction,tag=c_wp_cauldron_interaction] on vehicle run function animated_java:wp_cauldron/animations/water_empty/play