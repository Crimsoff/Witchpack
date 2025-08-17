execute if predicate witchpack:horizontalmotion on passengers if entity @s[tag=aj.wp_mandrake.root,tag=!aj.wp_mandrake.animation.walk.playing] run function animated_java:wp_mandrake/animations/walk/play
execute unless predicate witchpack:horizontalmotion on passengers if entity @s[tag=aj.wp_mandrake.root,tag=aj.wp_mandrake.animation.walk.playing] run function animated_java:wp_mandrake/animations/walk/stop

execute at @s on passengers if entity @s[tag=aj.wp_mandrake.root] run data modify entity @s Rotation[0] set from entity @n[type=ocelot,tag=c_wp_mandrake,distance=..1] Rotation[0]
execute at @s on passengers if entity @s[tag=aj.wp_mandrake.root] run rotate @s ~ 0