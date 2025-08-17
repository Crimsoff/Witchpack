scoreboard players add @s c_wp_anim 1
execute if score @s c_wp_anim matches 120.. if predicate witchpack:10chance run playsound minecraft:entity.ghast.hurt ambient @a ~ ~ ~ 0.5 0.25
execute if score @s c_wp_anim matches 120.. run scoreboard players set @s c_wp_anim 0