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
execute as @s[tag=motd_on,scores={motd_msg=1001..1500}] run function motd:join/join1
execute as @s[tag=motd_on,scores={motd_msg=1501..2000}] run function motd:join/join2
execute as @s[tag=motd_on,scores={motd_msg=2001..2500}] run function motd:join/join3
execute as @s[tag=motd_on,scores={motd_msg=2501..3000}] run function motd:join/join4
execute as @s[tag=motd_on,scores={motd_msg=3001..3500}] run function motd:join/join5
execute as @s[tag=motd_on,scores={motd_msg=3501..4000}] run function motd:join/join6

# moved from end to here and motdtrigger
scoreboard players set @s motd_logout 0





