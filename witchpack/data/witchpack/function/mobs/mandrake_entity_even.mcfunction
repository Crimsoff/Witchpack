execute store result score @s c_wp_hurt run data get entity @s HurtTime 1
execute if score @s c_wp_hurt matches 9.. on passengers if entity @s[tag=aj.wp_mandrake.root] run function witchpack:mobs/mandrake_damaged
execute if score @s c_wp_hurt matches 0 on passengers if entity @s[tag=aj.wp_mandrake.root] run function animated_java:wp_mandrake/variants/default/apply
