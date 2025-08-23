execute if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:clay_ball"}} run function witchpack:brewing_recipes/clear

execute if entity @s[tag=!c_wp_brew_time] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:redstone"}} run function witchpack:brewing_recipes/time

execute if entity @s[tag=!c_wp_brew_nether_wart] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:nether_wart"}} run function witchpack:brewing_recipes/nether_wart
execute if entity @s[tag=!c_wp_brew_mandrake] if data entity @n[type=item,distance=..0.5] Item.components."minecraft:custom_data".Mandrake run function witchpack:brewing_recipes/mandrake
execute if entity @s[tag=!c_wp_brew_gunpowder] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:gunpowder"}} run function witchpack:brewing_recipes/gunpowder


execute if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:white_dye"}} run function witchpack:brewing_recipes/dyes/white
execute if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:light_gray_dye"}} run function witchpack:brewing_recipes/dyes/light_gray
execute if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:gray_dye"}} run function witchpack:brewing_recipes/dyes/gray
execute if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:black_dye"}} run function witchpack:brewing_recipes/dyes/black
execute if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:brown_dye"}} run function witchpack:brewing_recipes/dyes/brown
execute if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:red_dye"}} run function witchpack:brewing_recipes/dyes/red
execute if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:orange_dye"}} run function witchpack:brewing_recipes/dyes/orange
execute if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:yellow_dye"}} run function witchpack:brewing_recipes/dyes/yellow
execute if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:lime_dye"}} run function witchpack:brewing_recipes/dyes/lime
execute if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:green_dye"}} run function witchpack:brewing_recipes/dyes/green
execute if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:purple_dye"}} run function witchpack:brewing_recipes/dyes/purple
execute if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:magenta_dye"}} run function witchpack:brewing_recipes/dyes/magenta
execute if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:blue_dye"}} run function witchpack:brewing_recipes/dyes/blue
execute if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:light_blue_dye"}} run function witchpack:brewing_recipes/dyes/light_blue
execute if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:pink_dye"}} run function witchpack:brewing_recipes/dyes/pink
execute if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:cyan_dye"}} run function witchpack:brewing_recipes/dyes/cyan

execute if score @s c_wp_capacity matches ..0 run return 0

execute if entity @s[tag=!c_wp_brew_amp] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:glowstone_dust"}} run function witchpack:brewing_recipes/amp

execute if entity @s[tag=!c_wp_brew_speed] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:sugar"}} run function witchpack:brewing_recipes/speed
execute if entity @s[tag=!c_wp_brew_strength] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:blaze_powder"}} run function witchpack:brewing_recipes/strength
execute if entity @s[tag=!c_wp_brew_night_vision] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:golden_carrot"}} run function witchpack:brewing_recipes/night_vision
execute if entity @s[tag=!c_wp_brew_invisibility] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:glass"}} run function witchpack:brewing_recipes/invisibility
execute if entity @s[tag=!c_wp_brew_luck] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:rabbit_foot"}} run function witchpack:brewing_recipes/luck
execute if entity @s[tag=!c_wp_brew_jump_boost] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:rabbit_hide"}} run function witchpack:brewing_recipes/jump_boost
execute if entity @s[tag=!c_wp_brew_fire_resistance] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:magma_cream"}} run function witchpack:brewing_recipes/fire_resistance
execute if entity @s[tag=!c_wp_brew_slowness] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:string"}} run function witchpack:brewing_recipes/slowness
execute if entity @s[tag=!c_wp_brew_water_breathing] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:pufferfish"}} run function witchpack:brewing_recipes/water_breathing
execute if entity @s[tag=!c_wp_brew_instant_health] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:glistering_melon_slice"}} run function witchpack:brewing_recipes/instant_health
execute if entity @s[tag=!c_wp_brew_instant_damage] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:pointed_dripstone"}} run function witchpack:brewing_recipes/instant_damage
execute if entity @s[tag=!c_wp_brew_poison] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:spider_eye"}} run function witchpack:brewing_recipes/poison
execute if entity @s[tag=!c_wp_brew_regeneration] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:ghast_tear"}} run function witchpack:brewing_recipes/regeneration
execute if entity @s[tag=!c_wp_brew_weakness] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:fermented_spider_eye"}} run function witchpack:brewing_recipes/weakness
execute if entity @s[tag=!c_wp_brew_slow_falling] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:phantom_membrane"}} run function witchpack:brewing_recipes/slow_falling
execute if entity @s[tag=!c_wp_brew_wind_charged] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:breeze_rod"}} run function witchpack:brewing_recipes/wind_charged
execute if entity @s[tag=!c_wp_brew_weaving] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:cobweb"}} run function witchpack:brewing_recipes/weaving
execute if entity @s[tag=!c_wp_brew_oozing] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:slime_block"}} run function witchpack:brewing_recipes/oozing
execute if entity @s[tag=!c_wp_brew_infested] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:stone"}} run function witchpack:brewing_recipes/infested
execute if entity @s[tag=!c_wp_brew_wither] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:wither_rose"}} run function witchpack:brewing_recipes/wither
execute if entity @s[tag=!c_wp_brew_absorption] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:apple"}} run function witchpack:brewing_recipes/absorption
execute if entity @s[tag=!c_wp_brew_blindness] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:closed_eyeblossom"}} run function witchpack:brewing_recipes/blindness
execute if entity @s[tag=!c_wp_brew_nausea] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:open_eyeblossom"}} run function witchpack:brewing_recipes/nausea
execute if entity @s[tag=!c_wp_brew_levitation] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:popped_chorus_fruit"}} run function witchpack:brewing_recipes/levitation
execute if entity @s[tag=!c_wp_brew_saturation] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:dandelion"}} run function witchpack:brewing_recipes/saturation
execute if entity @s[tag=!c_wp_brew_darkness] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:sculk"}} run function witchpack:brewing_recipes/darkness
execute if entity @s[tag=!c_wp_brew_dolphins_grace] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:tropical_fish"}} run function witchpack:brewing_recipes/dolphins_grace
execute if entity @s[tag=!c_wp_brew_haste] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:gold_ingot"}} run function witchpack:brewing_recipes/haste
execute if entity @s[tag=!c_wp_brew_resistance] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:turtle_scute"}} run function witchpack:brewing_recipes/resistance
execute if entity @s[tag=!c_wp_brew_health_boost] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:armadillo_scute"}} run function witchpack:brewing_recipes/health_boost
execute if entity @s[tag=!c_wp_brew_glowing] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:glowstone"}} run function witchpack:brewing_recipes/glowing
execute if entity @s[tag=!c_wp_brew_hunger] if data entity @n[type=item,distance=..0.5] {Item:{id:"minecraft:rotten_flesh"}} run function witchpack:brewing_recipes/hunger