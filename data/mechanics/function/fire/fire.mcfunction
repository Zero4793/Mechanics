#effect
execute store result score @s mech.num run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 air replace fire
#remove score
scoreboard players operation @s mech.power -= @s mech.num
#sound+particle
