execute rotated as @p[distance=..2] run tp @s ~ ~ ~ ~ 0
execute if entity @p[distance=..2] if score zero.tick server matches 0 if score @s mech.power matches 4.. run function mechanics:turret/shoot

# TODO: add crouch detection for firing
