#
# mcprng:nextrand

# (ax + c) % m

# calculate a * x
scoreboard players operation #temp mcprng = #aconst mcprng
scoreboard players operation #temp mcprng *= #random mcprng

# calculate ax + c
scoreboard players operation #temp mcprng += #cconst mcprng

# calculate (ax+c) % m
scoreboard players operation #temp mcprng %= #mconst mcprng
scoreboard players operation #random mcprng = #temp mcprng

# if user has specified a rand range, calculate the final result, stored in #randval
execute if score #maxrand mcprng matches 1.. run function mcprng:calcval
