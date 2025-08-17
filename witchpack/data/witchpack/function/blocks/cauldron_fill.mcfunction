execute unless items entity @s weapon.mainhand water_bucket unless items entity @s weapon.offhand water_bucket run return fail
tag @s add c_wp_cauldron_interacted

execute if entity @s[gamemode=!creative] unless items entity @s weapon.mainhand water_bucket if items entity @s weapon.offhand water_bucket run item replace entity @s weapon.offhand with bucket
execute if entity @s[gamemode=!creative] if items entity @s weapon.mainhand water_bucket run item replace entity @s weapon.mainhand with bucket

execute as @n[type=interaction,tag=c_wp_cauldron_interaction] on vehicle run tag @s add c_wp_brew_time
execute as @n[type=interaction,tag=c_wp_cauldron_interaction] on vehicle run tag @s add c_wp_brew_amp
execute as @n[type=interaction,tag=c_wp_cauldron_interaction] on vehicle run scoreboard players set @s c_wp_capacity 1
execute as @n[type=interaction,tag=c_wp_cauldron_interaction] on vehicle run scoreboard players set @s c_wp_color 16777215
execute as @n[type=interaction,tag=c_wp_cauldron_interaction] on vehicle on passengers if entity @s[tag=aj.wp_cauldron.display_node.water] run data modify entity @s item.components."minecraft:dyed_color" set value 4159204
execute as @n[type=interaction,tag=c_wp_cauldron_interaction] on vehicle run function animated_java:wp_cauldron/animations/water_full/play
