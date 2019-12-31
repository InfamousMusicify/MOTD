#makes sure we are ready for the next login
tag @a[scores={Logout=1}] remove Joined

execute if entity @a[scores={Logout=2..}] run function rmt:joining
scoreboard players set @a Login 2

#TODO - Add any other code you need to run as the player is leaving the game