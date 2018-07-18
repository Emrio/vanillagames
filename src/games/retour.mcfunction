# Retour.mcfunction
# Menu de retour au spawn



replaceitem entity @a[tag=twr,score_twr:state_min=1,score_twr:state=2] slot.hotbar.0 bed 1 14 {display:{Name:"§5Retour au spawn",Lore:["§7Lâchez moi pour retourner","§7au spawn !"]},ench:[{id:1,lvl:1}],HideFlags:63}
replaceitem entity @a[tag=ctf,score_ctf:state_min=1,score_ctf:state=2] slot.hotbar.0 bed 1 14 {display:{Name:"§5Retour au spawn",Lore:["§7Lâchez moi pour retourner","§7au spawn !"]},ench:[{id:1,lvl:1}],HideFlags:63}
replaceitem entity @a[tag=mcu,score_mcu:state_min=1,score_mcu:state=1] slot.hotbar.0 bed 1 14 {display:{Name:"§5Retour au spawn",Lore:["§7Lâchez moi pour retourner","§7au spawn !"]},ench:[{id:1,lvl:1}],HideFlags:63}

tellraw @a[tag=twr,score_twr:state_min=1,score_twr:state=2,score_menu:bed_min=1] ["§7Retour au spawn..."]
execute @a[tag=twr,score_twr:state_min=1,score_twr:state=2,score_menu:bed_min=1] ~ ~ ~ kill @e[type=item,r=5]
tp @a[tag=twr,score_twr:state_min=1,score_twr:state=2,score_menu:bed_min=1] @e[type=armor_stand,name=resetbox]
scoreboard players reset @a[tag=twr,score_twr:state_min=1,score_twr:state=2,score_menu:bed_min=1] twr:state

tellraw @a[tag=ctf,score_ctf:state_min=1,score_ctf:state=2,score_menu:bed_min=1] ["§7Retour au spawn..."]
execute @a[tag=ctf,score_ctf:state_min=1,score_ctf:state=2,score_menu:bed_min=1] ~ ~ ~ kill @e[type=item,r=5]
tp @a[tag=ctf,score_ctf:state_min=1,score_ctf:state=2,score_menu:bed_min=1] @e[type=armor_stand,name=resetbox]

tellraw @a[tag=mcu,score_mcu:state_min=1,score_mcu:state=2,score_menu:bed_min=1] ["§7Retour au spawn..."]
execute @a[tag=mcu,score_mcu:state_min=1,score_mcu:state=2,score_menu:bed_min=1] ~ ~ ~ kill @e[type=item,r=5]
tp @a[tag=mcu,score_mcu:state_min=1,score_mcu:state=2,score_menu:bed_min=1] @e[type=armor_stand,name=resetbox]
