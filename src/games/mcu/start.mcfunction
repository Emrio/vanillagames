# Start.mcfunction
# Execute les commandes au lancement de la partie

scoreboard players reset * mcu:kills
scoreboard players reset * mcu:coins
scoreboard players reset * mcu:lvl
#scoreboard players reset * mcu:return
scoreboard players reset * mcu:gameKills
scoreboard players reset * mcu:emeralds
scoreboard players set @a[tag=mcu] mcu:gameKills 0
scoreboard players set @e[type=armor_stand,name=mcu:min] mcu 10
scoreboard players set @e[type=armor_stand,name=mcu:sec] mcu 1
scoreboard players set @e[type=armor_stand,name=mcu:timer] mcu 10

scoreboard players set @a[tag=mcu] mcu:state 2
clear @a[tag=mcu]
effect @a[tag=mcu] clear
effect @a[tag=mcu] weakness 12 255 true
effect @a[tag=mcu] resistance 12 255 true
effect @a[tag=mcu] regeneration 12 255 true
scoreboard players set @a[tag=mcu] mcu:emeralds 0
#gamemode 0 @a[tag=mcu]



execute @a[tag=mcu] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"mcu:spawner",Invisible:1b,NoGravity:0b,CustomNameVisible:0b}
spreadplayers 10000 0 10 32 false @e[type=armor_stand,name=mcu:spawner]
tp @e[type=armor_stand,name=mcu:spawner] ~ 55 ~
execute @e[type=armor_stand,name=mcu:spawner] ~ ~ ~ fill ~ ~ ~ ~ ~1 ~ air

tellraw @a[tag=mcu] ["§7Génération de la map Minecube..."]
fill 10032 2 -35 10028 25 -35 air
fill 10032 2 -35 10031 3 -35 redstone_block
fill 10032 2 -35 10030 7 -35 redstone_block
fill 10029 2 -35 10028 11 -35 redstone_block
fill 10032 25 -35 10031 25 -35 redstone_block

fill 10032 2 34 10028 25 34 air
fill 10032 2 34 10031 3 34 redstone_block
fill 10032 2 34 10030 7 34 redstone_block
fill 10029 2 34 10028 11 34 redstone_block
fill 10032 25 34 10031 25 34 redstone_block

fill 10033 1 -33 9968 66 -33 bedrock
fill 9968 66 -33 9968 1 32 bedrock
fill 9968 1 -33 10033 1 32 bedrock
fill 10033 66 -33 9968 66 32 bedrock
fill 9968 66 32 10033 1 32 bedrock
fill 10033 66 32 10033 1 -32 bedrock
tellraw @a[tag=mcu] ["§7Génération terminée..."]
