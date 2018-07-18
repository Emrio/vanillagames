# Game.mcfunction
# Execute les commandes a exécuter en chaîne lors de la partie


#gamemode survival @a[tag=mcu,score_mcu:state_min=2,tag=!dev]


execute @e[type=armor_stand,name=mcu:joueurs,score_mcu_min=16] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=mcu:timer,score_mcu_min=0,score_mcu=0] ~ ~ ~ scoreboard players set @a[score_mcu:state_min=2,score_mcu:state=2,tag=mcu] mcu:state 3
scoreboard teams join mcu @a[tag=mcu,score_mcu:state_min=3,score_mcu:state=3]

# Gears
clear @a[tag=mcu,team=mcu,score_mcu:state_min=3,score_mcu:state=3]
replaceitem entity @a[tag=mcu,team=mcu,score_mcu:state_min=3,score_mcu:state=3] slot.armor.head leather_helmet 1 0 {display:{color:3846702,Name:"§2Casque de Mineur"},ench:[{id:0,lvl:1}],HideFlags:63,Unbreakable:1}
replaceitem entity @a[tag=mcu,team=mcu,score_mcu:state_min=3,score_mcu:state=3] slot.armor.feet leather_boots 1 0 {display:{color:3846702,Name:"§2Bottes"},ench:[{id:0,lvl:1}],HideFlags:63,Unbreakable:1}
replaceitem entity @a[tag=mcu,team=mcu,score_mcu:state_min=3,score_mcu:state=3] slot.hotbar.1 cooked_beef 16 0 {display:{Name:"§2Steak cuit"},HideFlags:63}
replaceitem entity @a[tag=mcu,team=mcu,score_mcu:state_min=3,score_mcu:state=3] slot.hotbar.0 wooden_pickaxe 1 0 {display:{Name:"§2Pioche en bois",Lore:["§r§8Une pioche incassable","§r§8mais pas très efficace."]},HideFlags:63,Unbreakable:1b,ench:[{id:32,lvl:2},{id:35,lvl:5}]}
effect @a[tag=mcu,score_mcu:state_min=3,score_mcu:state=3] mining_fatigue 2 255 true



execute @r[tag=mcu,score_mcu:state_min=3,score_mcu:state=3] ~ ~ ~ tp @s @e[type=armor_stand,name=mcu:spawner,c=1]



# Stade final de jeu
execute @e[type=armor_stand,name=mcu:spawner] ~ ~ ~ scoreboard players set @a[tag=mcu,score_mcu:state_min=3,score_mcu:state=3,r=2] mcu:state 4

execute @a[tag=mcu,score_mcu:state_min=4,score_mcu:state=4] ~ ~ ~ kill @e[type=armor_stand,name=mcu:spawner,r=2]
execute @a[tag=mcu,score_mcu:state_min=4,score_mcu:state=4] ~ ~ ~ fill ~ ~ ~ ~ ~1 ~ air

execute @a[tag=mcu,score_mcu:state_min=4,score_mcu:state=4] ~ ~ ~ detect ~ ~ ~ air 0 scoreboard players set @s mcu:state 5
gamemode survival @a[tag=mcu,score_mcu:state_min=5,score_mcu:state=5]
scoreboard players set @a[tag=mcu,score_mcu:state_min=5,score_mcu:state=5] mcu:state 6


execute @e[type=armor_stand,name=mcu:joueurs,score_mcu_min=16] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=mcu:timer,score_mcu_min=0,score_mcu=0] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=mcu:start] mcu 3
execute @e[type=armor_stand,name=mcu:joueurs,score_mcu_min=16] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=mcu:timer,score_mcu_min=0,score_mcu=0] ~ ~ ~ tellraw @a[tag=mcu] ["§3Bonne chance à tous !"]
execute @e[type=armor_stand,name=mcu:joueurs,score_mcu_min=16] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=mcu:timer,score_mcu_min=1,score_mcu=1] ~ ~ ~ tellraw @a[tag=mcu] ["§7La partie commence dans §6",{"score":{"name":"@e[type=armor_stand,name=mcu:timer]","objective":"mcu"}}," §7seconde !"]
execute @e[type=armor_stand,name=mcu:joueurs,score_mcu_min=16] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=mcu:timer,score_mcu_min=2,score_mcu=5] ~ ~ ~ tellraw @a[tag=mcu] ["§7La partie commence dans §6",{"score":{"name":"@e[type=armor_stand,name=mcu:timer]","objective":"mcu"}}," §7secondes !"]
execute @e[type=armor_stand,name=mcu:joueurs,score_mcu_min=16] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=mcu:timer,score_mcu_min=10,score_mcu=10] ~ ~ ~ tellraw @a[tag=mcu] ["§7La partie commence dans §6",{"score":{"name":"@e[type=armor_stand,name=mcu:timer]","objective":"mcu"}}," §7secondes !"]
execute @e[type=armor_stand,name=mcu:joueurs,score_mcu_min=16] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ scoreboard players remove @e[type=armor_stand,name=mcu:timer,score_mcu_min=0] mcu 1

execute @e[type=armor_stand,name=mcu:joueurs,score_mcu=15] ~ ~ ~ execute @e[type=armor_stand,name=mcu:start,score_mcu_min=1,score_mcu=2] ~ ~ ~ title @a[tag=mcu] actionbar ["§8Lancement interrompue. Reprise lorsque le nombre de joueurs minimum sera atteinte"]
execute @e[type=armor_stand,name=mcu:joueurs,score_mcu=15] ~ ~ ~ execute @e[type=armor_stand,name=mcu:start,score_mcu_min=1,score_mcu=2] ~ ~ ~ scoreboard players set @a[tag=mcu] mcu:state 2
execute @e[type=armor_stand,name=mcu:joueurs,score_mcu=15] ~ ~ ~ execute @e[type=armor_stand,name=mcu:start,score_mcu_min=1,score_mcu=2] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=mcu:timer] mcu -1
execute @e[type=armor_stand,name=mcu:joueurs,score_mcu=15] ~ ~ ~ execute @e[type=armor_stand,name=mcu:start,score_mcu_min=1,score_mcu=2] ~ ~ ~ scoreboard players set @s mcu 0


# Kills
title @a[tag=mcu,score_mcu:kills_min=1] actionbar ["§7Bonus Kill : §e+6 coins §7| §2+3 xp"]
scoreboard players add @a[tag=mcu,score_mcu:kills_min=1] mcu:coins 6
scoreboard players add @a[tag=mcu,score_mcu:kills_min=1] mcu:lvl 3
execute @a[tag=mcu,score_mcu:kills_min=1] ~ ~ ~ tellraw @a[tag=mcu] [{"text":"MINECUBE > ","color":"dark_green"},{"selector":"@a[score_mcu:kills_min=1,score_mcu:kills=1,tag=mcu]"},{"text":" ⚔ ","color":"white"},{"selector":"@a[score_mcu:dead_min=1,score_mcu:dead=1,tag=mcu]"}]

scoreboard players add @a[tag=mcu,score_mcu:kills_min=1] stats:mcuKills 1
scoreboard players add @a[tag=mcu,score_mcu:kills_min=1] mcu:gameKills 1
scoreboard players remove @a[tag=mcu,score_mcu:kills_min=1] mcu:kills 1

scoreboard players set @a[tag=!mcu] mcu:dead 0
title @a[score_mcu:dead_min=1] ["§9Vous êtes éliminé !"]


# Get emerald
clear @a[tag=mcu] minecraft:emerald
scoreboard players reset @a[tag=!mcu] mcu:emeralds
execute @a[tag=mcu] ~ ~ ~ scoreboard players tag @e[type=item,r=50] add emerald {Item:{id:"minecraft:emerald"}}
execute @a[tag=mcu] ~ ~ ~ kill @e[type=item,tag=emerald,r=50]
xp -999999L @a[tag=mcu]

# Iron Cut Clean
execute @a[tag=mcu,score_mcu:state_min=6] ~ ~ ~ scoreboard players tag @e[type=item,r=50] add ironcutclean {Item:{id:"minecraft:iron_ore"}}
execute @e[type=item,tag=ironcutclean] ~ ~ ~ summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b}}
kill @e[type=item,tag=ironcutclean]

# Actionbar
execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=mcu:actionbar] mcu 1

execute @e[type=armor_stand,name=mcu:actionbar,score_mcu_min=1,score_mcu=6] ~ ~ ~ execute @a[tag=mcu] ~ ~ ~ title @s actionbar ["§r§3Vous avez ",{"score":{"name":"@p","objective":"mcu:emeralds"},"color":"gold","bold":"true"},"§r§2 émeraudes"]
execute @e[type=armor_stand,name=mcu:actionbar,score_mcu_min=7,score_mcu=7] ~ ~ ~ title @a[tag=mcu] actionbar ["§3Temps restant: ",{"score":{"name":"@e[type=armor_stand,name=mcu:min]","objective":"mcu"},"color":"gold","bold":"true"},"§r§3:",{"score":{"name":"@e[type=armor_stand,name=mcu:sec]","objective":"mcu"},"color":"gold","bold":"true"}]
execute @e[type=armor_stand,name=mcu:actionbar,score_mcu_min=8,score_mcu=8] ~ ~ ~ title @a[tag=mcu] actionbar ["§3Temps restant: ",{"score":{"name":"@e[type=armor_stand,name=mcu:min]","objective":"mcu"},"color":"gold","bold":"true"},"§r§3 ",{"score":{"name":"@e[type=armor_stand,name=mcu:sec]","objective":"mcu"},"color":"gold","bold":"true"}]
execute @e[type=armor_stand,name=mcu:actionbar,score_mcu_min=9,score_mcu=9] ~ ~ ~ title @a[tag=mcu] actionbar ["§3Temps restant: ",{"score":{"name":"@e[type=armor_stand,name=mcu:min]","objective":"mcu"},"color":"gold","bold":"true"},"§r§3:",{"score":{"name":"@e[type=armor_stand,name=mcu:sec]","objective":"mcu"},"color":"gold","bold":"true"}]
execute @e[type=armor_stand,name=mcu:actionbar,score_mcu_min=10,score_mcu=10] ~ ~ ~ title @a[tag=mcu] actionbar ["§3Temps restant: ",{"score":{"name":"@e[type=armor_stand,name=mcu:min]","objective":"mcu"},"color":"gold","bold":"true"},"§r§3 ",{"score":{"name":"@e[type=armor_stand,name=mcu:sec]","objective":"mcu"},"color":"gold","bold":"true"}]
execute @e[type=armor_stand,name=mcu:actionbar,score_mcu_min=11,score_mcu=11] ~ ~ ~ title @a[tag=mcu] actionbar ["§3Temps restant: ",{"score":{"name":"@e[type=armor_stand,name=mcu:min]","objective":"mcu"},"color":"gold","bold":"true"},"§r§3:",{"score":{"name":"@e[type=armor_stand,name=mcu:sec]","objective":"mcu"},"color":"gold","bold":"true"}]
execute @e[type=armor_stand,name=mcu:actionbar,score_mcu_min=12,score_mcu=12] ~ ~ ~ title @a[tag=mcu] actionbar ["§3Temps restant: ",{"score":{"name":"@e[type=armor_stand,name=mcu:min]","objective":"mcu"},"color":"gold","bold":"true"},"§r§3 ",{"score":{"name":"@e[type=armor_stand,name=mcu:sec]","objective":"mcu"},"color":"gold","bold":"true"}]

scoreboard players set @e[type=armor_stand,name=mcu:actionbar,score_mcu_min=12] mcu 1

# Timer

execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ scoreboard players remove @e[type=armor_stand,name=mcu:sec,score_mcu_min=1] mcu 1
execute @e[type=armor_stand,name=mcu:sec,score_mcu=0] ~ ~ ~ scoreboard players remove @e[type=armor_stand,name=mcu:min] mcu 1
execute @e[type=armor_stand,name=mcu:sec,score_mcu=0] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=mcu:sec] mcu 59

# PVP 1.8
scoreboard players reset @a[tag=mcu] mcu:swordchange
scoreboard players set @a[tag=mcu] mcu:swordchange 1 {Inventory:[{Slot:0b,id:"minecraft:stone_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 2 {Inventory:[{Slot:0b,id:"minecraft:iron_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 3 {Inventory:[{Slot:0b,id:"minecraft:diamond_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 4 {Inventory:[{Slot:1b,id:"minecraft:stone_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 5 {Inventory:[{Slot:1b,id:"minecraft:iron_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 6 {Inventory:[{Slot:1b,id:"minecraft:diamond_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 7 {Inventory:[{Slot:2b,id:"minecraft:stone_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 8 {Inventory:[{Slot:2b,id:"minecraft:iron_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 9 {Inventory:[{Slot:2b,id:"minecraft:diamond_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 10 {Inventory:[{Slot:3b,id:"minecraft:stone_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 11 {Inventory:[{Slot:3b,id:"minecraft:iron_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 12 {Inventory:[{Slot:3b,id:"minecraft:diamond_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 13 {Inventory:[{Slot:4b,id:"minecraft:stone_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 14 {Inventory:[{Slot:4b,id:"minecraft:iron_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 15 {Inventory:[{Slot:4b,id:"minecraft:diamond_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 16 {Inventory:[{Slot:5b,id:"minecraft:stone_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 17 {Inventory:[{Slot:5b,id:"minecraft:iron_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 18 {Inventory:[{Slot:5b,id:"minecraft:diamond_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 19 {Inventory:[{Slot:6b,id:"minecraft:stone_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 20 {Inventory:[{Slot:6b,id:"minecraft:iron_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 21 {Inventory:[{Slot:6b,id:"minecraft:diamond_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 22 {Inventory:[{Slot:7b,id:"minecraft:stone_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 23 {Inventory:[{Slot:7b,id:"minecraft:iron_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 24 {Inventory:[{Slot:7b,id:"minecraft:diamond_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 25 {Inventory:[{Slot:8b,id:"minecraft:stone_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 26 {Inventory:[{Slot:8b,id:"minecraft:iron_sword",Damage:0s}]}
scoreboard players set @a[tag=mcu] mcu:swordchange 27 {Inventory:[{Slot:8b,id:"minecraft:diamond_sword",Damage:0s}]}
#scoreboard players set @a[tag=mcu] mcu:swordchange 28 {Inventory:[{Slot:0b,id:"minecraft:wooden_sword",Damage:0s}]}
#scoreboard players set @a[tag=mcu] mcu:swordchange 29 {Inventory:[{Slot:1b,id:"minecraft:wooden_sword",Damage:0s}]}
#scoreboard players set @a[tag=mcu] mcu:swordchange 30 {Inventory:[{Slot:2b,id:"minecraft:wooden_sword",Damage:0s}]}
#scoreboard players set @a[tag=mcu] mcu:swordchange 31 {Inventory:[{Slot:3b,id:"minecraft:wooden_sword",Damage:0s}]}
#scoreboard players set @a[tag=mcu] mcu:swordchange 32 {Inventory:[{Slot:4b,id:"minecraft:wooden_sword",Damage:0s}]}
#scoreboard players set @a[tag=mcu] mcu:swordchange 33 {Inventory:[{Slot:5b,id:"minecraft:wooden_sword",Damage:0s}]}
#scoreboard players set @a[tag=mcu] mcu:swordchange 34 {Inventory:[{Slot:6b,id:"minecraft:wooden_sword",Damage:0s}]}
#scoreboard players set @a[tag=mcu] mcu:swordchange 35 {Inventory:[{Slot:7b,id:"minecraft:wooden_sword",Damage:0s}]}
#scoreboard players set @a[tag=mcu] mcu:swordchange 36 {Inventory:[{Slot:8b,id:"minecraft:wooden_sword",Damage:0s}]}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=1,score_mcu:swordchange=1] slot.hotbar.0 stone_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§8Epée de pierre",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=2,score_mcu:swordchange=2] slot.hotbar.0 iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§fEpée en fer",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=3,score_mcu:swordchange=3] slot.hotbar.0 diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§bEpée en diamant",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=4,score_mcu:swordchange=4] slot.hotbar.1 stone_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§8Epée de pierre",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=5,score_mcu:swordchange=5] slot.hotbar.1 iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§fEpée en fer",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=6,score_mcu:swordchange=6] slot.hotbar.1 diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§bEpée en diamant",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=7,score_mcu:swordchange=7] slot.hotbar.2 stone_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§8Epée de pierre",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=8,score_mcu:swordchange=8] slot.hotbar.2 iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§fEpée en fer",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=9,score_mcu:swordchange=9] slot.hotbar.2 diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§bEpée en diamant",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=10,score_mcu:swordchange=10] slot.hotbar.3 stone_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§8Epée de pierre",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=11,score_mcu:swordchange=12] slot.hotbar.3 iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§fEpée en fer",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=12,score_mcu:swordchange=12] slot.hotbar.3 diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§bEpée en diamant",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=13,score_mcu:swordchange=13] slot.hotbar.4 stone_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§8Epée de pierre",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=14,score_mcu:swordchange=14] slot.hotbar.4 iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§fEpée en fer",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=15,score_mcu:swordchange=15] slot.hotbar.4 diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§bEpée en diamant",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=16,score_mcu:swordchange=16] slot.hotbar.5 stone_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§8Epée de pierre",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=17,score_mcu:swordchange=17] slot.hotbar.5 iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§fEpée en fer",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=18,score_mcu:swordchange=18] slot.hotbar.5 diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§bEpée en diamant",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=19,score_mcu:swordchange=19] slot.hotbar.6 stone_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§8Epée de pierre",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=20,score_mcu:swordchange=20] slot.hotbar.6 iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§fEpée en fer",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=21,score_mcu:swordchange=21] slot.hotbar.6 diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§bEpée en diamant",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=22,score_mcu:swordchange=22] slot.hotbar.7 stone_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§8Epée de pierre",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=23,score_mcu:swordchange=23] slot.hotbar.7 iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§fEpée en fer",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=24,score_mcu:swordchange=24] slot.hotbar.7 diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§bEpée en diamant",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=25,score_mcu:swordchange=25] slot.hotbar.8 stone_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§8Epée de pierre",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=26,score_mcu:swordchange=26] slot.hotbar.8 iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§fEpée en fer",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=mcu,score_mcu:swordchange_min=27,score_mcu:swordchange=27] slot.hotbar.8 diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§bEpée en diamant",Lore:["§7Accepte le PVP 1.8"]}}

# Spawn Protect

  # Rouge
  clone -29 69 187 -25 69 206 -9985 69 -9846
  clone -29 70 202 -25 83 206 -9985 70 -9831

  # Bleu
  clone -29 69 34 -25 69 53 -9985 69 -9999
  clone -29 70 34 -25 83 38 -9985 70 -9999

# No build under y = 30
fill -9918 30 -9784 -10046 30 -9913 air
fill -10046 30 -9914 -9918 30 -10040 air
fill -9918 29 -9784 -10046 29 -9913 air
fill -10046 29 -9914 -9918 29 -10040 air
fill -9918 28 -9784 -10046 28 -9913 air
fill -10046 28 -9914 -9918 28 -10040 air

# Wins anormalles
function games:mcu/reset if @e[type=armor_stand,name=mcu:joueurs,score_mcu_min=0,score_mcu=1]

# Wins normales

execute @e[type=armor_stand,name=mcu:min,score_mcu=0] ~ ~ ~ function games:mcu/reset if @e[type=armor_stand,name=mcu:sec,score_mcu=1]
