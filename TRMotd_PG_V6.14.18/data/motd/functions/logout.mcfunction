# makes sure we are ready for the next login
scoreboard players set @s rmt_logout 2
tag @s add rmt_join
# execute if entity @s[tag=rmt_join,scores={rmt_logout=1..}] run function rmt:joining
# TODO - Add any other code you need to run as the player is leaving the game


# null but Ill leave it here
# 0 = New player
# 1 = Bug fix, 2nd login 
# 2 = fire joining
# 3 = off
# 4 = logout reset
# 5+ = Redundancy reset
