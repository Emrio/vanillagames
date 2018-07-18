# Start.mcfunction
# Execute les commandes au lancement de la partie


scoreboard players reset * twr:kills
scoreboard players reset * twr:coins
scoreboard players reset * twr:lvl
scoreboard players reset * twr:return
scoreboard players reset * twr:gameKills
scoreboard players set @a[tag=twr] twr:gameKills 0

scoreboard players set @e[type=armor_stand,name=twr:timer] twr 10

scoreboard players set @a[tag=twr] twr:state 3
scoreboard players tag @a[tag=twr] add rejoin
clear @a[tag=twr]
effect @a[tag=twr] clear
effect @a[tag=twr] weakness 12 255 true
effect @a[tag=twr] resistance 12 255 true
effect @a[tag=twr] regeneration 12 255 true
gamemode 0 @a[tag=twr]
