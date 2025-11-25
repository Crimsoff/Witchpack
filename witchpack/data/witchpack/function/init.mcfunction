# Set up versioning
scoreboard objectives add c_wp_version dummy
scoreboard players set .c_wp_current_version c_wp_version 1

# Track UUIDs
scoreboard objectives add c_wp_UUID0 dummy "UUID0"
scoreboard objectives add c_wp_UUID1 dummy "UUID1"
scoreboard objectives add c_wp_UUID2 dummy "UUID2"
scoreboard objectives add c_wp_UUID3 dummy "UUID3"

# Track linked entity
scoreboard objectives add c_wp_link_UUID0 dummy "Linked UUID0"
scoreboard objectives add c_wp_link_UUID1 dummy "Linked UUID1"
scoreboard objectives add c_wp_link_UUID2 dummy "Linked UUID2"
scoreboard objectives add c_wp_link_UUID3 dummy "Linked UUID3"

# Track player interaction
scoreboard objectives add c_wp_i_UUID0 dummy "Interacted UUID0"
scoreboard objectives add c_wp_i_UUID1 dummy "Interacted UUID1"
scoreboard objectives add c_wp_i_UUID2 dummy "Interacted UUID2"
scoreboard objectives add c_wp_i_UUID3 dummy "Interacted UUID3"

# Track current pos
scoreboard objectives add c_wp_x dummy "X Position"
scoreboard objectives add c_wp_y dummy "Y Position"
scoreboard objectives add c_wp_z dummy "Z Position"

# Track linked pos
scoreboard objectives add c_wp_link_x dummy "Linked X Position"
scoreboard objectives add c_wp_link_y dummy "Linked Y Position"
scoreboard objectives add c_wp_link_z dummy "Linked Z Position"

# Custom entity attack cooldowns
scoreboard objectives add c_wp_e_attack_cd dummy

# Track hp 
scoreboard objectives add c_wp_hp dummy "Hitpoints"

# Track hurt time
scoreboard objectives add c_wp_hurt dummy

# Track animation
scoreboard objectives add c_wp_anim dummy

# Track ritual stuff
scoreboard objectives add c_wp_ritual_facing dummy
scoreboard objectives add c_wp_ritual_activated dummy
scoreboard objectives add c_wp_chalk_total dummy
scoreboard objectives add c_wp_chalk_otherworld dummy
scoreboard objectives add c_wp_chalk_infernal dummy
scoreboard objectives add c_wp_ritual_timer dummy

scoreboard objectives add c_wp_item_count dummy
scoreboard objectives add c_wp_item_durability dummy
scoreboard objectives add c_wp_removal_delay dummy

# Crop stuff
scoreboard objectives add c_wp_growth_stage dummy

# Item stuff
scoreboard objectives add c_wp_item_cd dummy

# Enchant stuff
scoreboard objectives add c_wp_branch_protection dummy

# Get game time
scoreboard objectives add c_wp_gametime dummy

# Constants
scoreboard objectives add c_wp_const dummy
scoreboard players set #2 c_wp_const 2
scoreboard players set #10 c_wp_const 10
scoreboard players set #20 c_wp_const 20

# Cauldron Stuff
scoreboard objectives add c_wp_color dummy
scoreboard objectives add c_wp_capacity dummy

# Generic counter
scoreboard objectives add c_wp_count dummy
