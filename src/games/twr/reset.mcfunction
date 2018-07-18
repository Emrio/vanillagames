# Reset.mcfunction
# Fichier de reset pour le tower


tp @e[type=armor_stand,name=twr:reset1] -10046 1 -10040

playsound minecraft:ui.toast.challenge_complete master @a[tag=twr] ~ ~ ~ 1 1 0.8

scoreboard players operation twr:gagnant twr > @a[tag=twr] twr:gameKills
scoreboard players operation @a[tag=twr] twr:gameKills -= twr:gagnant twr
scoreboard players tag @a[score_twr:gameKills=0,score_twr:gameKills_min=0] add twr:gagnant

effect @a[tag=twr] weakness 250000 255 true
effect @a[tag=twr] regeneration 5 255 true
clear @a[tag=twr]
tp @a[tag=twr] -9982 256 -9912
gamemode adventure @a[tag=twr]
execute @a[tag=twr,score_twr:coins_min=1] ~ ~ ~ scoreboard players operation @s stats:coin += @s twr:coins
execute @a[tag=twr,score_twr:lvl_min=1] ~ ~ ~ scoreboard players operation @s stats:level += @s twr:lvl

execute @a[tag=twr] ~ ~ ~ tellraw @p ["",{"text":"████████████████████████████████\n\n                     ","color":"gold"},"§4Tower §7- §3Résumé de la partie\n",{"text":"\n           Scores finaux: ","color":"gray"},"§cRouge ",{"score":{"name":"@e[type=armor_stand,name=twr:red]","objective":"twr"},"color":"red"}," §7| ",{"score":{"name":"@e[type=armor_stand,name=twr:blue]","objective":"twr"},"color":"blue"}," §9Bleu",{"text":"\n           Top kills: ","color":"aqua"},{"selector":"@p[tag=twr:gagnant]","color":"white"},"§7 (",{"score":{"name":"twr:gagnant","objective":"twr"},"color":"light_purple"},"§d kills§7)",{"text":"\n\n           Multiplicateur: ","color":"light_purple"},"\n§2           XP§7: ",{"text":"Obtenus: ","color":"green"},{"score":{"name":"@p","objective":"twr:lvl"},"color":"yellow"},{"text":" | ","color":"gray"},{"text":"Total: ","color":"green"},{"score":{"name":"@p","objective":"stats:level"},"color":"yellow"},"\n§e           Coins§7: ",{"text":"Obtenus: ","color":"green"},{"score":{"name":"@p","objective":"twr:coins"},"color":"yellow"},{"text":" | ","color":"gray"},{"text":"Total: ","color":"green"},{"score":{"name":"@p","objective":"stats:coin"},"color":"yellow"},{"text":"\n\n████████████████████████████████","color":"gold"}]

scoreboard players set twr:gagnant twr 0
scoreboard players reset * twr:state
scoreboard players reset * twr:teams
scoreboard players tag @a[tag=twr] remove rejoin
scoreboard players tag * remove twr:gagnant
scoreboard players set @e[type=armor_stand,name=twr:blue] twr 0
scoreboard players set @e[type=armor_stand,name=twr:red] twr 0
scoreboard players set @a[score_twr:teams_min=1] twr:teams 0
scoreboard players set @e[type=armor_stand,name=twr:joueurs] twr 0
scoreboard players set @e[type=armor_stand,name=twr:start] twr 0
