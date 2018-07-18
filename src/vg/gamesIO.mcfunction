# Signs.mcfunction
# Commande relatives aux signes


# Refresh signs
    # Sign Tower
        # Spawn Principal
        execute @e[type=armor_stand,name=twr:start,score_twr_min=0,score_twr=0] ~ ~ ~ blockdata -9901 75 145 {Text1:"{\"text\":\"Tower\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger core:gogames set 1\"},\"bold\":true,\"color\":\"dark_red\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=twr:joueurs]\",\"objective\":\"twr\"},\"color\":\"dark_blue\"},{\"text\":\"/10\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Rejoindre\",\"color\":\"dark_green\"}"}

        execute @e[type=armor_stand,name=twr:start,score_twr_min=1] ~ ~ ~ blockdata -9901 75 145 {Text1:"{\"text\":\"Tower\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"title @p actionbar [\\\"§4La partie a déjà commencé !\\\"]\"},\"bold\":true,\"color\":\"dark_red\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=twr:joueurs]\",\"objective\":\"twr\"},\"color\":\"dark_blue\"},{\"text\":\"/10\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Partie pleine\",\"color\":\"red\"}"}

        # Spawn Secondaire
        execute @e[type=armor_stand,name=twr:start,score_twr_min=0,score_twr=0] ~ ~ ~ setblock 87 74 101 concrete_powder color=green
        execute @e[type=armor_stand,name=twr:start,score_twr_min=0,score_twr=0] ~ ~ ~ blockdata 88 74 101 {Text1:"{\"text\":\"Tower\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger core:gogames set 1\"},\"bold\":true,\"color\":\"dark_red\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=twr:joueurs]\",\"objective\":\"twr\"},\"color\":\"dark_blue\"},{\"text\":\"/10\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Rejoindre\",\"color\":\"dark_green\"}"}

        execute @e[type=armor_stand,name=twr:start,score_twr_min=1] ~ ~ ~ setblock 87 74 101 concrete_powder color=red
        execute @e[type=armor_stand,name=twr:start,score_twr_min=1] ~ ~ ~ blockdata 88 74 101 {Text1:"{\"text\":\"Tower\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"title @p actionbar [\\\"§4La partie a déjà commencé !\\\"]\"},\"bold\":true,\"color\":\"dark_red\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=twr:joueurs]\",\"objective\":\"twr\"},\"color\":\"dark_blue\"},{\"text\":\"/10\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Partie pleine\",\"color\":\"red\"}"}

    # Sign Capture The Flag
        # Spawn Principal
            # Panneau jeu 1
            execute @e[type=armor_stand,name=ctf:start,score_ctf_min=-1,score_ctf=-1] ~ ~ ~ blockdata -9879 72 145 {Text1:"{\"text\":\"CTF\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger core:gogames set 21\"},\"bold\":true,\"color\":\"blue\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=ctf:joueurs]\",\"objective\":\"ctf\"},\"color\":\"dark_blue\"},{\"text\":\"/8\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Rejoindre\",\"color\":\"dark_green\"}"}

            execute @e[type=armor_stand,name=ctf:start,score_ctf_min=1] ~ ~ ~ blockdata -9879 72 145 {Text1:"{\"text\":\"CTF\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"title @p actionbar [\\\"§4La partie a déjà commencé !\\\"]\"},\"bold\":true,\"color\":\"blue\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=ctf:joueurs]\",\"objective\":\"ctf\"},\"color\":\"dark_blue\"},{\"text\":\"/8\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Partie pleine\",\"color\":\"red\"}"}
            
            # Panneau jeu 2
            execute @e[type=armor_stand,name=ctf2:start,score_ctf_min=-1,score_ctf=-1] ~ ~ ~ blockdata -9880 72 145 {Text1:"{\"text\":\"CTF\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger core:gogames set 22\"},\"bold\":true,\"color\":\"blue\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=ctf2:joueurs]\",\"objective\":\"ctf\"},\"color\":\"dark_blue\"},{\"text\":\"/8\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Rejoindre\",\"color\":\"dark_green\"}"}

            execute @e[type=armor_stand,name=ctf2:start,score_ctf_min=1] ~ ~ ~ blockdata -9880 72 145 {Text1:"{\"text\":\"CTF\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"title @p actionbar [\\\"§4La partie a déjà commencé !\\\"]\"},\"bold\":true,\"color\":\"blue\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=ctf2:joueurs]\",\"objective\":\"ctf\"},\"color\":\"dark_blue\"},{\"text\":\"/8\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Partie pleine\",\"color\":\"red\"}"}

            # Panneau jeu 3
            execute @e[type=armor_stand,name=ctf3:start,score_ctf_min=-1,score_ctf=-1] ~ ~ ~ blockdata -9881 72 145 {Text1:"{\"text\":\"CTF\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger core:gogames set 23\"},\"bold\":true,\"color\":\"blue\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=ctf3:joueurs]\",\"objective\":\"ctf\"},\"color\":\"dark_blue\"},{\"text\":\"/8\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Rejoindre\",\"color\":\"dark_green\"}"}

            execute @e[type=armor_stand,name=ctf3:start,score_ctf_min=1] ~ ~ ~ blockdata -9880 72 145 {Text1:"{\"text\":\"CTF\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"title @p actionbar [\\\"§4La partie a déjà commencé !\\\"]\"},\"bold\":true,\"color\":\"blue\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=ctf3:joueurs]\",\"objective\":\"ctf\"},\"color\":\"dark_blue\"},{\"text\":\"/8\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Partie pleine\",\"color\":\"red\"}"}

        # Spawn Secondaire
        execute @e[type=armor_stand,name=ctf:start,score_ctf_min=-1,score_ctf=-1] ~ ~ ~ setblock 87 73 99 concrete_powder color=green
        execute @e[type=armor_stand,name=ctf:start,score_ctf_min=-1,score_ctf=-1] ~ ~ ~ blockdata 88 73 99 {Text1:"{\"text\":\"CTF\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger core:gogames set 2\"},\"bold\":true,\"color\":\"blue\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=ctf:joueurs]\",\"objective\":\"ctf\"},\"color\":\"dark_blue\"},{\"text\":\"/8\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Rejoindre\",\"color\":\"dark_green\"}"}

        execute @e[type=armor_stand,name=ctf:start,score_ctf_min=1] ~ ~ ~ setblock 87 73 99 concrete_powder color=red
        execute @e[type=armor_stand,name=ctf:start,score_ctf_min=1] ~ ~ ~ blockdata 88 73 99 {Text1:"{\"text\":\"CTF\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"title @p actionbar [\\\"§4La partie a déjà commencé !\\\"]\"},\"bold\":true,\"color\":\"blue\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=ctf:joueurs]\",\"objective\":\"ctf\"},\"color\":\"dark_blue\"},{\"text\":\"/8\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Partie pleine\",\"color\":\"red\"}"}

    # Sign Pearl War
    execute @e[type=armor_stand,name=pwa:start,score_pwa_min=0,score_pwa=0] ~ ~ ~ setblock 87 73 100 concrete_powder color=green
    execute @e[type=armor_stand,name=pwa:start,score_pwa_min=0,score_pwa=0] ~ ~ ~ blockdata 88 73 100 {Text1:"{\"text\":\"PearlWar\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger core:gogames set 3\"},\"bold\":true,\"color\":\"blue\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=pwa:joueurs]\",\"objective\":\"ctf\"},\"color\":\"dark_blue\"},{\"text\":\"/8\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Rejoindre\",\"color\":\"dark_green\"}"}

    execute @e[type=armor_stand,name=pwa:start,score_pwa_min=1] ~ ~ ~ setblock 87 73 100 concrete_powder color=red
    execute @e[type=armor_stand,name=pwa:start,score_pwa_min=1] ~ ~ ~ blockdata 88 73 100 {Text1:"{\"text\":\"PearlWar\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"title @p actionbar [\\\"§4La partie a déjà commencé !\\\"]\"},\"bold\":true,\"color\":\"blue\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=pwa:joueurs]\",\"objective\":\"ctf\"},\"color\":\"dark_blue\"},{\"text\":\"/10\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Partie pleine\",\"color\":\"red\"}"}

    # Sign Minecube
        # Spawn Principal
        execute @e[type=armor_stand,name=mcu:start,score_mcu_min=0,score_mcu=0] ~ ~ ~ blockdata -10032 75 14 {Text1:"{\"text\":\"Minecube\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger core:gogames set 4\"},\"bold\":true,\"color\":\"green\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=mcu:joueurs]\",\"objective\":\"mcu\"},\"color\":\"dark_blue\"},{\"text\":\"/16\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Rejoindre\",\"color\":\"dark_green\"}"}

        execute @e[type=armor_stand,name=mcu:start,score_mcu_min=1] ~ ~ ~ blockdata -10032 75 14 {Text1:"{\"text\":\"Minecube\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"title @p actionbar [\\\"§4La partie a déjà commencé !\\\"]\"},\"bold\":true,\"color\":\"dark_green\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=mcu:joueurs]\",\"objective\":\"mcu\"},\"color\":\"dark_blue\"},{\"text\":\"/16\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Partie pleine\",\"color\":\"red\"}"}

        # Spawn Secondaire
        execute @e[type=armor_stand,name=mcu:start,score_mcu_min=0,score_mcu=0] ~ ~ ~ setblock 87 75 100 concrete_powder color=green
        execute @e[type=armor_stand,name=mcu:start,score_mcu_min=0,score_mcu=0] ~ ~ ~ blockdata 88 75 100 {Text1:"{\"text\":\"Minecube\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger core:gogames set 4\"},\"bold\":true,\"color\":\"green\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=mcu:joueurs]\",\"objective\":\"mcu\"},\"color\":\"dark_blue\"},{\"text\":\"/16\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Rejoindre\",\"color\":\"dark_green\"}"}

        execute @e[type=armor_stand,name=mcu:start,score_mcu_min=1] ~ ~ ~ setblock 87 75 100 concrete_powder color=red
        execute @e[type=armor_stand,name=mcu:start,score_mcu_min=1] ~ ~ ~ blockdata 88 75 100 {Text1:"{\"text\":\"Minecube\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"title @p actionbar [\\\"§4La partie a déjà commencé !\\\"]\"},\"bold\":true,\"color\":\"dark_green\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=mcu:joueurs]\",\"objective\":\"mcu\"},\"color\":\"dark_blue\"},{\"text\":\"/16\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Partie pleine\",\"color\":\"red\"}"}


    # Sign Mob Shooter
        # Spawn Principal
        execute @e[type=armor_stand,name=msh:start,score_msh_min=0,score_msh=0] ~ ~ ~ blockdata -9922 72 145 {Text1:"{\"text\":\"Mob Shooter\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger core:gogames set 5\"},\"bold\":true,\"color\":\"gold\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=msh:joueurs]\",\"objective\":\"msh\"},\"color\":\"dark_blue\"},{\"text\":\"/4\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Rejoindre\",\"color\":\"dark_green\"}"}

        execute @e[type=armor_stand,name=msh:start,score_msh_min=1] ~ ~ ~ blockdata -9922 72 145 {Text1:"{\"text\":\"Mob Shooter\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"title @p actionbar [\\\"§4La partie a déjà commencé !\\\"]\"},\"bold\":true,\"color\":\"gold\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=msh:joueurs]\",\"objective\":\"msh\"},\"color\":\"dark_blue\"},{\"text\":\"/4\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Partie pleine\",\"color\":\"red\"}"}

        # Spawn Secondaire
        #execute @e[type=armor_stand,name=mcu:start,score_mcu_min=0,score_mcu=0] ~ ~ ~ setblock 87 75 100 concrete_powder color=green
        #execute @e[type=armor_stand,name=mcu:start,score_mcu_min=0,score_mcu=0] ~ ~ ~ blockdata 88 75 100 {Text1:"{\"text\":\"Minecube\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger core:gogames set 4\"},\"bold\":true,\"color\":\"green\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=mcu:joueurs]\",\"objective\":\"mcu\"},\"color\":\"dark_blue\"},{\"text\":\"/16\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Rejoindre\",\"color\":\"dark_green\"}"}

        #execute @e[type=armor_stand,name=mcu:start,score_mcu_min=1] ~ ~ ~ setblock 87 75 100 concrete_powder color=red
        #execute @e[type=armor_stand,name=mcu:start,score_mcu_min=1] ~ ~ ~ blockdata 88 75 100 {Text1:"{\"text\":\"Minecube\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"title @p actionbar [\\\"§4La partie a déjà commencé !\\\"]\"},\"bold\":true,\"color\":\"dark_green\"}",Text2:"",Text3:"[\"\",{\"score\":{\"name\":\"@e[type=armor_stand,name=mcu:joueurs]\",\"objective\":\"mcu\"},\"color\":\"dark_blue\"},{\"text\":\"/16\",\"color\":\"dark_purple\"}]",Text4:"{\"text\":\"Partie pleine\",\"color\":\"red\"}"}

# Gogames
scoreboard players enable @a[tag=spawn] core:gogames

execute @e[type=armor_stand,name=twr:start,score_twr=0] ~ ~ ~ execute @a[score_core:gogames_min=1,score_core:gogames=1] ~ ~ ~ tp @s 81 6 3
execute @e[type=armor_stand,name=twr:start,score_twr=0] ~ ~ ~ execute @a[score_core:gogames_min=1,score_core:gogames=1] ~ ~ ~ clear @s
execute @e[type=armor_stand,name=twr:start,score_twr=0] ~ ~ ~ execute @a[score_core:gogames_min=1,score_core:gogames=1] ~ ~ ~ tellraw @s ["§7[§1GamesIO§7] Vers le §4Tower §7..."]
execute @e[type=armor_stand,name=twr:start,score_twr=0] ~ ~ ~ execute @a[score_core:gogames_min=1,score_core:gogames=1] ~ ~ ~ scoreboard players tag @s add twr
execute @e[type=armor_stand,name=twr:start,score_twr=0] ~ ~ ~ execute @a[score_core:gogames_min=1,score_core:gogames=1] ~ ~ ~ scoreboard players set @s twr:state 1
execute @e[type=armor_stand,name=twr:start,score_twr=0] ~ ~ ~ execute @a[score_core:gogames_min=1,score_core:gogames=1] ~ ~ ~ scoreboard players set @s twr:teams 0

# 21 - Game 1 CTF

execute @e[type=armor_stand,name=ctf:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=21,score_core:gogames=21] ~ ~ ~ tp @s 107 5 -16
execute @e[type=armor_stand,name=ctf:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=21,score_core:gogames=21] ~ ~ ~ clear @s
execute @e[type=armor_stand,name=ctf:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=21,score_core:gogames=21] ~ ~ ~ scoreboard players set @s core:damage 0
execute @e[type=armor_stand,name=ctf:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=21,score_core:gogames=21] ~ ~ ~ scoreboard players set @s ctf:gameN 1
execute @e[type=armor_stand,name=ctf:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=21,score_core:gogames=21] ~ ~ ~ tellraw @s ["§7[§1GamesIO§7] Vers le §9CTF §7..."]
execute @e[type=armor_stand,name=ctf:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=21,score_core:gogames=21] ~ ~ ~ scoreboard players set ctf:deathRES 0
execute @e[type=armor_stand,name=ctf:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=21,score_core:gogames=21] ~ ~ ~ scoreboard players tag @s add ctf
execute @e[type=armor_stand,name=ctf:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=21,score_core:gogames=21] ~ ~ ~ scoreboard players set @s ctf:state 1
execute @e[type=armor_stand,name=ctf:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=21,score_core:gogames=21] ~ ~ ~ scoreboard players set @s ctf:teams 0

# 22 - Game 2 CTF

execute @e[type=armor_stand,name=ctf2:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=22,score_core:gogames=22] ~ ~ ~ tp @s 107 5 -16
execute @e[type=armor_stand,name=ctf2:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=22,score_core:gogames=22] ~ ~ ~ clear @s
execute @e[type=armor_stand,name=ctf2:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=22,score_core:gogames=22] ~ ~ ~ scoreboard players set @s core:damage 0
execute @e[type=armor_stand,name=ctf2:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=22,score_core:gogames=22] ~ ~ ~ scoreboard players set @s ctf:gameN 2
execute @e[type=armor_stand,name=ctf2:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=22,score_core:gogames=22] ~ ~ ~ tellraw @s ["§7[§1GamesIO§7] Vers le §9CTF §7..."]
execute @e[type=armor_stand,name=ctf2:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=22,score_core:gogames=22] ~ ~ ~ scoreboard players set ctf:deathRES 0
execute @e[type=armor_stand,name=ctf2:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=22,score_core:gogames=22] ~ ~ ~ scoreboard players tag @s add ctf
execute @e[type=armor_stand,name=ctf2:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=22,score_core:gogames=22] ~ ~ ~ scoreboard players set @s ctf:state 1
execute @e[type=armor_stand,name=ctf2:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=22,score_core:gogames=22] ~ ~ ~ scoreboard players set @s ctf:teams 0

# 23 - Game 3 CTF

execute @e[type=armor_stand,name=ctf3:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=23,score_core:gogames=23] ~ ~ ~ tp @s 107 5 -16
execute @e[type=armor_stand,name=ctf3:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=23,score_core:gogames=23] ~ ~ ~ clear @s
execute @e[type=armor_stand,name=ctf3:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=23,score_core:gogames=23] ~ ~ ~ scoreboard players set @s core:damage 0
execute @e[type=armor_stand,name=ctf3:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=23,score_core:gogames=23] ~ ~ ~ scoreboard players set @s ctf:gameN 2
execute @e[type=armor_stand,name=ctf3:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=23,score_core:gogames=23] ~ ~ ~ tellraw @s ["§7[§1GamesIO§7] Vers le §9CTF §7..."]
execute @e[type=armor_stand,name=ctf3:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=23,score_core:gogames=23] ~ ~ ~ scoreboard players set ctf:deathRES 0
execute @e[type=armor_stand,name=ctf3:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=23,score_core:gogames=23] ~ ~ ~ scoreboard players tag @s add ctf
execute @e[type=armor_stand,name=ctf3:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=23,score_core:gogames=23] ~ ~ ~ scoreboard players set @s ctf:state 1
execute @e[type=armor_stand,name=ctf3:start,score_ctf=0] ~ ~ ~ execute @a[score_core:gogames_min=23,score_core:gogames=23] ~ ~ ~ scoreboard players set @s ctf:teams 0

# 3 - PWA

# 4 - MCU

execute @e[type=armor_stand,name=mcu:start,score_mcu=0] ~ ~ ~ execute @a[score_core:gogames_min=4,score_core:gogames=4] ~ ~ ~ tp @s 9990 98 -14
execute @e[type=armor_stand,name=mcu:start,score_mcu=0] ~ ~ ~ execute @a[score_core:gogames_min=4,score_core:gogames=4] ~ ~ ~ clear @s
execute @e[type=armor_stand,name=mcu:start,score_mcu=0] ~ ~ ~ execute @a[score_core:gogames_min=4,score_core:gogames=4] ~ ~ ~ tellraw @s ["§7[§1GamesIO§7] Vers le §2Minecube §7..."]
execute @e[type=armor_stand,name=mcu:start,score_mcu=0] ~ ~ ~ execute @a[score_core:gogames_min=4,score_core:gogames=4] ~ ~ ~ scoreboard players tag @s add mcu
execute @e[type=armor_stand,name=mcu:start,score_mcu=0] ~ ~ ~ execute @a[score_core:gogames_min=4,score_core:gogames=4] ~ ~ ~ scoreboard players set @s mcu:state 1

# 5 - MSH

execute @e[type=armor_stand,name=msh:start,score_msh=0] ~ ~ ~ execute @a[score_core:gogames_min=5,score_core:gogames=5] ~ ~ ~ tp @s -995 47 48
execute @e[type=armor_stand,name=msh:start,score_msh=0] ~ ~ ~ execute @a[score_core:gogames_min=5,score_core:gogames=5] ~ ~ ~ clear @s
execute @e[type=armor_stand,name=msh:start,score_msh=0] ~ ~ ~ execute @a[score_core:gogames_min=5,score_core:gogames=5] ~ ~ ~ tellraw @s ["§7[§1GamesIO§7] Vers le §eMobShooter §7..."]
execute @e[type=armor_stand,name=msh:start,score_msh=0] ~ ~ ~ execute @a[score_core:gogames_min=5,score_core:gogames=5] ~ ~ ~ scoreboard players tag @s add msh
execute @e[type=armor_stand,name=msh:start,score_msh=0] ~ ~ ~ execute @a[score_core:gogames_min=5,score_core:gogames=5] ~ ~ ~ scoreboard players set @s msh:state 1

scoreboard players set @a core:gogames 0

# LOG N' REJOIN
scoreboard players enable @a[tag=spawn,score_twr:state_min=5] core:lognrejoin
scoreboard players enable @a[tag=spawn,score_ctf:state_min=5] core:lognrejoin

execute @a[score_core:lognrejoin_min=1,score_core:lognrejoin=1] ~ ~ ~ tellraw @s ["§7[§4Log N' Rejoin§7] Vous allez réintégrer le §4Tower §7..."]
execute @a[score_core:lognrejoin_min=1,score_core:lognrejoin=1] ~ ~ ~ scoreboard players tag @s add twr
execute @a[score_core:lognrejoin_min=1,score_core:lognrejoin=1] ~ ~ ~ scoreboard players set @s twr:state 4
execute @a[score_core:lognrejoin_min=1,score_core:lognrejoin=1] ~ ~ ~ scoreboard players tag @s add rejoin
execute @a[score_core:lognrejoin_min=1,score_core:lognrejoin=1,score_twr:teams_min=1,score_twr:teams=1] ~ ~ ~ scoreboard teams join twr:red @s
execute @a[score_core:lognrejoin_min=1,score_core:lognrejoin=1,score_twr:teams_min=2,score_twr:teams=2] ~ ~ ~ scoreboard teams join twr:blue @s
execute @a[score_core:lognrejoin_min=1,score_core:lognrejoin=1] ~ ~ ~ effect @s clear

execute @a[score_core:lognrejoin_min=2,score_core:lognrejoin=2,score_ctf:gameN_min=1,score_ctf:gameN=1] ~ ~ ~ tellraw @s ["§7[§4Log N' Rejoin§7] Vous allez réintégrer le §9Capture the Flag §7..."]
execute @a[score_core:lognrejoin_min=2,score_core:lognrejoin=2,score_ctf:gameN_min=1,score_ctf:gameN=1] ~ ~ ~ scoreboard players tag @s add ctf
execute @a[score_core:lognrejoin_min=2,score_core:lognrejoin=2,score_ctf:gameN_min=1,score_ctf:gameN=1] ~ ~ ~ scoreboard players set @s ctf:state 4
execute @a[score_core:lognrejoin_min=2,score_core:lognrejoin=2,score_ctf:gameN_min=1,score_ctf:gameN=1] ~ ~ ~ scoreboard players tag @s add rejoin
execute @a[score_core:lognrejoin_min=2,score_core:lognrejoin=2,score_ctf:teams_min=1,score_ctf:teams=1,score_ctf:gameN_min=1,score_ctf:gameN=1] ~ ~ ~ scoreboard teams join ctf:org @s
execute @a[score_core:lognrejoin_min=2,score_core:lognrejoin=2,score_ctf:teams_min=2,score_ctf:teams=2,score_ctf:gameN_min=1,score_ctf:gameN=1] ~ ~ ~ scoreboard teams join ctf:green @s
execute @a[score_core:lognrejoin_min=2,score_core:lognrejoin=2,score_ctf:gameN_min=1,score_ctf:gameN=1] ~ ~ ~ effect @s clear

execute @a[score_core:lognrejoin_min=2,score_core:lognrejoin=2,score_ctf:gameN_min=2,score_ctf:gameN=2] ~ ~ ~ tellraw @s ["§7[§4Log N' Rejoin§7] Vous allez réintégrer le §9Capture the Flag §7..."]
execute @a[score_core:lognrejoin_min=2,score_core:lognrejoin=2,score_ctf:gameN_min=2,score_ctf:gameN=2] ~ ~ ~ scoreboard players tag @s add ctf2
execute @a[score_core:lognrejoin_min=2,score_core:lognrejoin=2,score_ctf:gameN_min=2,score_ctf:gameN=2] ~ ~ ~ scoreboard players set @s ctf:state 4
execute @a[score_core:lognrejoin_min=2,score_core:lognrejoin=2,score_ctf:gameN_min=2,score_ctf:gameN=2] ~ ~ ~ scoreboard players tag @s add rejoin
execute @a[score_core:lognrejoin_min=2,score_core:lognrejoin=2,score_ctf:teams_min=1,score_ctf:teams=1,score_ctf:gameN_min=2,score_ctf:gameN=2] ~ ~ ~ scoreboard teams join ctf:org @s
execute @a[score_core:lognrejoin_min=2,score_core:lognrejoin=2,score_ctf:teams_min=2,score_ctf:teams=2,score_ctf:gameN_min=2,score_ctf:gameN=2] ~ ~ ~ scoreboard teams join ctf:green @s
execute @a[score_core:lognrejoin_min=2,score_core:lognrejoin=2,score_ctf:gameN_min=2,score_ctf:gameN=2] ~ ~ ~ effect @s clear

scoreboard players set @a core:lognrejoin 0
