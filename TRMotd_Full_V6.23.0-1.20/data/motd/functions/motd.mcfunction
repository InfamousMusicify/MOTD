# 
#say motd

# rmt:cmds/motd
#sets up data for the next login, do not edit without talking to me first plz  -MR programs
# function rmtprng:nextrand - DO NOT MOVE
execute if score @s motd matches 1 run function rmtprng:nextrand
execute if score @s motd matches 1 run execute store result score @s motd_msg run scoreboard players get #randval rmtprng
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### #####
# schedule function motd:hide_command_feedback 1t
# function motd:hide_command_feedback
# function motd:join/join

#execute if score @s motd matches 1 run 
execute if entity @s[scores={motd=2..}] store result score @s motd_msg run scoreboard players get @s motd 
execute if entity @s[scores={motd=-1}] run scoreboard players set @s motd_msg 1
execute if entity @s[scores={motd=-2}] run scoreboard players set @s motd_msg 0
execute if entity @s[scores={motd=..-3}] run function rmtprng:nextrand
execute if entity @s[scores={motd=..-3}] store result score @s motd_msg run scoreboard players get #randval rmtprng

execute as @s[scores={motd_msg=0..500}] run function motd:join/join
execute as @s[scores={motd_msg=501..1000}] run function motd:join/join0
execute as @s[scores={motd_msg=1001..1500}] run function motd:join/join1
execute as @s[scores={motd_msg=1501..2000}] run function motd:join/join2
execute as @s[scores={motd_msg=2001..2500}] run function motd:join/join3
execute as @s[scores={motd_msg=2501..3000}] run function motd:join/join4
execute as @s[scores={motd_msg=3001..3500}] run function motd:join/join5
execute as @s[scores={motd_msg=3501..4000}] run function motd:join/join6
# # # # # # # # # # #  #  # # #
# tag @s add motd_join
# scoreboard players set @s motd_logout 2
# scoreboard players set @s motd_logout 0
scoreboard players set @s motd 0






