#Crimson Tardis

#create
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ redstone_lamp if block ~ ~-2 ~ iron_block unless entity @e[tag=Turret,distance=..2] run summon area_effect_cloud ~ ~-1 ~ {Duration:1,Tags:[Turret,Machine,Device]}
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ redstone_lamp if block ~ ~-2 ~ iron_block run scoreboard players set @e[tag=Turret,sort=nearest,limit=1] Power 0
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ redstone_lamp if block ~ ~-2 ~ iron_block run scoreboard players set @e[tag=Turret,sort=nearest,limit=1] Capacity 120
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ redstone_lamp if block ~ ~-2 ~ iron_block run tag @s add Drop

#destroy
execute as @e[tag=Turret] at @s if block ~ ~-1 ~ air run tag @s add destroy
execute as @e[tag=Turret] at @s if block ~ ~ ~ air run tag @s add destroy
execute as @e[tag=Turret,tag=destroy] at @s run setblock ~ ~ ~ redstone_lamp
execute as @e[tag=Turret,tag=destroy] at @s run fill ~ ~ ~ ~ ~-1 ~ air destroy
execute as @e[tag=Turret,tag=destroy] at @s run kill @s

#active
#execute as @e[tag=Turret] at @s run particle minecraft:dust 1 0 0 1 ~ ~0.4 ~ 0.1 0.1 0.1 0 1
execute as @e[tag=Turret,scores={Power=1..}] at @s run setblock ~ ~ ~ white_stained_glass
execute as @e[tag=Turret,scores={Power=..0}] at @s run setblock ~ ~ ~ black_stained_glass

#consume
execute as @e[tag=Turret,scores={Power=1..}] at @s if entity @e[tag=Bullet,distance=..2] run scoreboard players remove @s Power 1

#turret

#auto
execute as @e[tag=Turret,scores={Power=1..}] at @s if entity @e[type=#vp:hostile,distance=..8] unless entity @a[distance=..1.1] facing entity @e[type=#vp:hostile,limit=1,sort=nearest,distance=..8] feet run tp @s ~ ~ ~ ~ ~-10
execute as @e[tag=Turret,scores={Power=1..}] at @s if entity @e[type=#vp:hostile,distance=..8] unless entity @a[distance=..1.1] run summon area_effect_cloud ^ ^0.5 ^1 {Duration:1,Tags:[Bullet,Machine]}

#manual
execute as @e[tag=Turret,scores={Power=1..}] at @s if entity @a[distance=..1.1] rotated as @p run tp @s ~ ~ ~ ~ ~
execute as @e[tag=Turret,scores={Power=1..}] at @s if entity @a[distance=..1.1] run execute at @p if block ^ ^ ^0.5 white_stained_glass run execute at @s run summon area_effect_cloud ^ ^0.5 ^1 {Duration:1,Tags:[Bullet,Machine]}

#bullet
execute as @e[tag=Bullet,tag=!set] at @s rotated as @e[tag=Turret,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
tag @e[tag=Bullet] add set
execute as @e[tag=Bullet] at @s run tp @s ^ ^ ^0.4 ~ ~1
execute at @e[tag=Bullet] run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1
execute at @e[tag=Bullet] positioned ~ ~-.5 ~ run effect give @e[type=!#vp:undead,distance=..1] instant_damage 1 0 true
execute at @e[tag=Bullet] positioned ~ ~-.5 ~ run effect give @e[type=#vp:undead,distance=..1] instant_health 1 0 true
execute as @e[tag=Bullet] at @s positioned ~ ~-.5 ~ unless block ~ ~ ~ air unless block ~ ~ ~ cave_air run kill @s
execute as @e[tag=Bullet] at @s positioned ~ ~-.5 ~ if entity @e[type=!item,type=!armor_stand,type=!area_effect_cloud,distance=..1] run kill @s

#scores


