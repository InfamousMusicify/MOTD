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
scoreboard players set #maxrand rmtprng 3658
# # # # # # # # # # # # # # # # # # # # # #
scoreboard players set #randval rmtprng 0
# seed the generator, or just keep the last value in #random if already seeded
execute store result score #seeded rmtprng run scoreboard players get #random rmtprng
execute if score #seeded rmtprng matches 0 run function rmtprng:seed
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #