#sets up data for the next login, do not edit without talking to me first plz  -MR programs
# function mcprng:nextrand - DO NOT MOVE
execute if entity @s[scores={rmt_logout=1..}] run function mcprng:nextrand
execute store result score @s CurrentMsg run scoreboard players get #randval mcprng
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### #####
#
execute as @s[tag=motd_on,scores={CurrentMsg=0..499}] run function motd:join/join
execute as @s[tag=motd_on,scores={CurrentMsg=500..999}] run function motd:join/join0
execute as @s[tag=motd_on,scores={CurrentMsg=1000..1499}] run function motd:join/join1
execute as @s[tag=motd_on,scores={CurrentMsg=1500..1999}] run function motd:join/join2
execute as @s[tag=motd_on,scores={CurrentMsg=2000..2499}] run function motd:join/join3
execute as @s[tag=motd_on,scores={CurrentMsg=2500..2999}] run function motd:join/join4
execute as @s[tag=motd_on,scores={CurrentMsg=3000..3499}] run function motd:join/join5

# moved from end to here and motdtrigger
scoreboard players set @s rmt_logout 0
