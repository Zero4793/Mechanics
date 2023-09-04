#Zero_4793

execute if score zero.datapackLoad server matches 1 run scoreboard players add zero.datapackCount server 1
execute if score zero.datapackLoad server matches 1 run tellraw @a [{"color":"aqua","text":"  "},{"text":"Mechanics ","hoverEvent":{"action":"show_text","contents":{"text":"Automated machines for mining, defence and more!","color":"blue"}},"color":"aqua","bold":true},{"text":"v"},{"score":{"name":"zero.mechanics-a","objective":"version"}},{"text":"."},{"score":{"name":"zero.mechanics-b","objective":"version"}},{"color":"light_purple","text":" by Zero_4793","hoverEvent":{"action":"show_text","contents":{"text":"Open PlanetMinecraft page for Zero_4793","color":"green"}},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/zero_4793/"}}]

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
