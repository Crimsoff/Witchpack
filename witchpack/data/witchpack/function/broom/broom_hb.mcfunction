# Check if attacked
execute if score .c_wp_gametime_even c_wp_gametime matches 0 if data entity @s attack.player run function witchpack:broom/broom_attacked

# Check if hp is 0 or less, or if the bat dies, or if the item display is missing
execute if score @s c_wp_hp matches ..0 run tag @s add c_wp_broom_destroy
execute unless predicate witchpack:batpassenger run tag @s add c_wp_broom_destroy
execute unless predicate witchpack:riding run tag @s add c_wp_broom_destroy

# Destroy entity
execute if entity @s[tag=c_wp_broom_destroy] run function witchpack:broom/broom_destroy


# Check if no one has interacted & return
execute unless data entity @s interaction.player run return 1

# Check if there is a passenger on the display
execute on vehicle if predicate witchpack:has_player_passenger run return 2

# Get interaction's UUID
execute store result score @s c_wp_i_UUID0 run data get entity @s interaction.player[0]
execute store result score @s c_wp_i_UUID1 run data get entity @s interaction.player[1]
execute store result score @s c_wp_i_UUID2 run data get entity @s interaction.player[2]
execute store result score @s c_wp_i_UUID3 run data get entity @s interaction.player[3]

# Reset interaction
data remove entity @s interaction

# Match interaction to player and have them mount the display
execute as @e[type=player] if score @s c_wp_UUID0 = @n[type=interaction,tag=c_wp_broom_hb,distance=..0.5] c_wp_i_UUID0 if score @s c_wp_UUID1 = @n[type=interaction,tag=c_wp_broom_hb,distance=..0.5] c_wp_i_UUID1 if score @s c_wp_UUID2 = @n[type=interaction,tag=c_wp_broom_hb,distance=..0.5] c_wp_i_UUID2 if score @s c_wp_UUID3 = @n[type=interaction,tag=c_wp_broom_hb,distance=..0.5] c_wp_i_UUID3 run ride @s dismount
execute at @s as @e[type=player] if score @s c_wp_UUID0 = @n[type=interaction,tag=c_wp_broom_hb,distance=..0.5] c_wp_i_UUID0 if score @s c_wp_UUID1 = @n[type=interaction,tag=c_wp_broom_hb,distance=..0.5] c_wp_i_UUID1 if score @s c_wp_UUID2 = @n[type=interaction,tag=c_wp_broom_hb,distance=..0.5] c_wp_i_UUID2 if score @s c_wp_UUID3 = @n[type=interaction,tag=c_wp_broom_hb,distance=..0.5] c_wp_i_UUID3 positioned ~ ~ ~ run ride @s mount @n[type=item_display,tag=c_wp_broom_display,distance=..1]