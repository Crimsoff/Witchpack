execute on vehicle run function animated_java:wp_cauldron/animations/attacked/play
execute if score @s c_wp_hp matches 5.. run playsound minecraft:block.iron.hit block @a[distance=..16] ~ ~ ~ 1 1
scoreboard players remove @s c_wp_hp 4
execute if score @s c_wp_hp matches ..0 on passengers run tp @s ~ -100000 ~
execute if score @s c_wp_hp matches ..0 on vehicle run function animated_java:wp_cauldron/remove/this
data remove entity @s attack