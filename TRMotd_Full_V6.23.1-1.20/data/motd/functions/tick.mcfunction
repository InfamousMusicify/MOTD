#
#say tick
# motd:tick
#schedule clear function motd:tick
schedule function motd:tick 1s
# run motd for old player
execute as @a[tag=motd_join,scores={motd_logout=1..}] run advancement revoke @s only motd:old_player
# run motd on command
scoreboard players enable @a motd
execute as @a[scores={motd=1..}] run function motd:motd
execute as @a[scores={motd=..-1}] run function motd:motd
# per player motd control
scoreboard players enable @a tglmotd
execute as @a[scores={tglmotd=1..}] run function motd:toggle_motd

# # # # # # # # # # # # # # # 
# 1st login is tracked by adv.
# subsequent logins are tracked by logouts and tag.




# fix logins for players who have adv, adds join tag
#execute as @a[scores={motd_logout=1..}] run function motd:logfix
#execute as @a[tag=motd_join,scores={motd_logout=1..}] run function motd:joining
#execute as @a[tag=motd_join,scores={motd_logout=1..}] run function motd:login
