#
#
#
#execute as @a[scores={tglmotd=1}] run function motd:toggle_motd_msg
execute as @a[scores={tglmotd=1}] run function motd:toggle_motd_on
execute as @a[scores={tglmotd=3..}] run function motd:toggle_motd_off

#scoreboard players set @s tglmotd 0