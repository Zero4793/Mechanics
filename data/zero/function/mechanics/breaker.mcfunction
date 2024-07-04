#Crimson Tardis

#create
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ redstone_lamp if block ~ ~-2 ~ piston[facing=down] unless entity @e[tag=Breaker,distance=..2] run summon area_effect_cloud ~ ~-1 ~ {Duration:1,Tags:[Breaker,Machine,Device]}
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ redstone_lamp if block ~ ~-2 ~ piston[facing=down] run scoreboard players set @e[tag=Breaker,sort=nearest,limit=1] Power 0
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ redstone_lamp if block ~ ~-2 ~ piston[facing=down] run scoreboard players set @e[tag=Breaker,sort=nearest,limit=1] Capacity 64
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ redstone_lamp if block ~ ~-2 ~ piston[facing=down] run tag @s add Drop

#destroy
execute as @e[tag=Breaker] at @s if block ~ ~-1 ~ air run tag @s add destroy
execute as @e[tag=Breaker] at @s if block ~ ~ ~ air run tag @s add destroy
execute as @e[tag=Breaker,tag=destroy] at @s run setblock ~ ~ ~ redstone_lamp
execute as @e[tag=Breaker,tag=destroy] at @s run fill ~ ~ ~ ~ ~-1 ~ air destroy
execute as @e[tag=Breaker,tag=destroy] at @s run kill @s


#active
#execute as @e[tag=Breaker] at @s run particle minecraft:dust 1 0 0 1 ~ ~0.4 ~ 0.1 0.1 0.1 0 1
execute as @e[tag=Breaker,scores={Power=1..}] at @s run setblock ~ ~ ~ white_stained_glass
execute as @e[tag=Breaker,scores={Power=..0}] at @s run setblock ~ ~ ~ black_stained_glass

#ability
execute as @e[tag=Breaker,scores={Power=1..}] at @s unless block ~ ~-2 ~ #vp:air unless block ~ ~-2 ~ #vp:unbreakable run tag @s add break
execute as @e[tag=Breaker,tag=break] at @s run scoreboard players remove @s Power 1
execute as @e[tag=Breaker,tag=break] at @s run playsound minecraft:block.anvil.break block @a ~ ~ ~ 2 0
execute as @e[tag=Breaker,tag=break] at @s run fill ~ ~-2 ~ ~ ~-2 ~ air destroy
tag @e[tag=Breaker,tag=break] remove break
