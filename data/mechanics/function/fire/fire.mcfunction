#effect
execute store result score @s mech.num run fill ~-16 ~-8 ~-16 ~16 ~8 ~16 air replace fire
#remove score
scoreboard players operation @s mech.power -= @s mech.num
#particle
execute if score @s mech.num matches 1.. run particle cloud ~ ~ ~ 4 0 4 .1 128
#sound
execute if score @s mech.num matches 1.. run playsound entity.generic.extinguish_fire ambient @a ~ ~ ~ 1 .8
