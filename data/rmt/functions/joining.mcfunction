#sets up data for the next login, do not edit without talking to me first plz
function mcprng:nextrand
execute store result score @a CurrentMsg run scoreboard players get #randval mcprng
#
tag @a[scores={Logout=1..}] add RandMsg
tag @a[scores={Logout=1..}] add Reffect
tag @a add Joined
scoreboard players set @a Logout 0
#calls any functions that should be ran 1 time as the player joins
function rmt:join

schedule function rmt:schedule 30s
