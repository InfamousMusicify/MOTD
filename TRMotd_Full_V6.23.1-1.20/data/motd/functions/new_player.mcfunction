#
#say new player
# rmt:new
# the message thats sent the first time a player joins
tellraw @a ["",{"text":"Welcome ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" to the world!","color":"gold"}]
# some nice music. only plays on first login.
execute if score #music motd.config matches 1 run stopsound @s
execute if score #music motd.config matches 1 run playsound minecraft:music_disc.far music @s
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
function rmtprng:nextrand
execute store result score @s motd_msg run scoreboard players get #randval rmtprng
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

tag @s add motd_on





#tag @s add motd_join
#scoreboard players add @s motd_logout 0