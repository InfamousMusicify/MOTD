#sets up data for the next login, do not edit without talking to me first plz
# function mcprng:nextrand - DO NOT MOVE
execute if entity @s[scores={rmt_logout=1..}] run function mcprng:nextrand
execute store result score @s CurrentMsg run scoreboard players get #randval mcprng
# tag player for message
tag @s[scores={rmt_logout=1..}] add RandMsg
# reset logout score
scoreboard players set @s[scores={rmt_logout=1..}] rmt_logout 0
# calls any functions that should be ran 1 time as the player joins
# function rmt:join/join
execute as @s[tag=RandMsg,scores={CurrentMsg=0..499}] run function rmt:join/join
execute as @s[tag=RandMsg,scores={CurrentMsg=500..1000}] run function rmt:join/join0

