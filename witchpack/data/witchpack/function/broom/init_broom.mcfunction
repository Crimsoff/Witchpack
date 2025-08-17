# Set up broom model
execute run summon item_display ~ ~1 ~ {width:3f,height:1f,interpolation_duration:2,teleport_duration:5,Tags:["c_wp_broom_display_init"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:witch_spawn_egg",count:1,components:{"minecraft:entity_data":{id:"minecraft:marker",Tags:["c_wp_broom_init"]},"minecraft:enchantment_glint_override":true,"minecraft:item_name":'Enchanted Broom',rarity:"rare","minecraft:item_model":"witchpack:broom"}},Passengers:[{NoGravity:1b,response:1b,Tags:["c_wp_broom_hb_init"],Passengers:[{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["c_wp_broom_hb2_init","c_wp_not_familiar","c_wp_immovable"],DeathLootTable:"minecraft:empty",active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:3},{id:"minecraft:scale",base:.25}]}],id:"minecraft:interaction",width:1f,height:0.2f}]}
execute positioned ~ ~1 ~ run data modify entity @n[type=interaction,distance=..1,tag=c_wp_broom_hb_init] data.Name set from entity @s CustomName
execute positioned ~ ~1 ~ run data modify entity @n[type=item_display,distance=..1,tag=c_wp_broom_display_init] data.Name set from entity @s CustomName

scoreboard players set @e[type=minecraft:interaction,tag=c_wp_broom_hb_init] c_wp_hp 3

# Now valid entity
tag @e[type=bat,tag=c_wp_broom_hb2_init,limit=1,sort=nearest] add c_wp_broom_hb2
tag @e[type=interaction,tag=c_wp_broom_hb_init,limit=1,sort=nearest] add c_wp_broom_hb
tag @e[type=item_display,tag=c_wp_broom_display_init,limit=1,sort=nearest] add c_wp_broom_display

# Clean up
tag @e[type=interaction,tag=c_wp_broom_hb_init,limit=1,sort=nearest] remove c_wp_broom_hb_init
tag @e[type=bat,tag=c_wp_broom_hb2_init,limit=1,sort=nearest] remove c_wp_broom_hb2_init
tag @e[type=item_display,tag=c_wp_broom_display_init,limit=1,sort=nearest] remove c_wp_broom_display_init

kill @s