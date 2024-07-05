# stop if blocked
execute if block ^ ^ ^2 #zero:unminable run return fail
execute if block ^ ^1 ^2 #zero:unminable run return fail
execute if block ^ ^2 ^2 #zero:unminable run return fail
execute if block ^-1 ^ ^2 #zero:unminable run return fail
execute if block ^-1 ^1 ^2 #zero:unminable run return fail
execute if block ^-1 ^2 ^2 #zero:unminable run return fail
execute if block ^1 ^ ^2 #zero:unminable run return fail
execute if block ^1 ^1 ^2 #zero:unminable run return fail
execute if block ^1 ^2 ^2 #zero:unminable run return fail

fill ^-1 ^ ^2 ^1 ^2 ^2 air destroy
tp @e[type=item,distance=..4] @e[type=armor_stand,tag=mech.item_collector,sort=random,limit=1,distance=..64]
tp @e[type=experience_orb,distance=..4] @e[type=armor_stand,tag=mech.item_collector,sort=random,limit=1,distance=..64]

setblock ~ ~ ~ air
execute align xyz positioned ~.5 ~ ~.5 run setblock ^ ^ ^1 observer
execute align xyz positioned ~.5 ~ ~.5 run tp @s ^ ^ ^1
scoreboard players remove @s mech.power 1
execute if score @s mech.power matches 0 run tag @s remove active
