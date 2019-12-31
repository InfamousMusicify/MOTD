# mcprng:load
scoreboard objectives add mcprng dummy

scoreboard players set #mconst mcprng 134456
scoreboard players set #aconst mcprng 8121
scoreboard players set #cconst mcprng 28411

scoreboard players set #temp mcprng 0
scoreboard players set #negone mcprng -1
scoreboard players set #value mcprng 0

#OLD - scoreboard players set #maxrand 0

#this line includes your max msgs value
scoreboard players set #maxrand mcprng 1101


scoreboard players set #randval mcprng 0

# seed the generator, or just keep the last value in #random if already seeded
execute store result score #seeded mcprng run scoreboard players get #random mcprng
execute if score #seeded mcprng matches 0 run function mcprng:seed


#mrp additions - init rmt scoreboards

#TODO: set to the minecraft:custom thingy for logout
scoreboard objectives add CurrentMsg dummy
scoreboard objectives add Login dummy
scoreboard objectives add RLog dummy
scoreboard objectives add stoprecord trigger "Stop Record Sounds"
scoreboard objectives add ToggleRecord trigger "Toggle whether record sounds play"
scoreboard objectives add ToggleRFX trigger "Toggle whether FX Play on login"
scoreboard objectives add motd trigger "Random Message"
scoreboard objectives add rfxON trigger "Infinite Random Effect"
scoreboard objectives add rfxOFF trigger "Turn Off Random Effect"
scoreboard objectives add Logout minecraft.custom:minecraft.leave_game