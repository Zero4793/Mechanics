# diamond_block = generator
execute if block ~ ~-2 ~ diamond_block run summon minecraft:armor_stand ~ ~-2 ~ {Invisible:1b,NoGravity:1b,Tags:[mech.generator,mech.device,mech.give],DisabledSlots:4095}
# execute if block ~ ~-2 ~ diamond_block positioned ~ ~-2 ~ run scoreboard players set @e[type=armor_stand,tag=mech.generator,distance=..1] mech.capacity 8
execute if block ~ ~-2 ~ diamond_block positioned ~ ~-1 ~ run item replace entity @e[type=armor_stand,tag=mech.generator,distance=..1] armor.head with leather_horse_armor[custom_model_data=2]
execute if block ~ ~-2 ~ diamond_block run setblock ~ ~-1 ~ air
execute if block ~ ~-2 ~ diamond_block run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",count:1b}}
execute if block ~ ~-2 ~ diamond_block run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 2
execute if block ~ ~-2 ~ diamond_block run kill @s

# cut_copper = conduit
execute if block ~ ~-2 ~ cut_copper run summon minecraft:armor_stand ~ ~-2 ~ {Invisible:1b,NoGravity:1b,Tags:[mech.conduit,mech.device,mech.give,mech.take],DisabledSlots:4095}
execute if block ~ ~-2 ~ cut_copper positioned ~ ~-2 ~ run scoreboard players set @e[type=armor_stand,tag=mech.conduit,distance=..1] mech.capacity 8
execute if block ~ ~-2 ~ cut_copper positioned ~ ~-1 ~ run item replace entity @e[type=armor_stand,tag=mech.conduit,distance=..1] armor.head with leather_horse_armor[custom_model_data=3]
execute if block ~ ~-2 ~ cut_copper run setblock ~ ~-1 ~ air
execute if block ~ ~-2 ~ cut_copper run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",count:1b}}
execute if block ~ ~-2 ~ cut_copper run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 2
execute if block ~ ~-2 ~ cut_copper run kill @s

# iron_block = turret
execute if block ~ ~-2 ~ iron_block run summon minecraft:armor_stand ~ ~-2 ~ {Invisible:1b,NoGravity:1b,Tags:[mech.turret,mech.device,mech.take],DisabledSlots:4095,CustomName:'{"text":"Turret"}',CustomNameVisible:0b}
execute if block ~ ~-2 ~ iron_block positioned ~ ~-2 ~ run scoreboard players set @e[type=armor_stand,tag=mech.turret,distance=..1] mech.capacity 8
execute if block ~ ~-2 ~ iron_block positioned ~ ~-1 ~ run item replace entity @e[type=armor_stand,tag=mech.turret,distance=..1] armor.head with leather_horse_armor[custom_model_data=1]
execute if block ~ ~-2 ~ iron_block run setblock ~ ~-1 ~ air
execute if block ~ ~-2 ~ iron_block run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",count:1b}}
execute if block ~ ~-2 ~ iron_block run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 2
execute if block ~ ~-2 ~ iron_block run kill @s

# lapis_block = emitter
execute if block ~ ~-2 ~ lapis_block run summon minecraft:armor_stand ~ ~-2 ~ {Invisible:1b,NoGravity:1b,Tags:[mech.emitter,mech.device,mech.take],DisabledSlots:4095}
execute if block ~ ~-2 ~ lapis_block positioned ~ ~-2 ~ run scoreboard players set @e[type=armor_stand,tag=mech.emitter,distance=..1] mech.capacity 8
execute if block ~ ~-2 ~ lapis_block positioned ~ ~-1 ~ run item replace entity @e[type=armor_stand,tag=mech.emitter,distance=..1] armor.head with leather_horse_armor[custom_model_data=4]
execute if block ~ ~-2 ~ lapis_block run setblock ~ ~-1 ~ air
execute if block ~ ~-2 ~ lapis_block run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",count:1b}}
execute if block ~ ~-2 ~ lapis_block run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 2
execute if block ~ ~-2 ~ lapis_block run kill @s

# gold_block = regenerator
execute if block ~ ~-2 ~ gold_block run summon minecraft:armor_stand ~ ~-2 ~ {Invisible:1b,NoGravity:1b,Tags:[mech.regenerator,mech.device,mech.take],DisabledSlots:4095}
execute if block ~ ~-2 ~ gold_block positioned ~ ~-2 ~ run scoreboard players set @e[type=armor_stand,tag=mech.regenerator,distance=..1] mech.capacity 8
execute if block ~ ~-2 ~ gold_block positioned ~ ~-1 ~ run item replace entity @e[type=armor_stand,tag=mech.regenerator,distance=..1] armor.head with leather_horse_armor[custom_model_data=5]
execute if block ~ ~-2 ~ gold_block run setblock ~ ~-1 ~ air
execute if block ~ ~-2 ~ gold_block run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",count:1b}}
execute if block ~ ~-2 ~ gold_block run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 2
execute if block ~ ~-2 ~ gold_block run kill @s

# sponge = fire stopper
execute if block ~ ~-2 ~ sponge run summon minecraft:armor_stand ~ ~-2 ~ {Invisible:1b,NoGravity:1b,Tags:[mech.fire,mech.device,mech.take],DisabledSlots:4095}
execute if block ~ ~-2 ~ sponge positioned ~ ~-2 ~ run scoreboard players set @e[type=armor_stand,tag=mech.fire,distance=..1] mech.capacity 8
execute if block ~ ~-2 ~ sponge positioned ~ ~-1 ~ run item replace entity @e[type=armor_stand,tag=mech.fire,distance=..1] armor.head with leather_horse_armor
execute if block ~ ~-2 ~ sponge run setblock ~ ~-1 ~ air
execute if block ~ ~-2 ~ sponge run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",count:1b}}
execute if block ~ ~-2 ~ sponge run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 2
execute if block ~ ~-2 ~ sponge run kill @s

# observer = auto miner
execute if block ~ ~-2 ~ observer run summon minecraft:armor_stand ~ ~-2 ~ {Invisible:1b,NoGravity:1b,Tags:[mech.miner,mech.generator,mech.device,mech.take],Small:1b,DisabledSlots:4095}
execute if block ~ ~-2 ~ observer positioned ~ ~-2 ~ run scoreboard players set @e[type=armor_stand,tag=mech.miner,distance=..1] mech.capacity 64
execute if block ~ ~-2 ~ observer positioned ~ ~-1 ~ run item replace entity @e[type=armor_stand,tag=mech.miner,distance=..1] armor.head with leather_horse_armor
execute if block ~ ~-2 ~ observer run setblock ~ ~-1 ~ air
execute if block ~ ~-2 ~ observer run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",count:1b}}
execute if block ~ ~-2 ~ observer run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 2
execute if block ~ ~-2 ~ observer run kill @s

scoreboard players add @e[tag=mech.device] mech.power 0
