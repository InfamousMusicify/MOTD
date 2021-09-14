# rmt:cmds/motd
tag @s add rmt_join
scoreboard players set @s rmt_logout 2
scoreboard players set @s motd 0
# advancement revoke @s only rmt:motd

# execute as @s run function rmt:old