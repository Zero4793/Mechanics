execute rotated as @p[distance=..2] run tp @s ~ ~ ~ ~ 0
execute if score zero.tick server matches 0 rotated as @p[distance=..2] run tp @s ~ ~ ~ ~ ~
execute if score zero.tick server matches 0 if entity @p[distance=..2] if score @s mech.power matches 4.. run function mechanics:turret/shoot
execute if score zero.tick server matches 0 unless entity @p[distance=..2] facing entity @n[type=#zero:hostile,distance=..16] feet run tp @s ~ ~ ~ ~ ~
execute if score zero.tick server matches 0 unless entity @p[distance=..2] if entity @e[type=#zero:hostile,distance=..16] if score @s mech.power matches 4.. run function mechanics:turret/shoot


# TODO: add crouch detection for firing
# TODO: add auto aiming hostiles (more expensive variant?)