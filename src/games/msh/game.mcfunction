# Game.mcfunction
# Execute les commandes a exécuter en chaîne lors de la partie

#gamemode survival @a[tag=msh,score_msh:state_min=2,tag=!dev]


execute @e[type=armor_stand,name=msh:joueurs,score_msh_min=4,score_msh=4] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=msh:timer,score_msh_min=0,score_msh=0] ~ ~ ~ scoreboard players set @a[score_msh:state_min=2,score_msh:state=2,tag=msh] msh:state 3
scoreboard teams join msh @a[tag=msh,score_msh:state_min=3,score_msh:state=3]

# Gears
clear @a[tag=msh,team=msh,score_msh:state_min=3,score_msh:state=3]
replaceitem entity @a[tag=msh,team=msh,score_msh:state_min=3,score_msh:state=3] slot.hotbar.4 bow 1 0 {display:{Name:"§eArc"},ench:[{id:48,lvl:100},{id:51,lvl:1}],HideFlags:63,Unbreakable:1}
replaceitem entity @a[tag=msh,team=msh,score_msh:state_min=3,score_msh:state=3] slot.inventory.0 arrow 1 0

# Teleports

execute @e[type=armor_stand,name=msh:joueurs,score_msh_min=4,score_msh=4] ~ ~ ~ tp @r[tag=msh,score_msh:state_min=3,score_msh:state=3] @e[name=msh:spawn1,type=armor_stand,tag=!msh:taken]
execute @e[type=armor_stand,name=msh:joueurs,score_msh_min=4,score_msh=4] ~ ~ ~ tp @r[tag=msh,score_msh:state_min=3,score_msh:state=3] @e[name=msh:spawn2,type=armor_stand,tag=!msh:taken]
execute @e[type=armor_stand,name=msh:joueurs,score_msh_min=4,score_msh=4] ~ ~ ~ tp @r[tag=msh,score_msh:state_min=3,score_msh:state=3] @e[name=msh:spawn3,type=armor_stand,tag=!msh:taken]
execute @e[type=armor_stand,name=msh:joueurs,score_msh_min=4,score_msh=4] ~ ~ ~ tp @r[tag=msh,score_msh:state_min=3,score_msh:state=3] @e[name=msh:spawn4,type=armor_stand,tag=!msh:taken]
execute @e[type=armor_stand,name=msh:joueurs,score_msh_min=4,score_msh=4] ~ ~ ~ execute @a[tag=msh,score_msh:state_min=3,score_msh:state=3] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=msh:statgame] msh 1

# Stade final de jeu
execute @e[type=armor_stand,name=msh:spawn1] ~ ~ ~ scoreboard players set @a[tag=msh,score_msh:state_min=3,score_msh:state=3,r=2] msh:state 5
execute @e[type=armor_stand,name=msh:spawn2] ~ ~ ~ scoreboard players set @a[tag=msh,score_msh:state_min=3,score_msh:state=3,r=2] msh:state 5
execute @e[type=armor_stand,name=msh:spawn3] ~ ~ ~ scoreboard players set @a[tag=msh,score_msh:state_min=3,score_msh:state=3,r=2] msh:state 5
execute @e[type=armor_stand,name=msh:spawn4] ~ ~ ~ scoreboard players set @a[tag=msh,score_msh:state_min=3,score_msh:state=3,r=2] msh:state 5
execute @e[type=armor_stand,name=msh:spawn1] ~ ~ ~ execute @a[r=2] ~ ~ ~ scoreboard players tag @e[type=armor_stand,name=msh:spawn1] add msh:taken
execute @e[type=armor_stand,name=msh:spawn2] ~ ~ ~ execute @a[r=2] ~ ~ ~ scoreboard players tag @e[type=armor_stand,name=msh:spawn2] add msh:taken
execute @e[type=armor_stand,name=msh:spawn3] ~ ~ ~ execute @a[r=2] ~ ~ ~ scoreboard players tag @e[type=armor_stand,name=msh:spawn3] add msh:taken
execute @e[type=armor_stand,name=msh:spawn4] ~ ~ ~ execute @a[r=2] ~ ~ ~ scoreboard players tag @e[type=armor_stand,name=msh:spawn4] add msh:taken
gamemode adventure @a[tag=msh,score_msh:state_min=5,score_msh:state=5]
scoreboard players set @a[tag=msh,score_msh:state_min=5,score_msh:state=5] msh:state 6


execute @e[type=armor_stand,name=msh:joueurs,score_msh_min=4,score_msh=4] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=msh:timer,score_msh_min=0,score_msh=0] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=msh:start] msh 3
execute @e[type=armor_stand,name=msh:joueurs,score_msh_min=4,score_msh=4] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=msh:timer,score_msh_min=0,score_msh=0] ~ ~ ~ tellraw @a[tag=msh] ["§3Bonne chance à tous !"]
execute @e[type=armor_stand,name=msh:joueurs,score_msh_min=4,score_msh=4] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=msh:timer,score_msh_min=0,score_msh=0] ~ ~ ~ scoreboard players set @e[name=msh:manche] msh 0
execute @e[type=armor_stand,name=msh:joueurs,score_msh_min=4,score_msh=4] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=msh:timer,score_msh_min=1,score_msh=1] ~ ~ ~ tellraw @a[tag=msh] ["§7La partie commence dans §6",{"score":{"name":"@e[type=armor_stand,name=msh:timer]","objective":"msh"}}," §7seconde !"]
execute @e[type=armor_stand,name=msh:joueurs,score_msh_min=4,score_msh=4] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=msh:timer,score_msh_min=2,score_msh=5] ~ ~ ~ tellraw @a[tag=msh] ["§7La partie commence dans §6",{"score":{"name":"@e[type=armor_stand,name=msh:timer]","objective":"msh"}}," §7secondes !"]
execute @e[type=armor_stand,name=msh:joueurs,score_msh_min=4,score_msh=4] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ execute @e[type=armor_stand,name=msh:timer,score_msh_min=10,score_msh=10] ~ ~ ~ tellraw @a[tag=msh] ["§7La partie commence dans §6",{"score":{"name":"@e[type=armor_stand,name=msh:timer]","objective":"msh"}}," §7secondes !"]
execute @e[type=armor_stand,name=msh:joueurs,score_msh_min=4,score_msh=4] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ scoreboard players remove @e[type=armor_stand,name=msh:timer,score_msh_min=0] msh 1

execute @e[type=armor_stand,name=msh:joueurs,score_msh_min=3,score_msh=3] ~ ~ ~ execute @e[type=armor_stand,name=msh:start,score_msh_min=1,score_msh=2] ~ ~ ~ title @a[tag=msh] actionbar ["§8Lancement interrompue. Reprise lorsque le nombre de joueurs minimum sera atteinte"]
execute @e[type=armor_stand,name=msh:joueurs,score_msh_min=3,score_msh=3] ~ ~ ~ execute @e[type=armor_stand,name=msh:start,score_msh_min=1,score_msh=2] ~ ~ ~ scoreboard players set @a[tag=msh] msh:state 2
execute @e[type=armor_stand,name=msh:joueurs,score_msh_min=3,score_msh=3] ~ ~ ~ execute @e[type=armor_stand,name=msh:start,score_msh_min=1,score_msh=2] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=msh:timer] msh -1
execute @e[type=armor_stand,name=msh:joueurs,score_msh_min=3,score_msh=3] ~ ~ ~ execute @e[type=armor_stand,name=msh:start,score_msh_min=1,score_msh=2] ~ ~ ~ scoreboard players set @s msh 0

# Mobs summon / death
# Timer
execute @e[type=armor_stand,name=msh:min,score_msh_min=1,score_msh=1] ~ ~ ~ execute @e[type=armor_stand,name=msh:sec,score_msh_min=0,score_msh=0] ~ ~ ~ execute @e[type=armor_stand,name=msh:manche,score_msh_min=1,score_msh=1] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=msh:manche] msh 2
execute @e[type=armor_stand,name=msh:min,score_msh_min=2,score_msh=2] ~ ~ ~ execute @e[type=armor_stand,name=msh:sec,score_msh_min=0,score_msh=0] ~ ~ ~ execute @e[type=armor_stand,name=msh:manche,score_msh_min=3,score_msh=3] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=msh:manche] msh 4
execute @e[type=armor_stand,name=msh:statgame,score_msh_min=1,score_msh=1] ~ ~ ~ execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19,score_core:stats=19] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=msh:sec] msh 1
execute @e[type=armor_stand,name=msh:statgame,score_msh_min=1,score_msh=1] ~ ~ ~ execute @e[type=armor_stand,name=msh:sec,score_msh_min=60,score_msh=60] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=msh:min] msh 1
execute @e[type=armor_stand,name=msh:statgame,score_msh_min=1,score_msh=1] ~ ~ ~ execute @e[type=armor_stand,name=msh:sec,score_msh_min=60,score_msh=60] ~ ~ ~ scoreboard players set @s msh 0


	# Manche 1
		# Impulsion de changement de manche
		execute @e[type=armor_stand,name=msh:manche,score_msh_min=0,score_msh=0] ~ ~ ~ title @a[tag=msh] title ["§cManche 1"]
		execute @e[type=armor_stand,name=msh:manche,score_msh_min=0,score_msh=0] ~ ~ ~ tellraw @a[tag=msh] ["",{"text":"████████████████████████████████","color":"gold"},{"text":"\n\n                       "},{"text":"Mob Shooter\n\n        ","color":"yellow"},{"text":"Manche:","underlined":true,"color":"aqua"},{"text":" ","color":"yellow"},{"text":"1","color":"gray"},{"text":"\n"},{"text":"        ","color":"yellow"},{"text":"Mobs:","underlined":true,"color":"aqua"},{"text":" ","color":"yellow"},{"text":"- Zombies\n                 - Squelettes","color":"gray"},{"text":"\n       "},{"text":" ","color":"aqua"},{"text":"Vitesse de déplacement:","underlined":true,"color":"aqua"},{"text":" "},{"text":"2 blocs/s","color":"gray"},{"text":"\n\n"},{"text":"████████████████████████████████","color":"gold"}]
		execute @e[type=armor_stand,name=msh:manche,score_msh_min=0,score_msh=0] ~ ~ ~ scoreboard players set @s msh 1

		# Manche en chaîne
		execute @e[type=armor_stand,name=msh:min,score_msh_min=0,score_msh=0] ~ ~ ~ execute @e[type=armor_stand,name=msh:sec,score_msh_min=0,score_msh=60] ~ ~ ~ execute @e[type=armor_stand,name=msh:statgame,score_msh_min=1,score_msh=1] ~ ~ ~ execute @e[type=armor_stand,name=timer5s,score_core:stats_min=99,score_core:stats=99] ~ ~ ~ scoreboard players tag @r[type=armor_stand,tag=msh:choosemob] add msh:getmob
		execute @e[type=armor_stand,name=msh:min,score_msh_min=0,score_msh=0] ~ ~ ~ execute @e[type=armor_stand,name=msh:sec,score_msh_min=0,score_msh=60] ~ ~ ~ execute @e[type=armor_stand,name=timer5s,score_core:stats_min=99,score_core:stats=99] ~ ~ ~ execute @e[type=armor_stand,name=msh:skeleton,tag=msh:getmob] ~ ~ ~ execute @e[type=armor_stand,name=msh:summon] ~ ~ ~ summon skeleton ~ ~ ~ {HandItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],HandDropChances:[0.0F,0.0F]}
		execute @e[type=armor_stand,name=msh:min,score_msh_min=0,score_msh=0] ~ ~ ~ execute @e[type=armor_stand,name=msh:sec,score_msh_min=0,score_msh=60] ~ ~ ~ execute @e[type=armor_stand,name=timer5s,score_core:stats_min=99,score_core:stats=99] ~ ~ ~ execute @e[type=armor_stand,name=msh:zombie,tag=msh:getmob] ~ ~ ~ execute @e[type=armor_stand,name=msh:summon] ~ ~ ~ summon zombie ~ ~ ~ {HandItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],HandDropChances:[0.0F,0.0F]}
		execute @e[type=armor_stand,name=msh:min,score_msh_min=0,score_msh=0] ~ ~ ~ execute @e[type=armor_stand,name=msh:sec,score_msh_min=0,score_msh=60] ~ ~ ~ execute @e[type=armor_stand,name=timer5s,score_core:stats_min=99,score_core:stats=99] ~ ~ ~ execute @e[type=armor_stand,name=msh:statgame,score_msh_min=1,score_msh=1] ~ ~ ~ scoreboard players tag @e[type=armor_stand,tag=msh:getmob] remove msh:getmob
		execute @e[type=armor_stand,name=msh:min,score_msh_min=0,score_msh=0] ~ ~ ~ entitydata @e[type=zombie,x=-1001,y=15,z=48,r=300] {Motion:[0.0,0.0,0.10]}
		execute @e[type=armor_stand,name=msh:min,score_msh_min=0,score_msh=0] ~ ~ ~ entitydata @e[type=skeleton,x=-1001,y=15,z=48,r=300] {Motion:[0.0,0.0,0.10]}

	# Manche 2
		# Impulsion de changement de manche
		execute @e[type=armor_stand,name=msh:manche,score_msh_min=2,score_msh=2] ~ ~ ~ title @a[tag=msh] title ["§cManche 2"]
		execute @e[type=armor_stand,name=msh:manche,score_msh_min=2,score_msh=2] ~ ~ ~ tellraw @a[tag=msh] ["",{"text":"████████████████████████████████","color":"gold"},{"text":"\n\n                       "},{"text":"Mob Shooter\n\n        ","color":"yellow"},{"text":"Manche:","underlined":true,"color":"aqua"},{"text":" ","color":"yellow"},{"text":"1","color":"gray"},{"text":"\n"},{"text":"        ","color":"yellow"},{"text":"Mobs:","underlined":true,"color":"aqua"},{"text":" ","color":"yellow"},{"text":"- Zombies\n                 - Squelettes","color":"gray"},{"text":"\n       "},{"text":" ","color":"aqua"},{"text":"Vitesse de déplacement:","underlined":true,"color":"aqua"},{"text":" "},{"text":"4 blocs/s","color":"gray"},{"text":"\n\n"},{"text":"████████████████████████████████","color":"gold"}]
		execute @e[type=armor_stand,name=msh:manche,score_msh_min=2,score_msh=2] ~ ~ ~ scoreboard players set @s msh 3

		# Manche en chaîne
		execute @e[type=armor_stand,name=msh:min,score_msh_min=1,score_msh=1] ~ ~ ~ execute @e[type=armor_stand,name=msh:sec,score_msh_min=0,score_msh=60] ~ ~ ~ execute @e[type=armor_stand,name=msh:statgame,score_msh_min=1,score_msh=1] ~ ~ ~ execute @e[type=armor_stand,name=timer5s,score_core:stats_min=99,score_core:stats=99] ~ ~ ~ scoreboard players tag @r[type=armor_stand,tag=msh:choosemob] add msh:getmob
		execute @e[type=armor_stand,name=msh:min,score_msh_min=1,score_msh=1] ~ ~ ~ execute @e[type=armor_stand,name=msh:sec,score_msh_min=0,score_msh=60] ~ ~ ~ execute @e[type=armor_stand,name=timer5s,score_core:stats_min=99,score_core:stats=99] ~ ~ ~ execute @e[type=armor_stand,name=msh:skeleton,tag=msh:getmob] ~ ~ ~ execute @e[type=armor_stand,name=msh:summon] ~ ~ ~ summon skeleton ~ ~ ~ {HandItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],HandDropChances:[0.0F,0.0F]}
		execute @e[type=armor_stand,name=msh:min,score_msh_min=1,score_msh=1] ~ ~ ~ execute @e[type=armor_stand,name=msh:sec,score_msh_min=0,score_msh=60] ~ ~ ~ execute @e[type=armor_stand,name=timer5s,score_core:stats_min=99,score_core:stats=99] ~ ~ ~ execute @e[type=armor_stand,name=msh:zombie,tag=msh:getmob] ~ ~ ~ execute @e[type=armor_stand,name=msh:summon] ~ ~ ~ summon zombie ~ ~ ~ {HandItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],HandDropChances:[0.0F,0.0F]}
		execute @e[type=armor_stand,name=msh:min,score_msh_min=1,score_msh=1] ~ ~ ~ execute @e[type=armor_stand,name=msh:sec,score_msh_min=0,score_msh=60] ~ ~ ~ execute @e[type=armor_stand,name=timer5s,score_core:stats_min=99,score_core:stats=99] ~ ~ ~ execute @e[type=armor_stand,name=msh:statgame,score_msh_min=1,score_msh=1] ~ ~ ~ scoreboard players tag @e[type=armor_stand,tag=msh:getmob] remove msh:getmob
		execute @e[name=msh:manche,score_msh_min=3,score_msh=3] ~ ~ ~ entitydata @e[type=zombie,x=-1001,y=15,z=48,r=300] {Motion:[0.0,0.0,0.20]}
		execute @e[name=msh:manche,score_msh_min=3,score_msh=3] ~ ~ ~ entitydata @e[type=skeleton,x=-1001,y=15,z=48,r=300] {Motion:[0.0,0.0,0.20]}

	# Manche 3
		# Impulsion de changement de manche
		execute @e[type=armor_stand,name=msh:manche,score_msh_min=4,score_msh=4] ~ ~ ~ title @a[tag=msh] title ["§cManche 3"]
		execute @e[type=armor_stand,name=msh:manche,score_msh_min=4,score_msh=4] ~ ~ ~ tellraw @a[tag=msh] ["",{"text":"████████████████████████████████","color":"gold"},{"text":"\n\n                       "},{"text":"Mob Shooter\n\n        ","color":"yellow"},{"text":"Manche:","underlined":true,"color":"aqua"},{"text":" ","color":"yellow"},{"text":"1","color":"gray"},{"text":"\n"},{"text":"        ","color":"yellow"},{"text":"Mobs:","underlined":true,"color":"aqua"},{"text":" ","color":"yellow"},{"text":"- Zombies\n                 - Squelettes","color":"gray"},{"text":"\n       "},{"text":" ","color":"aqua"},{"text":"Vitesse de déplacement:","underlined":true,"color":"aqua"},{"text":" "},{"text":"5 blocs/s","color":"gray"},{"text":"\n\n"},{"text":"████████████████████████████████","color":"gold"}]
		execute @e[type=armor_stand,name=msh:manche,score_msh_min=4,score_msh=4] ~ ~ ~ scoreboard players set @s msh 5

		# Manche en chaîne
		execute @e[type=armor_stand,name=msh:min,score_msh_min=2,score_msh=2] ~ ~ ~ execute @e[type=armor_stand,name=msh:sec,score_msh_min=0,score_msh=60] ~ ~ ~ execute @e[type=armor_stand,name=msh:statgame,score_msh_min=1,score_msh=1] ~ ~ ~ execute @e[type=armor_stand,name=timer5s,score_core:stats_min=99,score_core:stats=99] ~ ~ ~ scoreboard players tag @r[type=armor_stand,tag=msh:choosemob] add msh:getmob
		execute @e[type=armor_stand,name=msh:min,score_msh_min=2,score_msh=2] ~ ~ ~ execute @e[type=armor_stand,name=msh:sec,score_msh_min=0,score_msh=60] ~ ~ ~ execute @e[type=armor_stand,name=timer5s,score_core:stats_min=99,score_core:stats=99] ~ ~ ~ execute @e[type=armor_stand,name=msh:skeleton,tag=msh:getmob] ~ ~ ~ execute @e[type=armor_stand,name=msh:summon] ~ ~ ~ summon skeleton ~ ~ ~ {HandItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],HandDropChances:[0.0F,0.0F]}
		execute @e[type=armor_stand,name=msh:min,score_msh_min=2,score_msh=2] ~ ~ ~ execute @e[type=armor_stand,name=msh:sec,score_msh_min=0,score_msh=60] ~ ~ ~ execute @e[type=armor_stand,name=timer5s,score_core:stats_min=99,score_core:stats=99] ~ ~ ~ execute @e[type=armor_stand,name=msh:zombie,tag=msh:getmob] ~ ~ ~ execute @e[type=armor_stand,name=msh:summon] ~ ~ ~ summon zombie ~ ~ ~ {HandItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],HandDropChances:[0.0F,0.0F]}
		execute @e[type=armor_stand,name=msh:min,score_msh_min=2,score_msh=2] ~ ~ ~ execute @e[type=armor_stand,name=msh:sec,score_msh_min=0,score_msh=60] ~ ~ ~ execute @e[type=armor_stand,name=timer5s,score_core:stats_min=99,score_core:stats=99] ~ ~ ~ execute @e[type=armor_stand,name=msh:statgame,score_msh_min=1,score_msh=1] ~ ~ ~ scoreboard players tag @e[type=armor_stand,tag=msh:getmob] remove msh:getmob
		execute @e[name=msh:manche,score_msh_min=5,score_msh=5] ~ ~ ~ entitydata @e[type=zombie,x=-1001,y=15,z=48,r=300] {Motion:[0.0,0.0,0.25]}
		execute @e[name=msh:manche,score_msh_min=5,score_msh=5] ~ ~ ~ entitydata @e[type=skeleton,x=-1001,y=15,z=48,r=300] {Motion:[0.0,0.0,0.25]}

	# Kill selon l'armorstand msh:death
	execute @e[type=armor_stand,name=msh:death] ~ ~ ~ kill @e[type=zombie,r=1]
	execute @e[type=armor_stand,name=msh:death] ~ ~ ~ kill @e[type=skeleton,r=1]

# End game
# Win normales
execute @e[name=msh:statgame,score_msh_min=1,score_msh=1] ~ ~ ~ execute @e[name=msh:min,score_msh_min=3,score_msh=3] ~ ~ ~ execute @e[name=msh:sec,score_msh_min=0,score_msh=0] ~ ~ ~ function games:msh/reset

# Win Anormalles
execute @e[name=msh:statgame,score_msh_min=1,score_msh=1] ~ ~ ~ execute @e[name=msh:joueurs,score_msh_min=0,score_msh=1] ~ ~ ~ function games:msh/reset