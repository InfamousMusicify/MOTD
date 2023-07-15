#

# rmtprng:debug

# how to use this datapack

# if you want a number between 0 and 15, set #maxrand to 15+1, or 16
# scoreboard players set #maxrand rmtprng 16

# now call this to generate a new random number
function rmtprng:nextrand

# the raw random number is stored in #random
# the value in your specified range is stored in #randval
tellraw @p {"text":"Next random number between 0 and 15 is ","extra":[{"score":{"name":"#randval","objective":"rmtprng"}}]}



