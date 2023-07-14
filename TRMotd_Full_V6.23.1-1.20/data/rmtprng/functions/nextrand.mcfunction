#
#say nextrand

# rmtprng:nextrand

# (ax + c) % m

# calculate a * x
scoreboard players operation #temp rmtprng = #aconst rmtprng
scoreboard players operation #temp rmtprng *= #random rmtprng

# calculate ax + c
scoreboard players operation #temp rmtprng += #cconst rmtprng

# calculate (ax+c) % m
scoreboard players operation #temp rmtprng %= #mconst rmtprng
scoreboard players operation #random rmtprng = #temp rmtprng

# if user has specified a rand range, calculate the final result, stored in #randval
execute if score #maxrand rmtprng matches 1.. run function rmtprng:calcval


