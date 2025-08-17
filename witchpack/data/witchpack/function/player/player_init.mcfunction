execute store result score @s c_wp_UUID0 run data get entity @s UUID[0]
execute store result score @s c_wp_UUID1 run data get entity @s UUID[1]
execute store result score @s c_wp_UUID2 run data get entity @s UUID[2]
execute store result score @s c_wp_UUID3 run data get entity @s UUID[3]

recipe give @s witchpack:broom_recipe
recipe give @s witchpack:chalk_gold_recipe
recipe give @s witchpack:chalk_red_recipe
recipe give @s witchpack:chalk_purple_recipe
recipe give @s witchpack:chalk_recipe
recipe give @s witchpack:mutandis_spinae
recipe give @s witchpack:mirror_recipe
recipe give @s witchpack:taglock_recipe
recipe give @s witchpack:earmuffs
recipe give @s witchpack:anointing_paste
recipe give @s witchpack:brew_guide
recipe give @s witchpack:ritual_guide
recipe give @s witchpack:curse_guide

scoreboard players operation @s c_wp_version = .c_wp_current_version c_wp_version
