#sets up data for the next login, do not edit without talking to me first plz  -MR programs
# function mcprng:nextrand - DO NOT MOVE
execute if entity @s[scores={rmt_logout=1..}] run function mcprng:nextrand
execute store result score @s CurrentMsg run scoreboard players get #randval mcprng
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### #####
tag @s remove rmt_join
# tag player for message
tag @s[scores={rmt_logout=1..}] add RandMsg
# calls any functions that should be ran 1 time as the player joins
# function rmt:join/join
execute as @s[tag=RandMsg,scores={CurrentMsg=0..500}] run function rmt:join/join
execute as @s[tag=RandMsg,scores={CurrentMsg=501..1005}] run function rmt:join/join0
