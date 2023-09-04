particle dust 1.1 0 0 1.3 ~ ~ ~
# playsound minecraft:block.barrel.close master @a ~ ~ ~ .2 2
# playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ .5 2
execute positioned ~ ~ ~ as @e[distance=..1] run damage @s 6 magic
execute positioned ~ ~-1 ~ as @e[distance=..1] run damage @s 6 magic
execute if block ^ ^ ^.5 #zero:air positioned ^ ^ ^.5 run function mechanics:turret/lazer
