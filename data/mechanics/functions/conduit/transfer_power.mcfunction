# give self 1 mech.power to closest of lowest power mech.take within range(32) if any lower than self

# set $min to @s mech.power - 1
scoreboard players operation $min mech.power = @s mech.power
scoreboard players remove $min mech.power 1

# run thru all mech.take within range(32), find min (ties kept), ignore those at max storage
execute as @e[type=armor_stand,tag=mech.take,distance=..32] if score @s mech.capacity > @s mech.power run function mechanics:conduit/find_min

# select nearest candidate (tied lowest value if lower than self)
tag @e[type=armor_stand,tag=mech.candidate,limit=1,sort=nearest] add mech.chosen

# transfer power
scoreboard players add @e[type=armor_stand,tag=mech.chosen] mech.power 1
execute if entity @e[type=armor_stand,tag=mech.chosen] run scoreboard players remove @s mech.power 1

# aesthetic
execute as @s at @s facing entity @e[type=armor_stand,tag=mech.chosen,limit=1] feet positioned ^ ^ ^1 run function mechanics:conduit/transfer_particle

# cleanup
tag @e[type=armor_stand,tag=mech.candidate] remove mech.candidate
tag @e[type=armor_stand,tag=mech.chosen] remove mech.chosen
