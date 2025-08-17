execute as @n[type=item,distance=..0.5] if data entity @s {Item:{id:"minecraft:gunpowder"}} run function witchpack:rituals/remove_item

tag @s add c_wp_brew_gunpowder