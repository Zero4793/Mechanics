# diamond_block = generator
execute if block ~ ~-2 ~ diamond_block run summon minecraft:armor_stand ~ ~-2 ~ {Invisible:1b,NoGravity:1b,Tags:[mech.device,mech.generator,mech.give]}
execute if block ~ ~-2 ~ diamond_block positioned ~ ~-1 ~ run item replace entity @e[type=armor_stand,tag=mech.generator,distance=..1] armor.head with leather_horse_armor{CustomModelData:2}
execute if block ~ ~-2 ~ diamond_block run setblock ~ ~-1 ~ air
execute if block ~ ~-2 ~ diamond_block run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b}}
execute if block ~ ~-2 ~ diamond_block run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 2
execute if block ~ ~-2 ~ diamond_block run kill @s

# cut_copper = conduit
execute if block ~ ~-2 ~ cut_copper run summon minecraft:armor_stand ~ ~-2 ~ {Invisible:1b,NoGravity:1b,Tags:[mech.device,mech.conduit,mech.give,mech.take]}
execute if block ~ ~-2 ~ cut_copper positioned ~ ~-1 ~ run item replace entity @e[type=armor_stand,tag=mech.conduit,distance=..1] armor.head with leather_horse_armor{CustomModelData:3}
execute if block ~ ~-2 ~ cut_copper run setblock ~ ~-1 ~ air
execute if block ~ ~-2 ~ cut_copper run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b}}
execute if block ~ ~-2 ~ cut_copper run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 2
execute if block ~ ~-2 ~ cut_copper run kill @s

# iron_block = turret
execute if block ~ ~-2 ~ iron_block run summon minecraft:armor_stand ~ ~-2 ~ {Invisible:1b,NoGravity:1b,Tags:[mech.device,mech.turret,mech.take]}
execute if block ~ ~-2 ~ iron_block positioned ~ ~-1 ~ run item replace entity @e[type=armor_stand,tag=mech.turret,distance=..1] armor.head with leather_horse_armor{CustomModelData:1}
execute if block ~ ~-2 ~ iron_block run setblock ~ ~-1 ~ air
execute if block ~ ~-2 ~ iron_block run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b}}
execute if block ~ ~-2 ~ iron_block run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 2
execute if block ~ ~-2 ~ iron_block run kill @s

# lapis_block = emitter
execute if block ~ ~-2 ~ lapis_block run summon minecraft:armor_stand ~ ~-2 ~ {Invisible:1b,NoGravity:1b,Tags:[mech.device,mech.emitter,mech.take]}
execute if block ~ ~-2 ~ lapis_block run setblock ~ ~-1 ~ air
execute if block ~ ~-2 ~ lapis_block run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b}}
execute if block ~ ~-2 ~ lapis_block run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 2
execute if block ~ ~-2 ~ lapis_block run kill @s

scoreboard players add @e[tag=mech.device] mech.power 0


