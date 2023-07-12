# motd:config
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["                         MOTD",{"text":" / ","color":"gray"},"Global Settings                         "]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #music motd.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enter toggle for 1st time join music. (0=off - 1=on)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0","color":"dark_gray"}]}}," MOTD 1st Time Join Music ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#music","objective":"motd.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
execute store result score #sendCommandFeedback motd.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback motd.config matches 1 run function motd:hide_command_feedback
