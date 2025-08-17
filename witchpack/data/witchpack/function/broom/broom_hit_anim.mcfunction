# Run animation
execute if score @s c_wp_anim matches 0 run data merge entity @s {start_interpolation:-1,transformation:{left_rotation:[0f,-0.025f,0f,1f]}}
execute if score @s c_wp_anim matches 2 run data merge entity @s {start_interpolation:-1,transformation:{left_rotation:[0f,0.025f,0f,1f]}}
execute if score @s c_wp_anim matches 4 run data merge entity @s {start_interpolation:-1,transformation:{left_rotation:[0f,0f,0f,1f]}}

# Increment frame
scoreboard players add @s c_wp_anim 1

# Remove anim when done
tag @s[scores={c_wp_anim=5..}] remove c_wp_broom_hit
scoreboard players set @s[scores={c_wp_anim=5..}] c_wp_anim 0