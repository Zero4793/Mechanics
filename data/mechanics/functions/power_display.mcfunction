execute if score @s mech.power matches 0 run setblock ~ ~1 ~ black_stained_glass
execute if score @s mech.power matches 1..2 run setblock ~ ~1 ~ gray_stained_glass
execute if score @s mech.power matches 3..4 run setblock ~ ~1 ~ light_gray_stained_glass
execute if score @s mech.power matches 5.. run setblock ~ ~1 ~ white_stained_glass