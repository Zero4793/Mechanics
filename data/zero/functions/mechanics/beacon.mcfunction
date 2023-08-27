#Crimson Tardis

#create
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ redstone_lamp if block ~ ~-2 ~ gold_block unless entity @e[tag=Beacon,distance=..2] run summon area_effect_cloud ~ ~-1 ~ {Duration:1,Tags:[Beacon,Machine,Device]}
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ redstone_lamp if block ~ ~-2 ~ gold_block run scoreboard players set @e[tag=Beacon,sort=nearest,limit=1] Power 0
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ redstone_lamp if block ~ ~-2 ~ gold_block run scoreboard players set @e[tag=Beacon,sort=nearest,limit=1] Capacity 64
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ redstone_lamp if block ~ ~-2 ~ gold_block run tag @s add Drop

#destroy
execute as @e[tag=Beacon] at @s if block ~ ~-1 ~ air run tag @s add destroy
execute as @e[tag=Beacon] at @s if block ~ ~ ~ air run tag @s add destroy
execute as @e[tag=Beacon,tag=destroy] at @s run setblock ~ ~ ~ redstone_lamp
execute as @e[tag=Beacon,tag=destroy] at @s run fill ~ ~ ~ ~ ~-1 ~ air destroy
execute as @e[tag=Beacon,tag=destroy] at @s run kill @s


#active
#execute as @e[tag=Beacon] at @s run particle minecraft:dust 1 0 0 1 ~ ~0.4 ~ 0.1 0.1 0.1 0 1
execute as @e[tag=Beacon,scores={Power=1..}] at @s run setblock ~ ~ ~ white_stained_glass
execute as @e[tag=Beacon,scores={Power=..0}] at @s run setblock ~ ~ ~ black_stained_glass

#ability
execute as @e[tag=Beacon,scores={Power=1..}] at @s if entity @e[limit=1,type=#vp:hostile,distance=..8] run effect give @e[type=#vp:hostile,distance=..8] wither 1 1 true
execute as @e[tag=Beacon,scores={Power=1..}] at @s if entity @e[limit=1,type=#vp:hostile,distance=..8] run particle minecraft:dust 1 0 0 1 ~ ~-1 ~ 2 2 2 0 50

#consume
execute as @e[tag=Beacon,scores={Power=1..}] at @s if entity @e[limit=1,type=#vp:hostile,distance=..8] run scoreboard players remove @e[tag=Beacon,scores={Power=1..}] Power 1
