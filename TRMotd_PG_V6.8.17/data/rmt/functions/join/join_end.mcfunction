# rmt:join_end
tag @a remove RandMsg
scoreboard players set @s rmt_logout 3
tag @s remove rmt_join
# reset motd command
# scoreboard players set @a[scores={motd=1..}] motd 0