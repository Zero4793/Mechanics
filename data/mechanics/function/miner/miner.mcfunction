# get direction
# active tag

# if unminable ahead: return

# if not active: return

# consume energy
# move forth
# break blocks
# tp items to mech.item_collector
# (instead of tp do inv directly; collector sends items instantly into barrel?)

execute unless block ~ ~ ~1 air run return fail
setblock ~ ~ ~1 observer
setblock ~ ~ ~ air
tp @s ~ ~ ~1
scoreboard players remove @s mech.power 1
