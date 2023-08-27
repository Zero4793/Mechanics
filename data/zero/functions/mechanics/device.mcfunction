#Crimson Tardis

#Fuel - Device
tag @e[type=item,nbt={Item:{id:"minecraft:coal"}}] add coal
tag @e[type=item,nbt={Item:{id:"minecraft:coal_block"}}] add coalblock
execute as @e[tag=Device,tag=!Active] at @s if entity @e[tag=coal,limit=1,distance=..2] run scoreboard players add @s Power 120
execute as @e[tag=Device,tag=!Active] at @s if entity @e[tag=coalblock,limit=1,distance=..2] run scoreboard players add @s Power 1200
execute as @e[tag=Device,tag=!Active] at @s run kill @e[tag=coal,distance=..2]
execute as @e[tag=Device,tag=!Active] at @s run kill @e[tag=coalblock,distance=..2]

#Eternal - Machine
execute as @e[type=area_effect_cloud,tag=Machine] run data merge entity @s {Age:-1,Duration:2147483647}

#Drop
execute as @e[type=armor_stand,tag=Drop] at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:armor_stand",Count:1}}
execute as @e[type=armor_stand,tag=Drop] at @s run kill @s

#Active
#execute as @e[tag=Device] at @s run particle minecraft:dust 1 0 0 1 ~ ~0.4 ~ 0.1 0.1 0.1 0 1
