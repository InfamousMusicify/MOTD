# rmt:new
tag @a add Login
execute if entity @a[tag=Login] run scoreboard players set @a[tag=Login] RLog 1
execute if entity @a[scores={RLog=1}] run scoreboard players add @a[scores={RLog=1}] Login 1

# the message thats sent the first time a player joins
tellraw @a ["",{"text":"Welcome ","color":"gold"},{"selector":"@a[scores={Login=1}]","color":"yellow"},{"text":" to The FamousBros Server!","color":"gold"}]
tag @a[scores={Login=1}] add Reffect
execute at @a[scores={Login=1}] run playsound minecraft:music_disc.far record @p[distance=..2]
#
schedule function rmt:schedule 30s
scoreboard players set @a Login 2
