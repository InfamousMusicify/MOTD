#sets up data for the next login, do not edit without talking to me first plz  -MR programs
# function mcprng:nextrand - DO NOT MOVE
execute if entity @s[scores={rmt_logout=1..}] run function mcprng:nextrand
execute store result score @s CurrentMsg run scoreboard players get #randval mcprng
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### #####
#
execute as @s[tag=motd_on,scores={CurrentMsg=0..500}] run function motd:join/join
execute as @s[tag=motd_on,scores={CurrentMsg=501..1000}] run function motd:join/join0
execute as @s[tag=motd_on,scores={CurrentMsg=1001..1500}] run function motd:join/join1
execute as @s[tag=motd_on,scores={CurrentMsg=1501..2000}] run function motd:join/join2
execute as @s[tag=motd_on,scores={CurrentMsg=2001..2500}] run function motd:join/join3
execute as @s[tag=motd_on,scores={CurrentMsg=2501..3000}] run function motd:join/join4
execute as @s[tag=motd_on,scores={CurrentMsg=3001..3500}] run function motd:join/join5
execute as @s[tag=motd_on,scores={CurrentMsg=3501..4000}] run function motd:join/join6

# moved from end to here and motdtrigger
scoreboard players set @s rmt_logout 0
