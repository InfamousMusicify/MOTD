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
execute as @s[tag=RandMsg,scores={CurrentMsg=0..499}] run function rmt:join/join
execute as @s[tag=RandMsg,scores={CurrentMsg=500..999}] run function rmt:join/join0
execute as @s[tag=RandMsg,scores={CurrentMsg=1000..1499}] run function rmt:join/join1
execute as @s[tag=RandMsg,scores={CurrentMsg=1500..1999}] run function rmt:join/join2
execute as @s[tag=RandMsg,scores={CurrentMsg=2000..2499}] run function rmt:join/join3
execute as @s[tag=RandMsg,scores={CurrentMsg=2500..2999}] run function rmt:join/join4
execute as @s[tag=RandMsg,scores={CurrentMsg=3000..3499}] run function rmt:join/join5
