execute if predicate witchpack:nointeractpassenger run function animated_java:wp_cauldron/remove/this
tag @s remove c_wp_cauldron_on
execute if block ~ ~-1 ~ #campfires run tag @s add c_wp_cauldron_on
execute if block ~ ~-1 ~ #fire run tag @s add c_wp_cauldron_on

execute if entity @s[tag=c_wp_cauldron_on,tag=c_wp_cauldron_full] run particle bubble_pop ~ ~1 ~ .15 0 .15 0 2
execute if entity @s[tag=c_wp_cauldron_on,tag=c_wp_cauldron_full] positioned ~ ~1 ~ if entity @e[type=item,distance=..0.5] run function witchpack:blocks/cauldron_brew