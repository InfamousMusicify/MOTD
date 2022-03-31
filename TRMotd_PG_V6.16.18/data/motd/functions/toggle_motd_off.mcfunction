
tag @s remove motd_on
tellraw @s ["",{"text":"Login Motd ","color":"gold"},{"text":"Off","color":"red"}]
scoreboard players set @s tglmotd 0
