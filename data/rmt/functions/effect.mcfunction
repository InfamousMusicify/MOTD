# rmt:effect
tag @a[scores={ToggleRFX=1..}] remove Reffect
execute at @a[tag=Reffect,scores={CurrentMsg=1..109}] run particle minecraft:heart ~ ~.65 ~ 0.1 .1 0.1 .01 2 force
execute at @a[tag=Reffect,scores={CurrentMsg=110..219}] run particle minecraft:firework ~ ~.85 ~ .25 .25 .25 .01 2 force
execute at @a[tag=Reffect,scores={CurrentMsg=220..339}] run particle minecraft:heart ~ ~15 ~ 15 6 15 .01 80 force
execute at @a[tag=Reffect,scores={CurrentMsg=340..459}] run particle minecraft:portal ~ ~.55 ~ .25 .25 .25 .01 8 force
execute at @a[tag=Reffect,scores={CurrentMsg=460..579}] run particle minecraft:firework ~ ~15 ~ 15 6 15 .01 80 force
execute at @a[tag=Reffect,scores={CurrentMsg=580..699}] run particle minecraft:dripping_honey ~ ~15 ~ 15 6 15 .01 8 force
execute at @a[tag=Reffect,scores={CurrentMsg=700..819}] run particle minecraft:flame ~ ~.85 ~ .25 .25 .25 .01 2 force
execute at @a[tag=Reffect,scores={CurrentMsg=820..939}] run particle minecraft:barrier ~ ~15 ~ 15 6 15 .01 8 force
execute at @a[tag=Reffect,scores={CurrentMsg=940..1059}] run particle minecraft:composter ~ ~.85 ~ .5 .5 .5 .01 2 force
execute at @a[tag=Reffect,scores={CurrentMsg=1060..1100}] run particle minecraft:cloud ~ ~1 ~ 2 2 2 .01 8 force
