#Crimson Tardis

#create
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ redstone_lamp if block ~ ~-2 ~ diamond_block unless entity @e[tag=Generator,distance=..2] run summon area_effect_cloud ~ ~-1 ~ {Duration:1,Tags:[Generator,Transformer,Machine,Device]}
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ redstone_lamp if block ~ ~-2 ~ diamond_block run scoreboard players set @e[tag=Generator,sort=nearest,limit=1] Power 0
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ redstone_lamp if block ~ ~-2 ~ diamond_block run tag @s add Drop

#destroy
execute as @e[tag=Generator] at @s if block ~ ~-1 ~ air run tag @s add destroy
execute as @e[tag=Generator] at @s if block ~ ~ ~ air run tag @s add destroy
execute as @e[tag=Generator,tag=destroy] at @s run setblock ~ ~ ~ redstone_lamp
execute as @e[tag=Generator,tag=destroy] at @s run fill ~ ~ ~ ~ ~-1 ~ air destroy
execute as @e[tag=Generator,tag=destroy] at @s run kill @s

#active
#execute as @e[tag=Generator] at @s run particle minecraft:dust 1 0 0 1 ~ ~0.4 ~ 0.1 0.1 0.1 0 1
execute as @e[tag=Generator,scores={Power=1..}] at @s run setblock ~ ~ ~ white_stained_glass
execute as @e[tag=Generator,scores={Power=..0}] at @s run setblock ~ ~ ~ black_stained_glass