particle dust 1.1 0 0 1.3 ~ ~ ~
# playsound minecraft:block.barrel.close master @a ~ ~ ~ .2 2
# playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ .5 2
execute positioned ~ ~ ~ at @e[distance=..1] run damage @e[distance=..0,limit=1] 12 arrow by @s
execute positioned ~ ~-1 ~ at @e[distance=..1] run damage @e[distance=..0,limit=1] 12 arrow by @s
execute if block ^ ^ ^.5 #zero:no_hitbox positioned ^ ^ ^.5 run function mechanics:turret/lazer