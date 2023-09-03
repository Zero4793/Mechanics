particle crit ~ ~ ~ 0 0 0 0 1 normal
# playsound minecraft:block.barrel.close master @a ~ ~ ~ 1 2
execute as @e[distance=..1] run damage @s 6 magic
execute positioned ~ ~-1 ~ as @e[distance=..1] run damage @s 6 magic
execute if block ~ ~ ~ #zero:air positioned ^ ^ ^.5 run function mechanics:turret/lazer
