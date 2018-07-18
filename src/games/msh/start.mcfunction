# Start.mcfunction
# Execute les commandes au lancement de la partie

scoreboard players reset * msh:coins
scoreboard players reset * msh:lvl
scoreboard players set @a[tag=msh] msh:coins 0
scoreboard players set @a[tag=msh] msh:lvl 0
scoreboard players reset * msh:killEntity
scoreboard players set @a[tag=msh] msh:killEntity 0
scoreboard players set @e[type=armor_stand,name=msh:timer] msh 10
scoreboard players set @e[type=armor_stand,name=msh:sec] msh 0
scoreboard players set @e[type=armor_stand,name=msh:min] msh 0
scoreboard players set @e[type=armor_stand,name=msh:statgame] msh 0
scoreboard players tag @e[tag=msh:taken] remove msh:taken

scoreboard players set @a[tag=msh] msh:state 2
clear @a[tag=msh]
effect @a[tag=msh] clear
effect @a[tag=msh] night_vision 25000 255 true