#
#say load
#gamerule sendCommandFeedback false
#gamerule logAdminCommands false
#gamerule sendCommandFeedback true
#gamerule logAdminCommands true

##### ##### ##### ##### ##### #####     ##### ##### ##### ##### ##### #####     ##### ##### ##### ##### ##### #####     

# rmt:load  ####### 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
scoreboard objectives add rmtprng dummy

scoreboard players set #mconst rmtprng 134456
scoreboard players set #aconst rmtprng 8121
scoreboard players set #cconst rmtprng 28411

scoreboard players set #temp rmtprng 0
scoreboard players set #negone rmtprng -1
scoreboard players set #value rmtprng 0
#OLD - scoreboard players set #maxrand 0

#this line includes your max msgs value (Set 1 above cuurent last message) Last msg +1
scoreboard players set #maxrand rmtprng 1001
# # # # # # # # # # # # # # # # # # # # # #
scoreboard players set #randval rmtprng 0
# seed the generator, or just keep the last value in #random if already seeded
execute store result score #seeded rmtprng run scoreboard players get #random rmtprng
execute if score #seeded rmtprng matches 0 run function rmtprng:seed
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

#   util dummies and boards
scoreboard objectives add motd_msg dummy
scoreboard objectives add motd_logout minecraft.custom:minecraft.leave_game
#   scoreboard dummies for cmds
scoreboard objectives add motd trigger "Random Message"
# moderation commands
scoreboard objectives add tglmotd trigger "Toggle Login MOTD"
scoreboard objectives add motd.config dummy
execute unless score #music motd.config matches 0.. run scoreboard players set #music motd.config 0

##### ##### ##### ##### ##### #####     ##### ##### ##### ##### ##### #####     ##### ##### ##### ##### ##### #####

schedule clear function motd:tick
schedule function motd:tick 1s



# # #
#


