# Main Functions
execute unless entity @a[tag=Login] run function rmt:new
execute unless entity @a[tag=Joined] run function rmt:joining
# execute unless entity @a[tag=Joined] run function rmt:music
execute if entity @a[tag=Reffect] run function rmt:effect
execute if entity @a[scores={Logout=1..}] run function rmt:logout


# Commands: Basic
scoreboard players enable @a stoprecord
execute at @a[scores={stoprecord=1..}] run function rmt:cmds/stop

scoreboard players enable @a motd
execute at @a[scores={motd=1..}] run function rmt:cmds/motd

scoreboard players enable @a rfxON
execute at @a[scores={rfxON=1..}] run function rmt:cmds/rfxon

scoreboard players enable @a rfxOFF
execute at @a[scores={rfxOFF=1..}] run function rmt:cmds/rfxoff


# Commands: Toggles
scoreboard players enable @a ToggleRecord
execute at @a[scores={ToggleRecord=2..}] run function rmt:cmds/togglerec

scoreboard players enable @a ToggleRFX
execute at @a[scores={ToggleRFX=2..}] run function rmt:cmds/togglerfx
