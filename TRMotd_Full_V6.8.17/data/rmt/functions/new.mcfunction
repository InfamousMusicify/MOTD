# rmt:new
# tag @s add rmt_join
# the message thats sent the first time a player joins
tellraw @a ["",{"text":"Welcome ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" to the server!","color":"gold"}]
# some nice music. only plays on first login.
stopsound @s
playsound minecraft:music_disc.far music @s
# # # DO NOT MOVE # # # important stuff i still dont understand.
function mcprng:nextrand
execute store result score @s CurrentMsg run scoreboard players get #randval mcprng
