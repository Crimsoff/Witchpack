execute unless items entity @s weapon.mainhand bucket unless items entity @s weapon.offhand bucket run return fail
tag @s add c_wp_cauldron_interacted
execute if entity @s[gamemode=!creative] unless items entity @s weapon.mainhand bucket if items entity @s weapon.offhand bucket run item replace entity @s weapon.offhand with water_bucket
execute if entity @s[gamemode=!creative] if items entity @s weapon.mainhand bucket run item replace entity @s weapon.mainhand with water_bucket

execute as @n[type=interaction,tag=c_wp_cauldron_interaction] on vehicle run function animated_java:wp_cauldron/animations/water_empty/play