# rmt:new
# the message thats sent the first time a player joins
execute unless entity @s[tag=rmt_new] run tellraw @a ["",{"text":"Welcome ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" to the world!","color":"gold"}]
# some nice music. only plays on first login.
execute unless entity @s[tag=rmt_new] run stopsound @s
execute unless entity @s[tag=rmt_new] run playsound minecraft:music_disc.far music @s
# # # DO NOT MOVE # # # important stuff i still dont understand.
execute unless entity @s[tag=rmt_new] run function mcprng:nextrand
execute unless entity @s[tag=rmt_new] run execute store result score @s CurrentMsg run scoreboard players get #randval mcprng
execute unless entity @s[tag=rmt_new] run tag @s add rmt_new
# toggle for per player motd control
tag @s add motd_on
