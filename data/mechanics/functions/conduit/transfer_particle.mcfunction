particle end_rod ~ ~2 ~ 0 0 0 0 1 normal
# playsound minecraft:entity.bee.loop block @a ~ ~ ~ 1 0
execute as @e[distance=..1] run damage @s 2 magic
execute positioned ~ ~-1 ~ as @e[distance=..1] run damage @s 2 magic
execute unless entity @e[type=armor_stand,tag=mech.chosen,distance=..1] positioned ^ ^ ^1 run function mechanics:conduit/transfer_particle