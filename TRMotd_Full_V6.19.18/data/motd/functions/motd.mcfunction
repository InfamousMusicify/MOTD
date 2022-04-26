# rmt:cmds/motd
#sets up data for the next login, do not edit without talking to me first plz  -MR programs
# function mcprng:nextrand - DO NOT MOVE
function mcprng:nextrand
execute store result score @s CurrentMsg run scoreboard players get #randval mcprng
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### #####
# schedule function motd:hide_command_feedback 1t
# function motd:hide_command_feedback
# function motd:join/join
execute as @s[scores={CurrentMsg=0..499}] run function motd:join/join
execute as @s[scores={CurrentMsg=500..999}] run function motd:join/join0
execute as @s[scores={CurrentMsg=1000..1499}] run function motd:join/join1
execute as @s[scores={CurrentMsg=1500..1999}] run function motd:join/join2
execute as @s[scores={CurrentMsg=2000..2499}] run function motd:join/join3
execute as @s[scores={CurrentMsg=2500..2999}] run function motd:join/join4
execute as @s[scores={CurrentMsg=3000..3499}] run function motd:join/join5

# # # # # # # # # # #  #  # # #
# tag @s add rmt_join
# scoreboard players set @s rmt_logout 2
# scoreboard players set @s rmt_logout 0
scoreboard players set @s motd 0
