# makes sure we are ready for the next login
scoreboard players add @s[scores={rmt_logout=1}] rmt_logout 1
execute if entity @s[scores={rmt_logout=1..}] run function rmt:joining
# TODO - Add any other code you need to run as the player is leaving the game