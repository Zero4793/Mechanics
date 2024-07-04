#Zero_4793

# Shared
# Creation
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ redstone_lamp run function mechanics:creation
# Destruction
execute as @e[type=armor_stand,tag=mech.device] at @s if block ~ ~ ~ air run function mechanics:destruction
# execute as @e[type=armor_stand,tag=mech.device] at @s if block ~ ~1 ~ air run function mechanics:destruction
# Power Display
# execute if score zero.tick server matches 0 as @e[type=armor_stand,tag=mech.device] at @s run function mechanics:power_display
# Ambient Sound
execute if score zero.tick server matches 0 as @e[type=armor_stand,tag=mech.device] if score @s mech.power matches 0 at @s run playsound minecraft:block.beacon.ambient block @a ~ ~ ~ 1 0
execute if score zero.tick server matches 0 as @e[type=armor_stand,tag=mech.device] if score @s mech.power matches 1.. at @s run playsound minecraft:block.beacon.ambient block @a ~ ~ ~ 1 2

# Generator - Fueling
execute as @e[type=armor_stand,tag=mech.generator] at @s positioned ~ ~1 ~ run function mechanics:fuel

# Conduit and Generator - Powering
execute if score zero.tick server matches 0 as @e[type=armor_stand,tag=mech.give] at @s positioned ~ ~1 ~ run function mechanics:conduit/conduit

# Turret
# execute as @e[type=armor_stand,tag=mech.turret] if score @s mech.power matches 1.. at @s run tp @s ~ ~ ~ ~.5 ~
execute as @e[type=armor_stand,tag=mech.turret] at @s run function mechanics:turret/turret

# Emitter
execute if score zero.tick server matches 0 as @e[type=armor_stand,tag=mech.emitter] if score @s mech.power matches 4.. at @s if entity @e[type=#zero:hostile,distance=..8] run function mechanics:emitter/emitter

# Regenerator
execute if score zero.tick server matches 0 as @e[type=armor_stand,tag=mech.regenerator] if score @s mech.power matches 4.. at @s if entity @e[type=#zero:anti_hostile,distance=..4] run function mechanics:regenerator/regenerator

# range detection
# execute if score zero.tick server matches 0 as @a at @s facing entity @e[tag=mech.device,distance=..32] feet run function mechanics:range
