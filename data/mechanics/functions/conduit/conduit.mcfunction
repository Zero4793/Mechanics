# generator 4
execute if block ~ ~-1 ~ diamond_block run scoreboard players set @s mech.bandwidth 4
# conduit 1-4
execute if block ~ ~-1 ~ cut_copper run scoreboard players set @s mech.bandwidth 4
execute if block ~ ~-1 ~ exposed_cut_copper run scoreboard players set @s mech.bandwidth 3
execute if block ~ ~-1 ~ weathered_cut_copper run scoreboard players set @s mech.bandwidth 2
execute if block ~ ~-1 ~ oxidized_cut_copper run scoreboard players set @s mech.bandwidth 1

execute if score @s mech.power matches 1.. run function mechanics:conduit/transfer_power
execute if score @s mech.power matches 1.. if score @s mech.bandwidth matches 2.. run function mechanics:conduit/transfer_power
execute if score @s mech.power matches 1.. if score @s mech.bandwidth matches 3.. run function mechanics:conduit/transfer_power
execute if score @s mech.power matches 1.. if score @s mech.bandwidth matches 4.. run function mechanics:conduit/transfer_power
