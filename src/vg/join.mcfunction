# Join.mcfunction
# Execute les commandes quand un joueur se connecte


execute @e[score_core:join_min=1,score_twr:state_min=5] ~ ~ ~ tellraw @s ["§7[§1GamesIO§7] §fNous avons détecté que vous avez quitté une partie de §4Tower §fen cours en vous déconnectant. Cliquez ",{"text":"ici","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger core:lognrejoin set 1"}}," pour revenir en jeu !"]
execute @e[score_core:join_min=1,score_ctf:state_min=5] ~ ~ ~ tellraw @s ["§7[§6GameGuard§7] §fNous avons détecté que vous avez quitté une partie de §9CTF §fen cours en vous déconnectant. Cliquez ",{"text":"ici","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger core:lognrejoin set 2"}}," pour revenir en jeu !"]

execute @e[score_core:join_min=1,tag=jump:ig] ~ ~ ~ scoreboard players set @s jump:chckp 0
execute @e[score_core:join_min=1,tag=jump:ig] ~ ~ ~ scoreboard players tag @s remove jump:ig
execute @e[score_core:join_min=1,tag=jump:ig] ~ ~ ~ scoreboard players tag @s remove nobc
execute @e[score_core:join_min=1,tag=jump:ig] ~ ~ ~ scoreboard players reset @s jump:sec
execute @e[score_core:join_min=1,tag=jump:ig] ~ ~ ~ scoreboard players reset @s jump:min

execute @e[score_core:join_min=1] ~ ~ ~ effect @s clear
execute @e[score_core:join_min=1] ~ ~ ~ title @s title ["§r§6Bienvenue à toi"]
execute @e[score_core:join_min=1] ~ ~ ~ title @s subtitle ["§r§7sur §3Vanilla Games !"]
execute @e[score_core:join_min=1] ~ ~ ~ scoreboard players tag @s remove rejoin
execute @e[score_core:join_min=1] ~ ~ ~ spawnpoint @s 25 72 91
execute @e[score_core:join_min=1] ~ ~ ~ tp @s @e[type=armor_stand,name=resetbox]
execute @e[score_core:join_min=1] ~ ~ ~ gamemode 2 @s
execute @e[score_core:join_min=1] ~ ~ ~ scoreboard players set @s core:join 0
