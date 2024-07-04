# clock
scoreboard players add zero.tick server 1
execute if score zero.tick server matches 20 run scoreboard players add zero.second server 1
execute if score zero.tick server matches 20 run scoreboard players set zero.tick server 0
execute if score zero.second server matches 60 run scoreboard players add zero.minute server 1
execute if score zero.second server matches 60 run scoreboard players set zero.second server 0
execute if score zero.minute server matches 60 run scoreboard players add zero.hour server 1
execute if score zero.minute server matches 60 run scoreboard players set zero.minute server 0
execute if score zero.hour server matches 24 run scoreboard players add zero.day server 1
execute if score zero.hour server matches 24 run scoreboard players set zero.hour server 0
scoreboard players enable @a serverTime
tellraw @a[scores={serverTime=1..}] [{"text":"Server Time: "},{"score":{"name":"zero.day","objective":"server"}},":",{"score":{"name":"zero.hour","objective":"server"}},":",{"score":{"name":"zero.minute","objective":"server"}},":",{"score":{"name":"zero.second","objective":"server"}}]
scoreboard players set @a serverTime 0