

tp @a[tag=mcu] 9998 79 3
playsound minecraft:ui.toast.challenge_complete master @a[tag=mcu] ~ ~ ~ 1 1 0.8

scoreboard players operation mcu:gagnant mcu > @a[tag=mcu] mcu:emeralds
scoreboard players operation @a[tag=mcu] mcu:emeralds -= mcu:gagnant mcu
scoreboard players tag @a[score_mcu:emeralds=0,score_mcu:emeralds=0] add mcu:gagnant

effect @a[tag=mcu] weakness 250000 255 true
effect @a[tag=mcu] regeneration 5 255 true
clear @a[tag=mcu]
tp @a[tag=mcu] -9982 256 -9912
gamemode adventure @a[tag=mcu]
execute @a[tag=mcu,score_mcu:coins_min=1] ~ ~ ~ scoreboard players operation @s stats:coin += @s mcu:coins
execute @a[tag=mcu,score_mcu:lvl_min=1] ~ ~ ~ scoreboard players operation @s stats:level += @s mcu:lvl

execute @a[tag=mcu] ~ ~ ~ tellraw @p ["",{"text":"████████████████████████████████\n\n                     ","color":"gold"},"§2Minecube §7- §3Résumé de la partie\n",{"text":"\n           Scores finaux: ","color":"gray"},"\n             §6Gagnant: ",{"score":{"name":"mcu:gagnant","objective":"mcu"},"color":"dark_green"},"\n             §7Vous: ",{"score":{"name":"@p","objective":"mcu:emeralds"},"color":"dark_green"},{"text":"\n\n           Multiplicateur: ","color":"light_purple"},"\n§2           XP§7: ",{"text":"Obtenus: ","color":"green"},{"score":{"name":"@p","objective":"mcu:lvl"},"color":"yellow"},{"text":" | ","color":"gray"},{"text":"Total: ","color":"green"},{"score":{"name":"@p","objective":"stats:level"},"color":"yellow"},"\n§e           Coins§7: ",{"text":"Obtenus: ","color":"green"},{"score":{"name":"@p","objective":"mcu:coins"},"color":"yellow"},{"text":" | ","color":"gray"},{"text":"Total: ","color":"green"},{"score":{"name":"@p","objective":"stats:coin"},"color":"yellow"},{"text":"\n\n████████████████████████████████","color":"gold"}]

scoreboard players set mcu:gagnant mcu 0
scoreboard players reset * mcu:state
scoreboard players tag * remove mcu:gagnant
scoreboard players set @e[type=armor_stand,name=mcu:joueurs] mcu 0
scoreboard players set @e[type=armor_stand,name=mcu:start] mcu 0
tp @a[tag=mcu] @e[type=armor_stand,name=resetbox]
