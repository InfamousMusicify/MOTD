# rmt:cmds/motd
#sets up data for the next login, do not edit without talking to me first plz  -MR programs
# function mcprng:nextrand - DO NOT MOVE
execute if score @s motd matches 1 run function mcprng:nextrand
execute if score @s motd matches 1 run execute store result score @s CurrentMsg run scoreboard players get #randval mcprng
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### #####
# schedule function motd:hide_command_feedback 1t
# function motd:hide_command_feedback
# function motd:join/join

#execute if score @s motd matches 1 run 
execute if entity @s[scores={motd=-2}] run scoreboard players set @s CurrentMsg 0
execute if entity @s[scores={motd=-1}] run scoreboard players set @s CurrentMsg 1
execute if entity @s[scores={motd=2..}] store result score @s CurrentMsg run scoreboard players get @s motd 

execute as @s[scores={CurrentMsg=0..500}] run function motd:join/join
execute as @s[scores={CurrentMsg=501..1000}] run function motd:join/join0
execute as @s[scores={CurrentMsg=1001..1500}] run function motd:join/join1
execute as @s[scores={CurrentMsg=1501..2000}] run function motd:join/join2
execute as @s[scores={CurrentMsg=2001..2500}] run function motd:join/join3
execute as @s[scores={CurrentMsg=2501..3000}] run function motd:join/join4
execute as @s[scores={CurrentMsg=3001..3500}] run function motd:join/join5
execute as @s[scores={CurrentMsg=3501..4000}] run function motd:join/join6
# # # # # # # # # # #  #  # # #
# tag @s add rmt_join
# scoreboard players set @s rmt_logout 2
# scoreboard players set @s rmt_logout 0
scoreboard players set @s motd 0
