# motd:Tick
scoreboard players enable @a motd
scoreboard players enable @a tglmotd
# run motd on command
execute as @a[scores={motd=1..}] run function motd:motd
# per player motd control
execute as @a[scores={tglmotd=1..}] run function motd:toggle_motd
# fix logins for players who have adv, adds join tag
execute as @a[scores={rmt_logout=1..}] run function motd:logfix
# run motd for old player
execute as @a[tag=rmt_join,scores={rmt_logout=1..}] run function motd:joining
# # # Schedule tick file # # #
schedule function motd:tick 1s
# # #
# 1st login is tracked by adv.
# subsequent logins are tracked by logouts and tag.