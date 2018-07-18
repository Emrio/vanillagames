# Resetbox.mcfunction
# Execute ici les commandes avant le retour au spawn
# Pour activer : /tp @sélecteur @e[name=resetbox]

execute @e[name=resetbox,type=armor_stand] ~ ~ ~ execute @p[r=1,tag=!welcome] ~ ~ ~ tellraw @a [{"text":"Vanilla Games >","color":"gold","bold":"true"},{"text":" Souhaitez la bienvenue à ","color":"white","bold":"false"},{"selector":"@s","color":"yellow"},{"text":" sur le serveur !","color":"white","bold":"false"}]
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ execute @p[r=1,tag=!welcome] ~ ~ ~ tellraw @s ["§7[§5JoinGuard§7] §fBienvenue sur notre serveur ! Vanilla Games vous propose différent jeux inédits et revisités par nos développeurs et ce uniquement avec des commandes ! Nous vous conseillons de suivre notre ",{"text":"tutoriel","color":"aqua","clickEvent":{"action":"run_command","value":"/tellraw @s [\"\",{\"text\":\"Le tutoriel est indisponible pour le moment...\",\"color\":\"gray\"}]"}}," §fpour commencer !"]
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ execute @p[r=1,tag=!welcome] ~ ~ ~ scoreboard players set @s core:grade 1
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ execute @p[r=1,tag=!welcome] ~ ~ ~ scoreboard players set @s stats:centicoin 0
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ execute @p[r=1,tag=!welcome] ~ ~ ~ scoreboard players set @s stats:coin 0
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ execute @p[r=1,tag=!welcome] ~ ~ ~ scoreboard players set @s stats:centilevel 0
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ execute @p[r=1,tag=!welcome] ~ ~ ~ scoreboard players set @s stats:level 0
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ execute @p[r=1,tag=!welcome] ~ ~ ~ scoreboard players set @s stats:totalKills 0
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ execute @p[r=1,tag=!welcome] ~ ~ ~ scoreboard players set @s stats:ctfKills 0
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ execute @p[r=1,tag=!welcome] ~ ~ ~ scoreboard players set @s stats:twrKills 0
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ execute @p[r=1,tag=!welcome] ~ ~ ~ scoreboard players set @s stats:mcuKills 0
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ execute @p[r=1,tag=!welcome] ~ ~ ~ scoreboard players tag @s add welcome

execute @e[name=resetbox,type=armor_stand] ~ ~ ~ effect @a[r=1,tag=!rejoin] clear
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ effect @a[r=1,tag=!rejoin] blindness 1 255 true
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ effect @a[r=1,tag=!rejoin] resistance 999999 255 true
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ effect @a[r=1,tag=!rejoin] weakness 999999 255 true
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ effect @a[r=1,tag=!rejoin] night_vision 999999 255 true
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ effect @a[r=1,tag=!rejoin] saturation 999999 255 true

execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players tag @a[r=1,tag=!rejoin] remove twr
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players tag @a[r=1,tag=!rejoin] remove twr:team
#execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players set @a[r=1,tag=!rejoin] twr:state 0
#execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players set @a[r=1,tag=!rejoin] twr:teams 0

execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players tag @a[r=1,tag=!rejoin] remove ctf
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players tag @a[r=1,tag=!rejoin] remove ctf2
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players tag @a[r=1,tag=!rejoin] remove ctf3
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players tag @a[r=1,tag=!rejoin] remove ctf:team
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players set @a[r=1,tag=!rejoin] ctf:state 0
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players set @a[r=1,tag=!rejoin] ctf:teams 0
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players reset @a[r=1,tag=!rejoin] ctf:has_drap_o
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players reset @a[r=1,tag=!rejoin] ctf:has_drap_v
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players reset @a[r=1,tag=!rejoin] ctf:kill
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players reset @a[r=1,tag=!rejoin] ctf:gameN
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players reset @a[r=1,tag=!rejoin] ctf:dead
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players reset @a[tag=!rejoin] ctf:deathRES

execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players tag @a[r=1,tag=!rejoin] remove mcu
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players set @a[r=1,tag=!rejoin] mcu:state 0

execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players tag @a[r=1,tag=!rejoin] remove msh
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players set @a[r=1,tag=!rejoin] msh:state 0

execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players set @a[r=1,tag=!rejoin] core:menu 0
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard teams leave @a[r=1,tag=!rejoin]
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ clear @a[r=1,tag=!dev,tag=!rejoin]
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ xp -100000L @a[r=1,tag=!rejoin]

execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard teams join grade:membre @a[r=1,tag=!rejoin,score_core:grade_min=1,score_core:grade=1]
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players set @a[r=1,tag=!rejoin,score_core:grade_min=1,score_core:grade=1] stats:boostGrade
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard teams join grade:vip @a[r=1,tag=!rejoin,score_core:grade_min=2,score_core:grade=2]
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard teams join grade:vipp @a[r=1,tag=!rejoin,score_core:grade_min=3,score_core:grade=3]
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard teams join grade:elite @a[r=1,tag=!rejoin,score_core:grade_min=4,score_core:grade=4]
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard teams join grade:modo @a[r=1,tag=!rejoin,score_core:grade_min=50,score_core:grade=50]
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard teams join grade:admin @a[r=1,tag=!rejoin,score_core:grade_min=51,score_core:grade=51]
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard teams join grade:fonda @a[r=1,tag=!rejoin,score_core:grade_min=100,score_core:grade=100]

execute @e[name=resetbox,type=armor_stand] ~ ~ ~ gamemode 2 @a[r=2,tag=!rejoin]
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players set @a[r=1,tag=rejoin,tag=twr] twr:state 4
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ scoreboard players set @a[r=1,tag=rejoin,tag=ctf] ctf:state 4
execute @e[name=resetbox,type=armor_stand] ~ ~ ~ tp @a[r=1,tag=!rejoin] -9901 73 14 0 0
