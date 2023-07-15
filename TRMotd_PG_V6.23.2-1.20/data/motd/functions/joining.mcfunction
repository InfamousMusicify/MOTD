#
#say joining
# motd:joining
#tag @s add motd_join
#sets up data for the next login, do not edit without talking to me first plz  -MR programs
# function rmtprng:nextrand - DO NOT MOVE
function rmtprng:nextrand
execute store result score @s motd_msg run scoreboard players get #randval rmtprng
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### #####  [scores={motd_logout=1..}]
#
execute as @s[tag=motd_on,scores={motd_msg=0..500}] run function motd:join/join
execute as @s[tag=motd_on,scores={motd_msg=501..1000}] run function motd:join/join0

# moved from end to here and motdtrigger
scoreboard players set @s motd_logout 0





