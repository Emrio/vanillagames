# Lobby.mcfunction
# Execute toutes les commandes nécessaire au spawn


# Particules au lobby secondaire

	particle snowshovel 100 73 100 10 10 10 0 20 force

# Beacon

	execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=spawn:beacon] core:stats 1
	scoreboard players set @e[type=armor_stand,name=spawn:beacon,score_core:stats_min=15] core:stats 1

	execute @e[type=armor_stand,name=spawn:beacon,score_core:stats_min=0,score_core:stats=0] ~ ~ ~ setblock 100 72 100 stained_glass 0
	execute @e[type=armor_stand,name=spawn:beacon,score_core:stats_min=1,score_core:stats=1] ~ ~ ~ setblock 100 72 100 stained_glass 1
	execute @e[type=armor_stand,name=spawn:beacon,score_core:stats_min=2,score_core:stats=2] ~ ~ ~ setblock 100 72 100 stained_glass 2
	execute @e[type=armor_stand,name=spawn:beacon,score_core:stats_min=3,score_core:stats=3] ~ ~ ~ setblock 100 72 100 stained_glass 3
	execute @e[type=armor_stand,name=spawn:beacon,score_core:stats_min=4,score_core:stats=4] ~ ~ ~ setblock 100 72 100 stained_glass 4
	execute @e[type=armor_stand,name=spawn:beacon,score_core:stats_min=5,score_core:stats=5] ~ ~ ~ setblock 100 72 100 stained_glass 5
	execute @e[type=armor_stand,name=spawn:beacon,score_core:stats_min=6,score_core:stats=6] ~ ~ ~ setblock 100 72 100 stained_glass 6
	execute @e[type=armor_stand,name=spawn:beacon,score_core:stats_min=7,score_core:stats=7] ~ ~ ~ setblock 100 72 100 stained_glass 7
	execute @e[type=armor_stand,name=spawn:beacon,score_core:stats_min=8,score_core:stats=8] ~ ~ ~ setblock 100 72 100 stained_glass 8
	execute @e[type=armor_stand,name=spawn:beacon,score_core:stats_min=9,score_core:stats=9] ~ ~ ~ setblock 100 72 100 stained_glass 9
	execute @e[type=armor_stand,name=spawn:beacon,score_core:stats_min=10,score_core:stats=10] ~ ~ ~ setblock 100 72 100 stained_glass 10
	execute @e[type=armor_stand,name=spawn:beacon,score_core:stats_min=11,score_core:stats=11] ~ ~ ~ setblock 100 72 100 stained_glass 11
	execute @e[type=armor_stand,name=spawn:beacon,score_core:stats_min=12,score_core:stats=12] ~ ~ ~ setblock 100 72 100 stained_glass 12
	execute @e[type=armor_stand,name=spawn:beacon,score_core:stats_min=13,score_core:stats=13] ~ ~ ~ setblock 100 72 100 stained_glass 13
	execute @e[type=armor_stand,name=spawn:beacon,score_core:stats_min=14,score_core:stats=14] ~ ~ ~ setblock 100 72 100 stained_glass 14
	execute @e[type=armor_stand,name=spawn:beacon,score_core:stats_min=15,score_core:stats=15] ~ ~ ~ setblock 100 72 100 stained_glass 15

# Broadcasts

	scoreboard players set @e[type=armor_stand,name=spawn:msg,score_spawn_min=5] spawn 0
	execute @e[type=armor_stand,name=timer30s,score_core:stats_min=599] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=spawn:msg] spawn 1

	# Actionbar

		execute @e[type=armor_stand,name=spawn:msg,score_spawn_min=1,score_spawn=1] ~ ~ ~ title @a[tag=spawn,tag=!nobc] actionbar ["§7Suivez nous sur Twitter: §b@MCVanillaGames §7!"]
		execute @e[type=armor_stand,name=spawn:msg,score_spawn_min=2,score_spawn=2] ~ ~ ~ title @a[tag=spawn,tag=!nobc] actionbar ["§7Envie de plus de contenu ? Rendez-vous sur §6store.vanimc.games §7!"]
		execute @e[type=armor_stand,name=spawn:msg,score_spawn_min=3,score_spawn=3] ~ ~ ~ title @a[tag=spawn,tag=!nobc] actionbar ["§7Bienvenue sur §3Vanilla Games §7!"]
		execute @e[type=armor_stand,name=spawn:msg,score_spawn_min=4,score_spawn=4] ~ ~ ~ title @a[tag=spawn,tag=!nobc] actionbar ["§7Notre site web: §9https://vanimc.games §7!"]

# No Damage lobby principal

	scoreboard players set @a[x=-9901,y=73,z=14,r=500] core:damage 1 {OnGround:0b}
	scoreboard players set @a[x=-9901,y=73,z=14,r=500] core:damage 0 {OnGround:1b}
	effect @a[score_core:damage_min=1] jump_boost 1 255 true

# Kills

	kill @e[x=100,y=73,z=100,r=100,type=ender_pearl]
	kill @e[x=100,y=73,z=100,r=100,type=item]
	kill @e[x=100,y=73,z=100,r=100,name=unknown]

	kill @e[x=-9901,y=73,z=14,r=500,type=ender_pearl]
	kill @e[x=-9901,y=73,z=14,r=500,type=item]
	kill @e[x=-9901,y=73,z=14,r=500,name=unknown]


# Tag spawn utilisé dans tout les lobbys

	scoreboard players tag @a remove spawn
	scoreboard players tag @a remove lobby1
	scoreboard players tag @a remove lobby2
	scoreboard players tag @a remove lobby3

	# Lobby principale

		scoreboard players tag @a[x=-9901,y=73,z=14,r=500] add lobby1
		scoreboard players tag @a[x=-9901,y=73,z=14,r=500] add spawn

	# Lobby secondaire

		scoreboard players tag @a[x=100,y=73,z=100,r=100] add lobby2
		scoreboard players tag @a[x=100,y=73,z=100,r=100] add spawn

	# Lobby incognito

		#scoreboard players tag @a[x=X,y=Y,z=Z,r=100] add lobby3
		#scoreboard players tag @a[x=X,y=Y,z=Z,r=100] add spawn
