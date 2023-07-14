#
#say load
#gamerule sendCommandFeedback false
#gamerule logAdminCommands false
#gamerule sendCommandFeedback true
#gamerule logAdminCommands true

##### ##### ##### ##### ##### #####     ##### ##### ##### ##### ##### #####     ##### ##### ##### ##### ##### #####     

# rmt:load  ####### 
function motd:load_rmtprng
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


