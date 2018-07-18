# main.mcfunction
# Fichier principale du Pearl War



replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.hotbar.1 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.hotbar.2 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.hotbar.3 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.hotbar.4 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.hotbar.5 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.hotbar.6 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.hotbar.7 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4,tag=!dev] slot.hotbar.8 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.0 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.1 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.2 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.3 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.4 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.5 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.6 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.7 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.8 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.9 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.10 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.11 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.12 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.13 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.14 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.15 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.16 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.17 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.18 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.19 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.20 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.21 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.22 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.23 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.24 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.25 air
replaceitem entity @a[score_mcu:state_min=1,score_mcu:state=4] slot.inventory.26 air

# When game starts
execute @e[type=armor_stand,name=mcu:joueurs,score_mcu_min=16] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=mcu:start,score_mcu_min=0,score_mcu=1] mcu 1
function games:mcu/start if @e[type=armor_stand,name=mcu:start,score_mcu_min=1,score_mcu=1]
function games:mcu/game if @e[type=armor_stand,name=mcu:start,score_mcu_min=1]
