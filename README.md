# TRMotd
Truly Random Message of the Day

     A Datapack for Minecraft Java Edition
     which sends a random message to the player when they log in.
     (Compatible with 1.14+ - 1.15+)

     Version 5.5 or higher Recommended.
     (4.4-4.5 for classic/lightweight experience)
     (Version 3.3-3.5 for original experience)
     
     Motd Sources: All the Minecraft Splashes as of Dec 2019, an evergrowing # of 2b2t Motds, 
     Ubuntu 2007 Forums Motds, Discord Loading Lines, Google Translate Resource Pack, 
     Minecraft Advancements, Random Ideas, And a fair amount of custom Motds.

     You can use the command "scoreboard players set @p Logout 1" to trigger a message for the closest player,
     or "scoreboard players set @a[distance=..50] Logout 1" for an area of effect message.

     If your going to use this on a public or busy server I recommend editing some of the messages 
     and maybe disabling the music and effects,

     To change the messages themselves, 
     navigate in the data/rmt/functions/join.mcfunction file and edit the text in between the brackets.
     Example:
     {"text":"Change this to your message","color":"gold"}
     
     There are notes in the datapack .mcf files on how to add more messages

     6 Commands, /trigger <motd-stoprecord-rfxON-rfxOFF-ToggleRecord-ToggleRFX>
     motd: sends the player a random message
     stoprecord: stops the music that plays.
     rfxON: Turn on Effects for yourself.
     rfxOFF: Turn off Effects for yourself.
     ToggleRecord: Toggle wether Music plays on login
     ToggleRFX: Toggle Whether Effects play at login.


     I spent an inordinate amount of time making this so, I really hope your enjoy. :)
     Special Thanks to M.R. Programs for helping me create this.
     and to mcskware for his prng datapack for 1.13 and willingness to share his code.

     TRMotd (aka RMotd, Random Motd datapack)
     
     Check out the Beta-Testing Server!
     https://bit.ly/2TizsgS

     Cheers 
     -Infamous 
