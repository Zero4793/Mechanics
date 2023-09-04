execute if score @s mech.power < $min mech.power run tag @e[type=armor_stand,tag=mech.candidate] remove mech.candidate
execute if score @s mech.power <= $min mech.power run tag @s add mech.candidate
execute if score @s mech.power < $min mech.power run scoreboard players operation $min mech.power = @s mech.power
