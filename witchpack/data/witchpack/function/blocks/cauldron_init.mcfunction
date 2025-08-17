execute positioned ~ ~10000 ~ run summon interaction ~ ~ ~ {Silent:1b,width:1f,height:1f,Tags:["c_wp_cauldron_interaction_init","c_wp_cauldron_interaction"],Passengers:[{id:"minecraft:shulker",attributes:[{id:"minecraft:scale",base:.999999}],Silent:1b,Invulnerable:1b,DeathLootTable:"none",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["c_wp_cauldron_block","c_wp_immovable"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}]}]}
execute positioned ~ ~10000 ~ run ride @n[type=interaction,tag=c_wp_cauldron_interaction_init] mount @s
execute on passengers run tag @s remove c_wp_cauldron_interaction_init
execute on passengers run scoreboard players set @s c_wp_hp 10
execute on passengers if entity @s[tag=aj.wp_cauldron.display_node.water] run data modify entity @s item.components."minecraft:dyed_color" set value 4159204
scoreboard players set @s c_wp_color 16777215
scoreboard players set @s c_wp_capacity 1
data modify entity @s data.brew set value []