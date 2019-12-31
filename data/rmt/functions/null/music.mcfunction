execute at @a[tag=RandMsg,scores={CurrentMsg=1..}] run stopsound @p

execute at @a[tag=RandMsg,scores={CurrentMsg=1}] run playsound minecraft:music_disc.far record @p[distance=..2]
execute at @a[tag=RandMsg,scores={CurrentMsg=2..65}] run playsound minecraft:music_disc.13 record @p[distance=..2]
execute at @a[tag=RandMsg,scores={CurrentMsg=66..131}] run playsound minecraft:music_disc.cat record @p[distance=..2]
execute at @a[tag=RandMsg,scores={CurrentMsg=132..197}] run playsound minecraft:music_disc.stal record @p[distance=..2]
execute at @a[tag=RandMsg,scores={CurrentMsg=198..263}] run playsound minecraft:music_disc.mellohi record @p[distance=..2]
execute at @a[tag=RandMsg,scores={CurrentMsg=264..329}] run playsound minecraft:music_disc.strad record @p[distance=..2]
execute at @a[tag=RandMsg,scores={CurrentMsg=330..395}] run playsound minecraft:music_disc.blocks record @p[distance=..2]
execute at @a[tag=RandMsg,scores={CurrentMsg=396..461}] run playsound minecraft:music_disc.ward record @p[distance=..2]
execute at @a[tag=RandMsg,scores={CurrentMsg=462..527}] run playsound minecraft:music_disc.wait record @p[distance=..2]
execute at @a[tag=RandMsg,scores={CurrentMsg=528..593}] run playsound minecraft:music_disc.chirp record @p[distance=..2]
execute at @a[tag=RandMsg,scores={CurrentMsg=594..660}] run playsound minecraft:music_disc.mall record @p[distance=..2]

# toggle music for player command
execute at @a[scores={ToggleRecord=1..}] run stopsound @p record


# 1 far
# 2 mall
# 3 cat
# 4 stal
# 5 mellohi
# 6 strad
# 7 blocks
# 8 ward
# 9 wait
# 10 chirp
# Rare: 13