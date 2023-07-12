#
#say old player
# motd:old_player
#scoreboard players set @s motd_logout 0



execute as @s[tag=motd_join] run function motd:joining
tag @s add motd_join
