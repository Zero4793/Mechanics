execute as @e[type=#zero:hostile,distance=..8] run damage @s 1
scoreboard players remove @s mech.power 4
particle dust 1 0 0 2 ~ ~ ~ 4 1 4 0.1 100 force
playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 2
