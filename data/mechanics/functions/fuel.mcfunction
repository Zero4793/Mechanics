# if item coal nearby, add 1 mech.power per item in stack, kill stack
execute as @e[type=item,nbt={Item:{id:"minecraft:coal"}},distance=..2] store result score @s mech.power run data get entity @s Item.Count
scoreboard players operation @s mech.power += @e[type=item,nbt={Item:{id:"minecraft:coal"}},distance=..2] mech.power
kill @e[type=item,nbt={Item:{id:"minecraft:coal"}},distance=..2]

# same for charcoal
execute as @e[type=item,nbt={Item:{id:"minecraft:charcoal"}},distance=..2] store result score @s mech.power run data get entity @s Item.Count
scoreboard players operation @s mech.power += @e[type=item,nbt={Item:{id:"minecraft:charcoal"}},distance=..2] mech.power
kill @e[type=item,nbt={Item:{id:"minecraft:charcoal"}},distance=..2]

# same for coal block except 10x
execute as @e[type=item,nbt={Item:{id:"minecraft:coal_block"}},distance=..2] store result score @s mech.power run data get entity @s Item.Count
scoreboard players operation @e[type=item,nbt={Item:{id:"minecraft:coal_block"}},distance=..2] mech.power *= coal_block mech.power
scoreboard players operation @s mech.power += @e[type=item,nbt={Item:{id:"minecraft:coal_block"}},distance=..2] mech.power
kill @e[type=item,nbt={Item:{id:"minecraft:coal_block"}},distance=..2]
