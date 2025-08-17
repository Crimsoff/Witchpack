scoreboard players set @s c_wp_force_exit_mirror 0
scoreboard players enable @s c_wp_force_exit_mirror
execute unless dimension witchpack:mirror run return fail
execute store result storage witchpack:exitmirror X int 1 run scoreboard players get @s c_wp_last_x
execute store result storage witchpack:exitmirror Y int 1 run scoreboard players get @s c_wp_last_y
execute store result storage witchpack:exitmirror Z int 1 run scoreboard players get @s c_wp_last_z
function witchpack:dimension/getlastdimension
function witchpack:dimension/escapemirror with storage witchpack:exitmirror