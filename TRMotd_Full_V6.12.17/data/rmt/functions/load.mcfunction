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
scoreboard players set #maxrand mcprng 3337
# # # # # # # # # # # # # # # # # # # # # #
scoreboard players set #randval mcprng 0
# seed the generator, or just keep the last value in #random if already seeded
execute store result score #seeded mcprng run scoreboard players get #random mcprng
execute if score #seeded mcprng matches 0 run function mcprng:seed
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#mrp additions - init rmt scoreboards
#TODO: set to the minecraft:custom thingy for logout
# Join is 1st login,  Login is subsequnt
#   util dummies and boards
scoreboard objectives add CurrentMsg dummy
scoreboard objectives add rmt_logout minecraft.custom:minecraft.leave_game
#   scoreboard dummies for cmds
scoreboard objectives add motd trigger "Random Message"
### ### ### ### ### ###
schedule function rmt:tick 1s

# # #
#
