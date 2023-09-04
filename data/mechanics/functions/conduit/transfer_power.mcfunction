# give self 1 mech.power to random mech.conduit within range(32) that has less mech.power than self

# select all possible targets
scoreboard players operation $power mech.power = @s mech.power
execute as @e[type=armor_stand,tag=mech.take,distance=..32] if score @s mech.power < $power mech.power run tag @s add mech.candidate

# select closest target
# pehaps not closest but lowest, onlt closest of ties
tag @e[type=armor_stand,tag=mech.candidate,limit=1,sort=nearest] add mech.chosen

# transfer power
scoreboard players add @e[type=armor_stand,tag=mech.chosen] mech.power 1
execute if entity @e[type=armor_stand,tag=mech.chosen] run scoreboard players remove @s mech.power 1

# aesthetic
execute as @s at @s facing entity @e[type=armor_stand,tag=mech.chosen,limit=1] feet positioned ^ ^ ^1 run function mechanics:conduit/transfer_particle

# cleanup
tag @e[type=armor_stand,tag=mech.candidate] remove mech.candidate
tag @e[type=armor_stand,tag=mech.chosen] remove mech.chosen
