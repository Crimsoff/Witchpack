tag @s remove c_wp_cauldron_full
tag @s remove c_wp_cauldron_water
tag @s remove c_wp_brew_nether_wart
tag @s remove c_wp_brew_time
tag @s remove c_wp_brew_amp
tag @s remove c_wp_brew_strength
tag @s remove c_wp_brew_speed
tag @s remove c_wp_brew_invisibility
tag @s remove c_wp_brew_night_vision
tag @s remove c_wp_brew_luck
tag @s remove c_wp_brew_jump_boost
tag @s remove c_wp_brew_fire_resistance
tag @s remove c_wp_brew_slowness
tag @s remove c_wp_brew_water_breathing
tag @s remove c_wp_brew_instant_health
tag @s remove c_wp_brew_instant_damage
tag @s remove c_wp_brew_poison
tag @s remove c_wp_brew_regeneration
tag @s remove c_wp_brew_weakness
tag @s remove c_wp_brew_slow_falling
tag @s remove c_wp_brew_wind_charged
tag @s remove c_wp_brew_weaving
tag @s remove c_wp_brew_oozing
tag @s remove c_wp_brew_infested
tag @s remove c_wp_brew_wither
tag @s remove c_wp_brew_absorption
tag @s remove c_wp_brew_blindness
tag @s remove c_wp_brew_nausea
tag @s remove c_wp_brew_levitation
tag @s remove c_wp_brew_saturation
tag @s remove c_wp_brew_darkness
tag @s remove c_wp_brew_dolphins_grace
tag @s remove c_wp_brew_haste
tag @s remove c_wp_brew_resistance
tag @s remove c_wp_brew_health_boost
tag @s remove c_wp_brew_mandrake
tag @s remove c_wp_brew_gunpowder
tag @s remove c_wp_brew_glowing

scoreboard players set @s c_wp_capacity 1
data modify entity @s data.brew set value []
function animated_java:wp_cauldron/animations/water_empty/play