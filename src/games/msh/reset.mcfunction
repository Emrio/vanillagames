# reset.mcfunction
# Sert à reset le MobShooter

tp @a[tag=msh] -995 47 48 90 90

execute @a[tag=msh] ~ ~ ~ scoreboard players operation @s msh:stock = @s msh:killEntity
scoreboard players operation msh:gagnant msh > @a[tag=msh] msh:killEntity
scoreboard players operation @a[tag=msh] msh:mshKillEntity -= msh:gagnant msh
scoreboard players tag @a[score_msh:mshKillEntity=0,score_msh:mshKillEntity=0] add msh:gagnant

scoreboard players set @a[tag=msh:gagnant] msh:coins 5
scoreboard players set @a[tag=msh:gagnant] msh:lvl 3

effect @a[tag=msh] weakness 250000 255 true
effect @a[tag=msh] regeneration 5 255 true
clear @a[tag=msh]
gamemode adventure @a[tag=msh]
execute @a[tag=msh,score_msh:coins_min=1] ~ ~ ~ scoreboard players operation @s stats:coin += @s msh:coins
execute @a[tag=msh,score_msh:lvl_min=1] ~ ~ ~ scoreboard players operation @s stats:level += @s msh:lvl

execute @a[tag=msh] ~ ~ ~ tellraw @p ["",{"text":"████████████████████████████████\n\n                     ","color":"gold"},"§eMob Shooter §7- §3Résumé de la partie\n",{"text":"\n           Scores finaux: ","color":"gray"},"\n             §6Gagnant: ",{"score":{"name":"msh:gagnant","objective":"msh"},"color":"dark_green"},"\n             §7Vous: ",{"score":{"name":"@p","objective":"msh:killEntity"},"color":"dark_green"},{"text":"\n\n           Multiplicateur: ","color":"light_purple"},"\n§2           XP§7: ",{"text":"Obtenus: ","color":"green"},{"score":{"name":"@p","objective":"msh:lvl"},"color":"yellow"},{"text":" | ","color":"gray"},{"text":"Total: ","color":"green"},{"score":{"name":"@p","objective":"stats:level"},"color":"yellow"},"\n§e           Coins§7: ",{"text":"Obtenus: ","color":"green"},{"score":{"name":"@p","objective":"msh:coins"},"color":"yellow"},{"text":" | ","color":"gray"},{"text":"Total: ","color":"green"},{"score":{"name":"@p","objective":"stats:coin"},"color":"yellow"},{"text":"\n\n████████████████████████████████","color":"gold"}]

scoreboard players set msh:gagnant msh 0
scoreboard players reset * msh:state
scoreboard players tag * remove msh:gagnant
scoreboard players set @e[type=armor_stand,name=msh:joueurs] msh 0
scoreboard players set @e[type=armor_stand,name=msh:start] msh 0
scoreboard players set @e[type=armor_stand,name=msh:statgame] msh 0
scoreboard players set @e[type=armor_stand,name=msh:manche] msh -1
tp @a[tag=msh] @e[type=armor_stand,name=resetbox]
