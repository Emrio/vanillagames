# main.mcfunction
# Fichier principale du Tower


# Sélection team (twr:state = 1)
title @a[score_twr:state_min=1,score_twr:state=1] actionbar ["§6Lâcher §7pour sélectionner une §6team §7ou mettre en §6mode aléatoire"]


replaceitem entity @a[score_twr:state_min=1,score_twr:state=1] slot.hotbar.3 red_glazed_terracotta 1 0 {display:{Name:"§7Rejoindre l'équipe §4rouge"},ench:[{id:1,lvl:1}],HideFlags:63}
replaceitem entity @a[score_twr:state_min=1,score_twr:state=1] slot.hotbar.4 barrier 1 0 {display:{Name:"§7Être en §6mode aléatoire"},ench:[{id:1,lvl:1}],HideFlags:63}
replaceitem entity @a[score_twr:state_min=1,score_twr:state=1] slot.hotbar.5 blue_glazed_terracotta 1 0 {display:{Name:"§7Rejoindre l'équipe §1bleu"},ench:[{id:1,lvl:1}],HideFlags:63}

execute @a[score_twr:state_min=1,score_twr:state=1,score_twr:select_red_min=1] ~ ~ ~ kill @e[r=3,type=item]
execute @a[score_twr:state_min=1,score_twr:state=1,score_twr:select_red_min=1] ~ ~ ~ tellraw @s ["§7Vous avez rejoint l'équipe §4rouge §7!"]
execute @a[score_twr:state_min=1,score_twr:state=1,score_twr:select_red_min=1] ~ ~ ~ scoreboard players set @s twr:teams 1
execute @a[score_twr:state_min=1,score_twr:state=1,score_twr:select_red_min=1] ~ ~ ~ scoreboard players set @s twr:state 2
scoreboard players set @a twr:select_red 0

execute @a[score_twr:state_min=1,score_twr:state=1,score_twr:select_blue_min=1] ~ ~ ~ kill @e[r=3,type=item]
execute @a[score_twr:state_min=1,score_twr:state=1,score_twr:select_blue_min=1] ~ ~ ~ tellraw @s ["§7Vous avez rejoint l'équipe §1bleu §7!"]
execute @a[score_twr:state_min=1,score_twr:state=1,score_twr:select_blue_min=1] ~ ~ ~ scoreboard players set @s twr:teams 2
execute @a[score_twr:state_min=1,score_twr:state=1,score_twr:select_blue_min=1] ~ ~ ~ scoreboard players set @s twr:state 2
scoreboard players set @a twr:select_blue 0

execute @a[score_twr:state_min=1,score_twr:state=1,score_twr:select_alea_min=1] ~ ~ ~ kill @e[r=3,type=item]
execute @a[score_twr:state_min=1,score_twr:state=1,score_twr:select_alea_min=1] ~ ~ ~ tellraw @s ["§6Mode aléatoire §7activé !"]
execute @a[score_twr:state_min=1,score_twr:state=1,score_twr:select_alea_min=1] ~ ~ ~ scoreboard players set @s twr:teams 0
execute @a[score_twr:state_min=1,score_twr:state=1,score_twr:select_alea_min=1] ~ ~ ~ scoreboard players set @s twr:state 2
scoreboard players set @a twr:select_alea 0

replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.hotbar.1 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.hotbar.2 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.hotbar.6 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.hotbar.7 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4,tag=!dev] slot.hotbar.8 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.0 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.1 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.2 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.3 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.4 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.5 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.6 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.7 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.8 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.9 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.10 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.11 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.12 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.13 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.14 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.15 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.16 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.17 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.18 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.19 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.20 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.21 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.22 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.23 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.24 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.25 air
replaceitem entity @a[score_twr:state_min=1,score_twr:state=4] slot.inventory.26 air
 
# Attente (twr:state = 2)
replaceitem entity @a[score_twr:state_min=2,score_twr:state=2] slot.hotbar.3 air
replaceitem entity @a[score_twr:state_min=2,score_twr:state=2] slot.hotbar.4 arrow 1 0 {display:{Name:"§6Lâchez §7pour retourner à la sélection des équipes"},ench:[{id:1,lvl:1}],HideFlags:1}
replaceitem entity @a[score_twr:state_min=2,score_twr:state=2] slot.hotbar.5 air

execute @a[score_twr:state_min=2,score_twr:state=2,score_twr:return_min=1] ~ ~ ~ kill @e[r=3,type=item]
execute @a[score_twr:state_min=2,score_twr:state=2,score_twr:return_min=1] ~ ~ ~ scoreboard players set @s twr:teams 0
execute @a[score_twr:state_min=2,score_twr:state=2,score_twr:return_min=1] ~ ~ ~ scoreboard players set @s twr:state 1
scoreboard teams leave @a[score_twr:state_min=2,score_twr:state=2,score_twr:return_min=1]
scoreboard players set @a twr:return 0

# Démarrage (twr:state = 3)
replaceitem entity @a[score_twr:state_min=3,score_twr:state=3] slot.hotbar.3 air
replaceitem entity @a[score_twr:state_min=3,score_twr:state=3] slot.hotbar.4 air
replaceitem entity @a[score_twr:state_min=3,score_twr:state=3] slot.hotbar.5 air

# When game starts
execute @e[type=armor_stand,name=twr:joueurs,score_twr_min=10] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=twr:start,score_twr_min=0,score_twr=1] twr 1
function games:twr/start if @e[type=armor_stand,name=twr:start,score_twr_min=1,score_twr=1]
function games:twr/game if @e[type=armor_stand,name=twr:start,score_twr_min=1]

# Resetmap
function games:twr/resetmap
