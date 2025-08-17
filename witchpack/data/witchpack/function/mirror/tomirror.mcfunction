execute as @e[distance=..0.5,scores={c_wp_into_mirror=61..}] at @s unless dimension witchpack:mirror store result score @s c_wp_last_x run data get entity @s Pos[0]
execute as @e[distance=..0.5,scores={c_wp_into_mirror=61..}] at @s unless dimension witchpack:mirror store result score @s c_wp_last_y run data get entity @s Pos[1]
execute as @e[distance=..0.5,scores={c_wp_into_mirror=61..}] at @s unless dimension witchpack:mirror store result score @s c_wp_last_z run data get entity @s Pos[2]

execute as @a[distance=..0.5,scores={c_wp_into_mirror=61..}] at @s unless dimension witchpack:mirror run function witchpack:dimension/storelastdimension
$execute as @e[distance=..0.5,scores={c_wp_into_mirror=61..}] in minecraft:overworld positioned $(mirrorX) 0 $(mirrorZ) in witchpack:mirror run tp @s ~0.5 5 ~0.5
$execute in minecraft:overworld positioned $(mirrorX) 0 $(mirrorZ) in witchpack:mirror run playsound minecraft:block.portal.travel player @a[scores={c_wp_into_mirror=61..}] ~0.5 ~ ~0.5 0.5 0.5

tellraw @a[scores={c_wp_into_mirror=61..}] [{"text":"You are not bound by this seal. "},{"text":"[Click Here]","color":"green","click_event":{"action":"run_command","command":"/trigger c_wp_force_exit_mirror"}},{"text":" to leave, or use /trigger c_wp_force_exit_mirror"}]
execute as @e[scores={c_wp_into_mirror=61..}] at @s if dimension witchpack:mirror run scoreboard players set @s c_wp_into_mirror 0