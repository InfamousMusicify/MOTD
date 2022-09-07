# rmt:cmds/motd
#sets up data for the next login, do not edit without talking to me first plz  -MR programs
# function mcprng:nextrand - DO NOT MOVE
execute if score @s motd matches 1 run function mcprng:nextrand
execute if score @s motd matches 1 run execute store result score @s CurrentMsg run scoreboard players get #randval mcprng
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### #####
#                        tag @s remove rmt_join
# tag player for message
# tag @s add RandMsg
# calls any functions that should be ran 1 time as the player joins
#custom message
execute if entity @s[scores={motd=-2}] run scoreboard players set @s CurrentMsg 0
execute if entity @s[scores={motd=-1}] run scoreboard players set @s CurrentMsg 1
execute if entity @s[scores={motd=2..}] store result score @s CurrentMsg run scoreboard players get @s motd 
# function motd:join/join
execute as @s[scores={CurrentMsg=0..500}] run function motd:join/join
execute as @s[scores={CurrentMsg=501..1005}] run function motd:join/join0

# # # # # # # # # # #  #  # # #
# tag @s add rmt_join
# scoreboard players set @s rmt_logout 2
# scoreboard players set @s rmt_logout 0
scoreboard players set @s motd 0
