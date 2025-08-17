execute as @n[type=item,distance=..0.5] if data entity @s {Item:{id:"minecraft:clay_ball"}} run function witchpack:rituals/remove_item

particle minecraft:cloud ~ ~-0.5 ~ 0.2 0.2 0.2 0.1 10
playsound block.fire.extinguish block @a[distance=..16] ~ ~-0.5 ~ 1 1
function witchpack:brewing_recipes/clear_cauldron