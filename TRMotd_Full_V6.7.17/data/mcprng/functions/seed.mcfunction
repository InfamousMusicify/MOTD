#
# mcprng:seed
execute store result score #seedval mcprng run data get entity @r Pos[0]
execute if score #seedval mcprng matches ..0 run scoreboard players operation #seedval mcprng *= #negone mcprng
scoreboard players operation #seedval mcprng %= #mconst mcprng
scoreboard players operation #random mcprng = #seedval mcprng
