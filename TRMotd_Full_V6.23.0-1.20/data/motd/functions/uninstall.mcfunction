# motd:uninstall
function motd:uninstall_old

scoreboard objectives remove motd_msg
scoreboard objectives remove motd_logout
scoreboard objectives remove motd
scoreboard objectives remove tglmotd
scoreboard objectives remove motd.config
scoreboard objectives remove rmtprng

tag @a remove motd_join
