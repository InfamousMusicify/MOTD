#
#say seed

# rmtprng:seed
execute store result score #seedval rmtprng run data get entity @r Pos[0]
execute if score #seedval rmtprng matches ..0 run scoreboard players operation #seedval rmtprng *= #negone rmtprng
scoreboard players operation #seedval rmtprng %= #mconst rmtprng
scoreboard players operation #random rmtprng = #seedval rmtprng



