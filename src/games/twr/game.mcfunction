# Game.mcfunction
# Execute les commandes a exécuter en chaîne lors de la partie


gamemode survival @a[tag=twr,score_twr:state_min=4,tag=!dev]

scoreboard players set @r[score_twr:teams_min=0,score_twr:teams=0,tag=twr,c=1] twr:teams 1
scoreboard players set @r[score_twr:teams_min=0,score_twr:teams=0,tag=twr,c=1] twr:teams 2


execute @e[type=armor_stand,name=twr:joueurs,score_twr_min=10] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=twr:timer,score_twr_min=0,score_twr=0] ~ ~ ~ scoreboard players set @a[score_twr:state_min=3,score_twr:state=3,score_twr:teams_min=1,tag=twr] twr:state 4
tp @a[tag=twr,team=twr:red,score_twr:state_min=4,score_twr:state=4] -9983 70 -9829 180 0
tp @a[tag=twr,team=twr:blue,score_twr:state_min=4,score_twr:state=4] -9983 70 -9997 0 0
scoreboard teams join twr:red @a[score_twr:teams_min=1,score_twr:teams=1,tag=twr,score_twr:state_min=4,score_twr:state=4]
scoreboard teams join twr:blue @a[score_twr:teams_min=2,score_twr:teams=2,tag=twr,score_twr:state_min=4,score_twr:state=4]

# Team blue
clear @a[tag=twr,team=twr:blue,score_twr:state_min=4,score_twr:state=4]
replaceitem entity @a[tag=twr,team=twr:blue,score_twr:state_min=4,score_twr:state=4] slot.armor.head leather_helmet 1 0 {display:{color:3754987,Name:"§9Casque"},ench:[{id:0,lvl:1}],HideFlags:63,Unbreakable:1}
replaceitem entity @a[tag=twr,team=twr:blue,score_twr:state_min=4,score_twr:state=4] slot.armor.chest leather_chestplate 1 0 {display:{color:3754987,Name:"§9Plastron"},ench:[{id:0,lvl:1}],HideFlags:63,Unbreakable:1}
replaceitem entity @a[tag=twr,team=twr:blue,score_twr:state_min=4,score_twr:state=4] slot.armor.legs leather_leggings 1 0 {display:{color:3754987,Name:"§9Jambières"},ench:[{id:0,lvl:1}],HideFlags:63,Unbreakable:1}
replaceitem entity @a[tag=twr,team=twr:blue,score_twr:state_min=4,score_twr:state=4] slot.armor.feet leather_boots 1 0 {display:{color:3754987,Name:"§9Bottes"},ench:[{id:0,lvl:1}],HideFlags:63,Unbreakable:1}
replaceitem entity @a[tag=twr,team=twr:blue,score_twr:state_min=4,score_twr:state=4] slot.hotbar.0 baked_potato 16 0 {display:{color:3754987,Name:"§9Patates douces"},HideFlags:63}

# Team red
clear @a[tag=twr,team=twr:red,score_twr:state_min=4,score_twr:state=4]
replaceitem entity @a[tag=twr,team=twr:red,score_twr:state_min=4,score_twr:state=4] slot.armor.head leather_helmet 1 0 {display:{color:16728385,Name:"§cCasque"},ench:[{id:0,lvl:1}],HideFlags:63,Unbreakable:1}
replaceitem entity @a[tag=twr,team=twr:red,score_twr:state_min=4,score_twr:state=4] slot.armor.chest leather_chestplate 1 0 {display:{color:16728385,Name:"§cPlastron"},ench:[{id:0,lvl:1}],HideFlags:63,Unbreakable:1}
replaceitem entity @a[tag=twr,team=twr:red,score_twr:state_min=4,score_twr:state=4] slot.armor.legs leather_leggings 1 0 {display:{color:16728385,Name:"§cJambières"},ench:[{id:0,lvl:1}],HideFlags:63,Unbreakable:1}
replaceitem entity @a[tag=twr,team=twr:red,score_twr:state_min=4,score_twr:state=4] slot.armor.feet leather_boots 1 0 {display:{color:16728385,Name:"§cBottes"},ench:[{id:0,lvl:1}],HideFlags:63,Unbreakable:1}
replaceitem entity @a[tag=twr,team=twr:red,score_twr:state_min=4,score_twr:state=4] slot.hotbar.0 baked_potato 16 0 {display:{color:16728385,Name:"§cPatates douces"},HideFlags:63}

# Stade final de jeu
scoreboard players set @a[tag=twr,score_twr:state_min=4,score_twr:state=4,x=-10000,y=70,z=-10000,r=300] twr:state 5

execute @e[type=armor_stand,name=twr:joueurs,score_twr_min=10] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=twr:timer,score_twr_min=0,score_twr=0] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=twr:start] twr 3
execute @e[type=armor_stand,name=twr:joueurs,score_twr_min=10] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=twr:timer,score_twr_min=0,score_twr=0] ~ ~ ~ tellraw @a[tag=twr] ["§3Bonne chance à tous !"]
execute @e[type=armor_stand,name=twr:joueurs,score_twr_min=10] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=twr:timer,score_twr_min=1,score_twr=1] ~ ~ ~ tellraw @a[tag=twr] ["§7La partie commence dans §6",{"score":{"name":"@e[type=armor_stand,name=twr:timer]","objective":"twr"}}," §7seconde !"]
execute @e[type=armor_stand,name=twr:joueurs,score_twr_min=10] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=twr:timer,score_twr_min=2,score_twr=5] ~ ~ ~ tellraw @a[tag=twr] ["§7La partie commence dans §6",{"score":{"name":"@e[type=armor_stand,name=twr:timer]","objective":"twr"}}," §7secondes !"]
execute @e[type=armor_stand,name=twr:joueurs,score_twr_min=10] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=twr:timer,score_twr_min=10,score_twr=10] ~ ~ ~ tellraw @a[tag=twr] ["§7La partie commence dans §6",{"score":{"name":"@e[type=armor_stand,name=twr:timer]","objective":"twr"}}," §7secondes !"]
execute @e[type=armor_stand,name=twr:joueurs,score_twr_min=10] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ scoreboard players remove @e[type=armor_stand,name=twr:timer,score_twr_min=0] twr 1

execute @e[type=armor_stand,name=twr:joueurs,score_twr=9] ~ ~ ~ execute @e[type=armor_stand,name=twr:start,score_twr_min=1,score_twr=2] ~ ~ ~ title @a[tag=twr] actionbar ["§8Lancement interrompue. Reprise lorsque le nombre de joueurs minimum sera atteinte"]
execute @e[type=armor_stand,name=twr:joueurs,score_twr=9] ~ ~ ~ execute @e[type=armor_stand,name=twr:start,score_twr_min=1,score_twr=2] ~ ~ ~ scoreboard players set @a[tag=twr] twr:state 2
execute @e[type=armor_stand,name=twr:joueurs,score_twr=9] ~ ~ ~ execute @e[type=armor_stand,name=twr:start,score_twr_min=1,score_twr=2] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=twr:timer] twr -1
execute @e[type=armor_stand,name=twr:joueurs,score_twr=9] ~ ~ ~ execute @e[type=armor_stand,name=twr:start,score_twr_min=1,score_twr=2] ~ ~ ~ scoreboard players set @s twr 0

# Score point blue marque base rouge
execute @a[team=twr:blue,tag=twr,x=-9983,y=78,z=-9829,r=2] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=twr:blue] twr 1
execute @a[team=twr:blue,tag=twr,x=-9983,y=78,z=-9829,r=2] ~ ~ ~ title @a[tag=twr] actionbar ["§7Un point marqué par §9",{"selector":"@a[team=twr:blue,tag=twr,x=-9962,y=77,z=-9973,dx=2,dy=1,dz=2,c=1]"},"§7!"]
execute @a[team=twr:blue,tag=twr,x=-9983,y=78,z=-9829,r=2] ~ ~ ~ title @a[tag=twr] title [{"selector":"@s"}]
execute @a[team=twr:blue,tag=twr,x=-9983,y=78,z=-9829,r=2] ~ ~ ~ title @a[tag=twr] subtitle ["§7a marqué un point !"]
execute @a[team=twr:blue,tag=twr,x=-9983,y=78,z=-9829,r=2] ~ ~ ~ title @s actionbar ["§7Bonus Point : §e+5 coins §7| §2+3 xp"]
execute @a[team=twr:blue,tag=twr,x=-9983,y=78,z=-9829,r=2] ~ ~ ~ scoreboard players add @s twr:coins 5
execute @a[team=twr:blue,tag=twr,x=-9983,y=78,z=-9829,r=2] ~ ~ ~ scoreboard players add @s twr:lvl 3
execute @a[team=twr:blue,tag=twr,x=-9983,y=78,z=-9829,r=2] ~ ~ ~ tp @s -9983 70 -9997 0 0
execute @a[team=twr:red,tag=twr,x=-9983,y=78,z=-9829,r=2] ~ ~ ~ effect @s wither 2 2 true
execute @a[team=twr:red,tag=twr,x=-9983,y=78,z=-9829,r=2] ~ ~ ~ effect @s blindness 2 2 true

# Score point rouge marque base bleue
execute @a[team=twr:red,tag=twr,x=-9983,y=78,z=-9997,r=2] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=twr:red] twr 1
execute @a[team=twr:red,tag=twr,x=-9983,y=78,z=-9997,r=2] ~ ~ ~ title @a[tag=twr] actionbar ["§7Un point marqué par §9",{"selector":"@a[team=twr:red,tag=twr,x=-10128,y=77,z=-9971,dx=-2,dy=1,dz=-2,c=1]"},"§7!"]
execute @a[team=twr:red,tag=twr,x=-9983,y=78,z=-9997,r=2] ~ ~ ~ title @a[tag=twr] title [{"selector":"@s"}]
execute @a[team=twr:red,tag=twr,x=-9983,y=78,z=-9997,r=2] ~ ~ ~ title @a[tag=twr] subtitle ["§7a marqué un point !"]
execute @a[team=twr:red,tag=twr,x=-9983,y=78,z=-9997,r=2] ~ ~ ~ title @s actionbar ["§7Bonus Point : §e+5 coins §7| §2+3 xp"]
execute @a[team=twr:red,tag=twr,x=-9983,y=78,z=-9997,r=2] ~ ~ ~ scoreboard players add @s twr:coins 5
execute @a[team=twr:red,tag=twr,x=-9983,y=78,z=-9997,r=2] ~ ~ ~ scoreboard players add @s twr:lvl 3
execute @a[team=twr:red,tag=twr,x=-9983,y=78,z=-9997,r=2] ~ ~ ~ tp @s -9983 70 -9829 180 0
execute @a[team=twr:red,tag=twr,x=-9983,y=78,z=-9997,r=2] ~ ~ ~ effect @s wither 2 2 true
execute @a[team=twr:red,tag=twr,x=-9983,y=78,z=-9997,r=2] ~ ~ ~ effect @s blindness 2 2 true

# Item Middle (Fer/Lapis)
scoreboard players tag @e[type=armor_stand,tag=twr:spFD] remove twr:toSpawn
execute @e[type=armor_stand,name=timer3s,score_core:stats_min=59,score_core:stats=59] ~ ~ ~ scoreboard players tag @r[type=armor_stand,tag=twr:spFD] add twr:toSpawn
execute @e[type=armor_stand,name=timer3s,score_core:stats_min=59,score_core:stats=59] ~ ~ ~ execute @e[type=armor_stand,name=twr:fer,tag=twr:toSpawn] ~ ~ ~ summon item -9997 83 -9913 {CustomName:"§7Fer",CustomNameVisible:1,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:"§7Fer"}}}}
execute @e[type=armor_stand,name=timer3s,score_core:stats_min=59,score_core:stats=59] ~ ~ ~ execute @e[type=armor_stand,name=twr:diams,tag=twr:toSpawn] ~ ~ ~ summon item -9997 83 -9913 {CustomName:"§bDiamant",CustomNameVisible:1,Item:{id:"minecraft:diamond",Count:1b,tag:{display:{Name:"§bDiamant"}}}}

scoreboard players tag @e[type=armor_stand,tag=twr:spLX] remove twr:toSpawn
execute @e[type=armor_stand,name=timer3s,score_core:stats_min=59,score_core:stats=59] ~ ~ ~ scoreboard players tag @r[type=armor_stand,tag=twr:spLX] add twr:toSpawn
execute @e[type=armor_stand,name=timer3s,score_core:stats_min=59,score_core:stats=59] ~ ~ ~ execute @e[type=armor_stand,name=twr:lapis,tag=twr:toSpawn] ~ ~ ~ summon item -9969 83 -9913 {CustomName:"§9Lapis",CustomNameVisible:1,Item:{id:"minecraft:dye",Damage:4s,Count:1b}}
execute @e[type=armor_stand,name=timer3s,score_core:stats_min=59,score_core:stats=59] ~ ~ ~ execute @e[type=armor_stand,name=twr:xp,tag=twr:toSpawn] ~ ~ ~ summon item -9969 83 -9913 {CustomName:"§2XP",CustomNameVisible:1,Item:{id:"minecraft:experience_bottle",Damage:0s,Count:1b}}

execute @e[type=armor_stand,name=timer3s,score_core:stats_min=50,score_core:stats=50] ~ ~ ~ execute @e[type=armor_stand,name=twr:ferdiams] ~ ~ ~ kill @e[type=item,r=5]
execute @e[type=armor_stand,name=timer3s,score_core:stats_min=50,score_core:stats=50] ~ ~ ~ execute @e[type=armor_stand,name=twr:lapisxp] ~ ~ ~ kill @e[type=item,r=5]

# Kills
title @a[tag=twr,score_twr:kills_min=1] actionbar ["§7Bonus Kill : §e+2 coins §7| §2+1 xp"]
scoreboard players add @a[tag=twr,score_twr:kills_min=1] twr:coins 2
scoreboard players add @a[tag=twr,score_twr:kills_min=1] twr:lvl 1
execute @a[tag=twr,score_twr:kills_min=1] ~ ~ ~ tellraw @a[tag=twr] [{"text":"TOWER > ","color":"dark_red"},{"selector":"@a[score_twr:kills_min=1,score_twr:kills=1,tag=twr]"},{"text":" ⚔ ","color":"white"},{"selector":"@a[score_twr:dead_min=1,score_twr:dead=1,tag=twr]"}]

scoreboard players add @a[tag=twr,score_twr:kills_min=1] stats:twrKills 1
scoreboard players add @a[tag=twr,score_twr:kills_min=1] twr:gameKills 1
scoreboard players remove @a[tag=twr,score_twr:kills_min=1] twr:kills 1
scoreboard players set * twr:dead 0

# Death by fall
execute @a[tag=twr] ~ ~ ~ detect ~ ~-29 ~ barrier 0 scoreboard players tag @s add twr:respawn
execute @a[tag=twr] ~ ~ ~ detect ~ ~-28 ~ barrier 0 scoreboard players tag @s add twr:respawn
execute @a[tag=twr] ~ ~ ~ detect ~ ~-27 ~ barrier 0 scoreboard players tag @s add twr:respawn
execute @a[tag=twr] ~ ~ ~ detect ~ ~-26 ~ barrier 0 scoreboard players tag @s add twr:respawn
execute @a[tag=twr] ~ ~ ~ detect ~ ~-1 ~ barrier 0 scoreboard players tag @s add twr:respawn

effect @a[tag=twr,tag=twr:respawn] clear
effect @a[tag=twr,tag=twr:respawn] resistance 3 255 true
effect @a[tag=twr,tag=twr:respawn] saturation 3 255 true
effect @a[tag=twr,tag=twr:respawn] regeneration 3 255 true
scoreboard players set @a[tag=twr,tag=twr:respawn] twr:state 4
execute @a[tag=twr,tag=twr:respawn] ~ ~ ~ tellraw @a[tag=twr] ["",{"selector":"@s"}," §7a glissé"]
scoreboard players tag @a[tag=twr,tag=twr:respawn] remove twr:respawn

# PVP 1.8
scoreboard players reset @a[tag=twr] twr:swordchange
scoreboard players set @a[tag=twr] twr:swordchange 1 {Inventory:[{Slot:0b,id:"minecraft:stone_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 2 {Inventory:[{Slot:0b,id:"minecraft:iron_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 3 {Inventory:[{Slot:0b,id:"minecraft:diamond_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 4 {Inventory:[{Slot:1b,id:"minecraft:stone_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 5 {Inventory:[{Slot:1b,id:"minecraft:iron_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 6 {Inventory:[{Slot:1b,id:"minecraft:diamond_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 7 {Inventory:[{Slot:2b,id:"minecraft:stone_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 8 {Inventory:[{Slot:2b,id:"minecraft:iron_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 9 {Inventory:[{Slot:2b,id:"minecraft:diamond_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 10 {Inventory:[{Slot:3b,id:"minecraft:stone_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 11 {Inventory:[{Slot:3b,id:"minecraft:iron_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 12 {Inventory:[{Slot:3b,id:"minecraft:diamond_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 13 {Inventory:[{Slot:4b,id:"minecraft:stone_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 14 {Inventory:[{Slot:4b,id:"minecraft:iron_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 15 {Inventory:[{Slot:4b,id:"minecraft:diamond_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 16 {Inventory:[{Slot:5b,id:"minecraft:stone_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 17 {Inventory:[{Slot:5b,id:"minecraft:iron_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 18 {Inventory:[{Slot:5b,id:"minecraft:diamond_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 19 {Inventory:[{Slot:6b,id:"minecraft:stone_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 20 {Inventory:[{Slot:6b,id:"minecraft:iron_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 21 {Inventory:[{Slot:6b,id:"minecraft:diamond_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 22 {Inventory:[{Slot:7b,id:"minecraft:stone_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 23 {Inventory:[{Slot:7b,id:"minecraft:iron_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 24 {Inventory:[{Slot:7b,id:"minecraft:diamond_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 25 {Inventory:[{Slot:8b,id:"minecraft:stone_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 26 {Inventory:[{Slot:8b,id:"minecraft:iron_sword",Damage:0s}]}
scoreboard players set @a[tag=twr] twr:swordchange 27 {Inventory:[{Slot:8b,id:"minecraft:diamond_sword",Damage:0s}]}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=1,score_twr:swordchange=1] slot.hotbar.0 stone_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§8Epée de pierre",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=2,score_twr:swordchange=2] slot.hotbar.0 iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§fEpée en fer",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=3,score_twr:swordchange=3] slot.hotbar.0 diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§bEpée en diamant",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=4,score_twr:swordchange=4] slot.hotbar.1 stone_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§8Epée de pierre",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=5,score_twr:swordchange=5] slot.hotbar.1 iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§fEpée en fer",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=6,score_twr:swordchange=6] slot.hotbar.1 diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§bEpée en diamant",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=7,score_twr:swordchange=7] slot.hotbar.2 stone_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§8Epée de pierre",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=8,score_twr:swordchange=8] slot.hotbar.2 iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§fEpée en fer",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=9,score_twr:swordchange=9] slot.hotbar.2 diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§bEpée en diamant",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=10,score_twr:swordchange=10] slot.hotbar.3 stone_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§8Epée de pierre",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=11,score_twr:swordchange=12] slot.hotbar.3 iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§fEpée en fer",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=12,score_twr:swordchange=12] slot.hotbar.3 diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§bEpée en diamant",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=13,score_twr:swordchange=13] slot.hotbar.4 stone_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§8Epée de pierre",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=14,score_twr:swordchange=14] slot.hotbar.4 iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§fEpée en fer",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=15,score_twr:swordchange=15] slot.hotbar.4 diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§bEpée en diamant",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=16,score_twr:swordchange=16] slot.hotbar.5 stone_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§8Epée de pierre",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=17,score_twr:swordchange=17] slot.hotbar.5 iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§fEpée en fer",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=18,score_twr:swordchange=18] slot.hotbar.5 diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§bEpée en diamant",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=19,score_twr:swordchange=19] slot.hotbar.6 stone_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§8Epée de pierre",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=20,score_twr:swordchange=20] slot.hotbar.6 iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§fEpée en fer",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=21,score_twr:swordchange=21] slot.hotbar.6 diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§bEpée en diamant",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=22,score_twr:swordchange=22] slot.hotbar.7 stone_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§8Epée de pierre",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=23,score_twr:swordchange=23] slot.hotbar.7 iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§fEpée en fer",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=24,score_twr:swordchange=24] slot.hotbar.7 diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§bEpée en diamant",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=25,score_twr:swordchange=25] slot.hotbar.8 stone_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§8Epée de pierre",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=26,score_twr:swordchange=26] slot.hotbar.8 iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§fEpée en fer",Lore:["§7Accepte le PVP 1.8"]}}
replaceitem entity @a[tag=twr,score_twr:swordchange_min=27,score_twr:swordchange=27] slot.hotbar.8 diamond_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:735775,UUIDMost:53922},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:18,Operation:0,UUIDLeast:799435,UUIDMost:987002}],display:{Name:"§bEpée en diamant",Lore:["§7Accepte le PVP 1.8"]}}

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
function games:twr/reset if @e[type=armor_stand,name=twr:joueurs,score_twr_min=0,score_twr=0]
execute @a[tag=twr,score_twr:state_min=5] ~ ~ ~ function games:twr/reset unless @a[tag=twr,team=twr:red]
execute @a[tag=twr,score_twr:state_min=5] ~ ~ ~ function games:twr/reset unless @a[tag=twr,team=twr:blue]

# Wins normales

  execute @e[type=armor_stand,name=twr:blue,score_twr_min=10] ~ ~ ~ function games:twr/reset if @e[type=armor_stand,name=twr:red,score_twr=9]
  execute @e[type=armor_stand,name=twr:red,score_twr_min=10] ~ ~ ~ function games:twr/reset if @e[type=armor_stand,name=twr:blue,score_twr=9]
  execute @e[type=armor_stand,name=twr:blue,score_twr_min=10] ~ ~ ~ function games:twr/reset if @e[type=armor_stand,name=twr:red,score_twr_min=10]

   # Win bleu
  execute @e[type=armor_stand,name=twr:blue,score_twr_min=10] ~ ~ ~ execute @e[type=armor_stand,name=twr:red,score_twr=9] ~ ~ ~ title @a[tag=twr] title ["§6Victoire §9Bleu"]
  execute @e[type=armor_stand,name=twr:blue,score_twr_min=10] ~ ~ ~ execute @e[type=armor_stand,name=twr:red,score_twr=9] ~ ~ ~ title @a[tag=twr] subtitle ["§9Bleu ",{"score":{"name":"@e[type=armor_stand,name=twr:blue]","objective":"twr"},"color":"blue"}," §7| ",{"score":{"name":"@e[type=armor_stand,name=twr:red]","objective":"twr"},"color":"red"}," §cRouge"]

  # Win rouge
  execute @e[type=armor_stand,name=twr:red,score_twr_min=10] ~ ~ ~ execute @e[type=armor_stand,name=twr:blue,score_twr=9] ~ ~ ~ title @a[tag=twr] title ["§6Victoire §cRouge"]
  execute @e[type=armor_stand,name=twr:red,score_twr_min=10] ~ ~ ~ execute @e[type=armor_stand,name=twr:blue,score_twr=9] ~ ~ ~ title @a[tag=twr] subtitle ["§cRouge ",{"score":{"name":"@e[type=armor_stand,name=twr:red]","objective":"twr"},"color":"red"}," §7| ",{"score":{"name":"@e[type=armor_stand,name=twr:blue]","objective":"twr"},"color":"blue"}," §9Bleu"]

  # Win égalité
  execute @e[type=armor_stand,name=twr:red,score_twr_min=10] ~ ~ ~ execute @e[type=armor_stand,name=twr:blue,score_twr_min=10] ~ ~ ~ title @a[tag=twr] title ["§7Egalité"]
  execute @e[type=armor_stand,name=twr:red,score_twr_min=10] ~ ~ ~ execute @e[type=armor_stand,name=twr:blue,score_twr_min=10] ~ ~ ~ title @a[tag=twr] subtitle ["§cRouge ",{"score":{"name":"@e[type=armor_stand,name=twr:red]","objective":"twr"},"color":"red"}," §7| ",{"score":{"name":"@e[type=armor_stand,name=twr:blue]","objective":"twr"},"color":"blue"}," §9Bleu"]
