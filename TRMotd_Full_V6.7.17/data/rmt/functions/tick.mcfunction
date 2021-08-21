# RMT:Tick
scoreboard players enable @a motd
# run motd on command
execute as @a[scores={motd=1..}] run function rmt:motd
# run motd for old player
execute as @a[tag=rmt_join,scores={rmt_logout=1..}] run function rmt:joining
# reset player login score at logout
execute as @a[scores={rmt_logout=1..}] run function rmt:logout

# # # Schedule tick file # # #
schedule function rmt:tick 1s

# # #
# 1st login is tracked by adv.
# subsequent logins are tracked by logouts and tag.