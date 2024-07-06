scoreboard players remove @s mech.power 4
playsound minecraft:block.ender_chest.open master @a ~ ~ ~ 2 2
execute positioned ^ ^1.5 ^1.5 rotated as @s run function mechanics:turret/lazer
