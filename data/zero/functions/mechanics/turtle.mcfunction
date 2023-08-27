#By Crimson Tardis

#Power/Torch
scoreboard players remove @e[type=armor_stand,tag=Mine,tag=Active,scores={Power=1..}] Power 1
scoreboard players add @e[type=armor_stand,tag=Mine,tag=Active,scores={Power=1..}] Torch 1
scoreboard players set @e[type=armor_stand,tag=Mine,tag=Active,scores={Torch=119..}] Torch 0


#Items
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ hopper run tag @s add Items 

#Make
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ redstone_lamp if block ~ ~-1 ~1 coal_block if block ~ ~-1 ~-1 coal_block if block ~1 ~-1 ~ coal_block if block ~-1 ~-1 ~ coal_block if block ~1 ~-1 ~1 iron_block if block ~-1 ~-1 ~1 iron_block if block ~1 ~-1 ~-1 iron_block if block ~-1 ~-1 ~-1 iron_block run give @p minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Mining Turtle\"}"}} 1
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ redstone_lamp if block ~ ~-1 ~1 coal_block if block ~ ~-1 ~-1 coal_block if block ~1 ~-1 ~ coal_block if block ~-1 ~-1 ~ coal_block if block ~1 ~-1 ~1 iron_block if block ~-1 ~-1 ~1 iron_block if block ~1 ~-1 ~-1 iron_block if block ~-1 ~-1 ~-1 iron_block run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air
execute as @e[type=endermite,name="Mining Turtle"] at @s run summon armor_stand ~ ~ ~ {Invisible:1,Small:1,Tags:[Mine,Device,empty]}
kill @e[type=minecraft:endermite,name="Mining Turtle"]
kill @e[type=armor_stand,tag=Kill]

#Destroy
execute as @e[type=armor_stand,tag=Mine,tag=!Active] at @s if entity @e[tag=tnt,limit=1,distance=..2] run give @p minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Mining Turtle\"}"}} 1
execute as @e[type=armor_stand,tag=Mine,tag=!Active] at @s if entity @e[tag=tnt,limit=1,distance=..2] run setblock ~ ~ ~ air
execute as @e[type=armor_stand,tag=Mine,tag=!Active] at @s if entity @e[tag=tnt,limit=1,distance=..2] run kill @s
#Stop
execute as @e[type=armor_stand,tag=Mine,tag=Active] at @s if entity @e[tag=tnt,limit=1,distance=..2] run tag @s remove Active
execute as @e[type=armor_stand,tag=Mine] at @s if entity @e[tag=tnt,limit=1,distance=..2] run give @p tnt 1
execute as @e[type=armor_stand,tag=Mine] at @s if entity @e[tag=tnt,limit=1,distance=..2] run kill @e[tag=tnt,limit=1,distance=..2]
execute as @e[type=armor_stand,tag=Mine] at @s if entity @e[tag=tnt,limit=1,distance=..2] run kill @e[tag=bedrock,limit=1,distance=..2]

#set power
scoreboard players set @e[type=armor_stand,tag=Mine,tag=empty] Power 0
tag @e[type=armor_stand,tag=Mine,tag=empty] remove empty

#Particles
execute as @e[type=armor_stand,tag=Mine,scores={Power=1..}] at @s align xyz positioned ~0.5 ~ ~0.5 run particle dust 1 0 0 1 ~ ~1 ~ 0.2 0 0.2 0.1 1
execute as @e[type=armor_stand,tag=Mine,scores={Power=0..0}] at @s align xyz positioned ~0.5 ~ ~0.5 run particle dust 1 0 1 1 ~ ~1 ~ 0.1 0 0.1 0 1
execute as @e[type=armor_stand,tag=Mine,tag=Active] at @s run particle firework ~ ~ ~ 0.2 0 0.2 0.0 1

#Function
execute as @e[type=armor_stand,tag=Mine] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace observer
execute as @e[type=armor_stand,tag=Mine,tag=Active,scores={Power=1..}] at @s run fill ~-1 ~ ~-1 ~1 ~2 ~1 air destroy
execute as @e[type=armor_stand,tag=Mine,scores={Power=1..}] at @s run kill @e[type=item,tag=observer]
execute as @e[type=armor_stand,tag=Mine,scores={Power=1..}] at @s run tp @e[type=item,tag=!tnt,tag=!coal,tag=!coalblock,distance=..3] @e[type=armor_stand,tag=Items,distance=..64,sort=random,limit=1]
execute as @e[type=armor_stand,tag=Mine,tag=Active] at @s run tp @e[type=item,tag=!tnt,distance=..3] @e[type=armor_stand,tag=Items,distance=..64,sort=random,limit=1]
execute as @e[type=armor_stand,tag=Mine,scores={Power=1..}] at @s run tp @e[type=experience_orb,distance=..3] @e[type=armor_stand,tag=Items,distance=..64,sort=random,limit=1]
execute as @e[type=armor_stand,tag=Mine,scores={Torch=..0}] at @s run fill ^ ^ ^-4 ^ ^ ^-4 torch replace air
execute as @e[type=armor_stand,tag=Mine,scores={Torch=..0}] at @s positioned ~ ~-1 ~ run fill ^ ^ ^-4 ^ ^ ^-4 stone replace air
execute as @e[type=armor_stand,tag=Mine,scores={Torch=..0}] at @s positioned ~ ~-1 ~ run fill ^ ^ ^-4 ^ ^ ^-4 stone replace cave_air
execute as @e[type=armor_stand,tag=Mine] at @s run setblock ~ ~ ~ observer
execute as @e[type=armor_stand,tag=Mine,tag=!Active] at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute as @e[type=armor_stand,tag=Mine] at @s if block ~ ~-2 ~ bedrock run tag @s remove Active

#Direction
execute as @e[type=armor_stand,tag=Mine,tag=!Active] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=!Mine,tag=!Generator,tag=!Turret,sort=nearest,limit=1,distance=1..2]
execute as @e[type=armor_stand,tag=Mine] at @s if entity @e[type=armor_stand,tag=!Mine,tag=!Generator,tag=!Turret,sort=nearest,limit=1,distance=..2] run tag @s add Active
tag @e[type=armor_stand,tag=Mine,scores={Power=..0}] remove Active
execute as @e[type=armor_stand,tag=Mine,tag=Active,scores={Power=1..}] at @s run tp @s ^ ^ ^0.05


