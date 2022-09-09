# rmt:load
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
scoreboard objectives add mcprng dummy

scoreboard players set #mconst mcprng 134456
scoreboard players set #aconst mcprng 8121
scoreboard players set #cconst mcprng 28411

scoreboard players set #temp mcprng 0
scoreboard players set #negone mcprng -1
scoreboard players set #value mcprng 0
#OLD - scoreboard players set #maxrand 0

#this line includes your max msgs value (Set 1 above cuurent last message) Last msg +1
scoreboard players set #maxrand mcprng 3657
# # # # # # # # # # # # # # # # # # # # # #
scoreboard players set #randval mcprng 0
# seed the generator, or just keep the last value in #random if already seeded
execute store result score #seeded mcprng run scoreboard players get #random mcprng
execute if score #seeded mcprng matches 0 run function mcprng:seed
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#mrp additions - init rmt scoreboards
#TODO: 
#   util dummies and boards
scoreboard objectives add CurrentMsg dummy
scoreboard objectives add rmt_logout minecraft.custom:minecraft.leave_game
#   scoreboard dummies for cmds
scoreboard objectives add motd trigger "Random Message"
# moderation commands
scoreboard objectives add tglmotd trigger "Toggle Login MOTD"
scoreboard objectives add motd.config dummy
execute unless score #music motd.config matches 0.. run scoreboard players set #music motd.config 0

### ### ### ### ### ###
schedule function motd:tick 1s

# # #
#
