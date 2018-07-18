# Action.mcfunction
# Toutes les actions exécutées dans le menu (achats, navigation, ...)


# Events listeners

	# 0

		scoreboard players set @a[tag=spawn,score_core:menu_min=0,score_core:menu=0,score_menu:compass_min=1] core:menu 1

		execute @a[tag=spawn,score_core:menu_min=0,score_core:menu=0,score_menu:clock_min=1] ~ ~ ~ function vg:rewards/daily

		tellraw @a[tag=spawn,score_core:menu_min=0,score_core:menu=0,score_menu:bed_min=1] ["§7Téléportation au spawn..."]
		tp @a[tag=spawn,score_core:menu_min=0,score_core:menu=0,score_menu:bed_min=1] -9901 73 14 0 0

	# 1

		scoreboard players set @a[tag=spawn,score_core:menu_min=1,score_core:menu=1,score_menu:arrow_min=1] core:menu 0 {SelectedItemSlot:0}

		tellraw @a[tag=spawn,score_core:menu_min=1,score_core:menu=1,score_menu:feather_min=1] ["§7Téléportation au jump..."]
		tp @a[tag=spawn,score_core:menu_min=1,score_core:menu=1,score_menu:feather_min=1] -9928 71 41 45 0

		scoreboard players set @a[tag=spawn,score_core:menu_min=1,score_core:menu=1,score_menu:pumpkin_min=1] core:menu 11

		scoreboard players set @a[tag=spawn,score_core:menu_min=1,score_core:menu=1,score_menu:netherstar_min=1] core:menu 16

		scoreboard players set @a[tag=spawn,score_core:menu_min=1,score_core:menu=1,score_menu:nametag_min=1] core:menu 15

		scoreboard players set @a[tag=spawn,score_core:menu_min=1,score_core:menu=1,score_menu:anvil_min=1] core:menu 13

	# 11

		scoreboard players set @a[tag=spawn,score_core:menu_min=11,score_core:menu=11,score_menu:arrow_min=1] core:menu 1 {SelectedItemSlot:0}

		execute @e[type=armor_stand,name=twr:start,score_twr_min=0,score_twr=0] ~ ~ ~ execute @a[tag=spawn,score_core:menu_min=11,score_core:menu=11,score_menu:wool_min=1] ~ ~ ~ trigger core:gogames set 1
		execute @e[type=armor_stand,name=twr:start,score_twr_min=1] ~ ~ ~ execute @a[tag=spawn,score_core:menu_min=11,score_core:menu=11,score_menu:wool_min=1] ~ ~ ~ tellraw @s ["§7[§1GamesIO§7] §f",{"text":"La partie a déjà débuter !"}]

		tellraw @a[tag=spawn,score_core:menu_min=11,score_core:menu=11,score_menu:goldenpick_min=1] ["§cCe jeu est actuellement indisponible."]

		tellraw @a[tag=spawn,score_core:menu_min=11,score_core:menu=11,score_menu:itemframe_min=1] ["§cCe jeu est actuellement indisponible."]

		execute @e[type=armor_stand,name=ctf:start,score_ctf_min=-1,score_ctf=-1] ~ ~ ~ execute @a[tag=spawn,score_core:menu_min=11,score_core:menu=11,score_menu:banner_min=1] ~ ~ ~ trigger core:gogames set 2
		execute @e[type=armor_stand,name=ctf:start,score_ctf_min=0] ~ ~ ~ execute @a[tag=spawn,score_core:menu_min=11,score_core:menu=11,score_menu:banner_min=1] ~ ~ ~ tellraw @s ["§7[§1GamesIO§7] §f",{"text":"La partie a déjà débuter !"}]

		tellraw @a[tag=spawn,score_core:menu_min=11,score_core:menu=11,score_menu:tnt_min=1] ["§cCe jeu est actuellement indisponible."]

		scoreboard players set @a[tag=spawn,score_core:menu_min=11,score_core:menu=11,score_menu:arrow_min=1] core:menu 12 {SelectedItemSlot:8}

	# 12

		scoreboard players set @a[tag=spawn,score_core:menu_min=12,score_core:menu=12,score_menu:arrow_min=1] core:menu 11 {SelectedItemSlot:0}

		playsound minecraft:entity.villager.no master @a[tag=spawn,score_core:menu_min=12,score_core:menu=12,score_menu:bedrock_min=1]

	# 13

		scoreboard players set @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:arrow_min=1] core:menu 1 {SelectedItemSlot:0}

		scoreboard teams leave @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:book_min=1]

		replaceitem entity @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:book_min=1] slot.hotbar.2 barrier 1 0 {display:{Name:"§r§4Patientez",Lore:["§r§7Vous pouvez utiliser,","§r§7cette fonction toutes","§r§7les 5 secondes."]},HideFlags:63,ench:[{id:1,lvl:1}]}

		execute @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:book_min=1,score_core:grade_min=1,score_core:grade=1] ~ ~ ~ tellraw @s [{"text":"\n████████████████████████████████","color":"gold"},"\n\n §8§l§nGénéral§r\n\n  §7Joueur: ",{"selector":"@s","color":"white"},"\n  §7Grade: §8Joueur\n\n  §eVaniCoins§7: ",{"score":{"name":"@s","objective":"stats:coin"}},".",{"score":{"name":"@s","objective":"stats:centicoin"}},"\n  §2Level§7: ",{"score":{"name":"@s","objective":"stats:level"}},".",{"score":{"name":"@s","objective":"stats:centilevel"}},"\n  §6Fragments VIP: ",{"score":{"name":"@s","objective":"stats:fragvip"}},"\n\n §8§l§nKills§r\n\n  §7Total§7: ",{"score":{"name":"@s","objective":"stats:totalKills"}},"\n  §4Tower§7: ",{"score":{"name":"@s","objective":"stats:twrKills"}},"\n  §9CTF§7: ",{"score":{"name":"@s","objective":"stats:ctfKills"}},"\n  §2Minecube§7: ",{"score":{"name":"@s","objective":"stats:mcuKills"}},"\n  §aLootmatch§7: ",{"score":{"name":"@s","objective":"stats:ltmKills"}},"\n  §cTntWar§7: ",{"score":{"name":"@s","objective":"stats:twaKills"}},{"text":"\n\n████████████████████████████████","color":"gold"}]

		execute @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:book_min=1,score_core:grade_min=2,score_core:grade=2] ~ ~ ~ tellraw @s [{"text":"\n████████████████████████████████","color":"gold"},"\n\n §8§l§nGénéral§r\n\n  §7Joueur: ",{"selector":"@s","color":"white"},"\n  §7Grade: §eVIP\n\n  §eVaniCoins§7: ",{"score":{"name":"@s","objective":"stats:coin"}},".",{"score":{"name":"@s","objective":"stats:centicoin"}},"\n  §2Level§7: ",{"score":{"name":"@s","objective":"stats:level"}},".",{"score":{"name":"@s","objective":"stats:centilevel"}},"\n  §6Fragments VIP: ",{"score":{"name":"@s","objective":"stats:fragvip"}},"\n\n §8§l§nKills§r\n\n  §7Total§7: ",{"score":{"name":"@s","objective":"stats:totalKills"}},"\n  §4Tower§7: ",{"score":{"name":"@s","objective":"stats:twrKills"}},"\n  §9CTF§7: ",{"score":{"name":"@s","objective":"stats:ctfKills"}},"\n  §2Minecube§7: ",{"score":{"name":"@s","objective":"stats:mcuKills"}},"\n  §aLootmatch§7: ",{"score":{"name":"@s","objective":"stats:ltmKills"}},"\n  §cTntWar§7: ",{"score":{"name":"@s","objective":"stats:twaKills"}},{"text":"\n\n████████████████████████████████","color":"gold"}]

		execute @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:book_min=1,score_core:grade_min=3,score_core:grade=3] ~ ~ ~ tellraw @s [{"text":"\n████████████████████████████████","color":"gold"},"\n\n §8§l§nGénéral§r\n\n  §7Joueur: ",{"selector":"@s","color":"white"},"\n  §7Grade: §bVIP+\n\n  §eVaniCoins§7: ",{"score":{"name":"@s","objective":"stats:coin"}},".",{"score":{"name":"@s","objective":"stats:centicoin"}},"\n  §2Level§7: ",{"score":{"name":"@s","objective":"stats:level"}},".",{"score":{"name":"@s","objective":"stats:centilevel"}},"\n  §6Fragments VIP: ",{"score":{"name":"@s","objective":"stats:fragvip"}},"\n\n §8§l§nKills§r\n\n  §7Total§7: ",{"score":{"name":"@s","objective":"stats:totalKills"}},"\n  §4Tower§7: ",{"score":{"name":"@s","objective":"stats:twrKills"}},"\n  §9CTF§7: ",{"score":{"name":"@s","objective":"stats:ctfKills"}},"\n  §2Minecube§7: ",{"score":{"name":"@s","objective":"stats:mcuKills"}},"\n  §aLootmatch§7: ",{"score":{"name":"@s","objective":"stats:ltmKills"}},"\n  §cTntWar§7: ",{"score":{"name":"@s","objective":"stats:twaKills"}},{"text":"\n\n████████████████████████████████","color":"gold"}]

		execute @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:book_min=1,score_core:grade_min=4,score_core:grade=4] ~ ~ ~ tellraw @s [{"text":"\n████████████████████████████████","color":"gold"},"\n\n §8§l§nGénéral§r\n\n  §7Joueur: ",{"selector":"@s","color":"white"},"\n  §7Grade: §3Elite\n\n  §eVaniCoins§7: ",{"score":{"name":"@s","objective":"stats:coin"}},".",{"score":{"name":"@s","objective":"stats:centicoin"}},"\n  §2Level§7: ",{"score":{"name":"@s","objective":"stats:level"}},".",{"score":{"name":"@s","objective":"stats:centilevel"}},"\n  §6Fragments VIP: ",{"score":{"name":"@s","objective":"stats:fragvip"}},"\n\n §8§l§nKills§r\n\n  §7Total§7: ",{"score":{"name":"@s","objective":"stats:totalKills"}},"\n  §4Tower§7: ",{"score":{"name":"@s","objective":"stats:twrKills"}},"\n  §9CTF§7: ",{"score":{"name":"@s","objective":"stats:ctfKills"}},"\n  §2Minecube§7: ",{"score":{"name":"@s","objective":"stats:mcuKills"}},"\n  §aLootmatch§7: ",{"score":{"name":"@s","objective":"stats:ltmKills"}},"\n  §cTntWar§7: ",{"score":{"name":"@s","objective":"stats:twaKills"}},{"text":"\n\n████████████████████████████████","color":"gold"}]

		execute @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:book_min=1,score_core:grade_min=3,score_core:grade=3] ~ ~ ~ tellraw @s [{"text":"\n████████████████████████████████","color":"gold"},"\n\n §8§l§nGénéral§r\n\n  §7Joueur: ",{"selector":"@s","color":"white"},"\n  §7Grade: §bVIP+\n\n  §eVaniCoins§7: ",{"score":{"name":"@s","objective":"stats:coin"}},".",{"score":{"name":"@s","objective":"stats:centicoin"}},"\n  §2Level§7: ",{"score":{"name":"@s","objective":"stats:level"}},".",{"score":{"name":"@s","objective":"stats:centilevel"}},"\n  §6Fragments VIP: ",{"score":{"name":"@s","objective":"stats:fragvip"}},"\n\n §8§l§nKills§r\n\n  §7Total§7: ",{"score":{"name":"@s","objective":"stats:totalKills"}},"\n  §4Tower§7: ",{"score":{"name":"@s","objective":"stats:twrKills"}},"\n  §9CTF§7: ",{"score":{"name":"@s","objective":"stats:ctfKills"}},"\n  §2Minecube§7: ",{"score":{"name":"@s","objective":"stats:mcuKills"}},"\n  §aLootmatch§7: ",{"score":{"name":"@s","objective":"stats:ltmKills"}},"\n  §cTntWar§7: ",{"score":{"name":"@s","objective":"stats:twaKills"}},{"text":"\n\n████████████████████████████████","color":"gold"}]

		execute @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:book_min=1,score_core:grade_min=50,score_core:grade=50] ~ ~ ~ tellraw @s [{"text":"\n████████████████████████████████","color":"gold"},"\n\n §8§l§nGénéral§r\n\n  §7Joueur: ",{"selector":"@s","color":"white"},"\n  §7Grade: §9Modérateur\n\n  §eVaniCoins§7: ",{"score":{"name":"@s","objective":"stats:coin"}},".",{"score":{"name":"@s","objective":"stats:centicoin"}},"\n  §2Level§7: ",{"score":{"name":"@s","objective":"stats:level"}},".",{"score":{"name":"@s","objective":"stats:centilevel"}},"\n  §6Fragments VIP: ",{"score":{"name":"@s","objective":"stats:fragvip"}},"\n\n §8§l§nKills§r\n\n  §7Total§7: ",{"score":{"name":"@s","objective":"stats:totalKills"}},"\n  §4Tower§7: ",{"score":{"name":"@s","objective":"stats:twrKills"}},"\n  §9CTF§7: ",{"score":{"name":"@s","objective":"stats:ctfKills"}},"\n  §2Minecube§7: ",{"score":{"name":"@s","objective":"stats:mcuKills"}},"\n  §aLootmatch§7: ",{"score":{"name":"@s","objective":"stats:ltmKills"}},"\n  §cTntWar§7: ",{"score":{"name":"@s","objective":"stats:twaKills"}},{"text":"\n\n████████████████████████████████","color":"gold"}]

		execute @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:book_min=1,score_core:grade_min=51,score_core:grade=51] ~ ~ ~ tellraw @s [{"text":"\n████████████████████████████████","color":"gold"},"\n\n §8§l§nGénéral§r\n\n  §7Joueur: ",{"selector":"@s","color":"white"},"\n  §7Grade: §6Administrateur\n\n  §eVaniCoins§7: ",{"score":{"name":"@s","objective":"stats:coin"}},".",{"score":{"name":"@s","objective":"stats:centicoin"}},"\n  §2Level§7: ",{"score":{"name":"@s","objective":"stats:level"}},".",{"score":{"name":"@s","objective":"stats:centilevel"}},"\n  §6Fragments VIP: ",{"score":{"name":"@s","objective":"stats:fragvip"}},"\n\n §8§l§nKills§r\n\n  §7Total§7: ",{"score":{"name":"@s","objective":"stats:totalKills"}},"\n  §4Tower§7: ",{"score":{"name":"@s","objective":"stats:twrKills"}},"\n  §9CTF§7: ",{"score":{"name":"@s","objective":"stats:ctfKills"}},"\n  §2Minecube§7: ",{"score":{"name":"@s","objective":"stats:mcuKills"}},"\n  §aLootmatch§7: ",{"score":{"name":"@s","objective":"stats:ltmKills"}},"\n  §cTntWar§7: ",{"score":{"name":"@s","objective":"stats:twaKills"}},{"text":"\n\n████████████████████████████████","color":"gold"}]

		execute @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:book_min=1,score_core:grade_min=100,score_core:grade=100] ~ ~ ~ tellraw @s [{"text":"\n████████████████████████████████","color":"gold"},"\n\n §8§l§nGénéral§r\n\n  §7Joueur: ",{"selector":"@s","color":"white"},"\n  §7Grade: §cFondateur\n\n  §eVaniCoins§7: ",{"score":{"name":"@s","objective":"stats:coin"}},".",{"score":{"name":"@s","objective":"stats:centicoin"}},"\n  §2Level§7: ",{"score":{"name":"@s","objective":"stats:level"}},".",{"score":{"name":"@s","objective":"stats:centilevel"}},"\n  §6Fragments VIP: ",{"score":{"name":"@s","objective":"stats:fragvip"}},"\n\n §8§l§nKills§r\n\n  §7Total§7: ",{"score":{"name":"@s","objective":"stats:totalKills"}},"\n  §4Tower§7: ",{"score":{"name":"@s","objective":"stats:twrKills"}},"\n  §9CTF§7: ",{"score":{"name":"@s","objective":"stats:ctfKills"}},"\n  §2Minecube§7: ",{"score":{"name":"@s","objective":"stats:mcuKills"}},"\n  §aLootmatch§7: ",{"score":{"name":"@s","objective":"stats:ltmKills"}},"\n  §cTntWar§7: ",{"score":{"name":"@s","objective":"stats:twaKills"}},{"text":"\n\n████████████████████████████████","color":"gold"}]

		scoreboard teams join grade:vip @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:book_min=1,score_core:grade_min=2,score_core:grade=2]
		scoreboard teams join grade:vipp @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:book_min=1,score_core:grade_min=3,score_core:grade=3]
		scoreboard teams join grade:elite @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:book_min=1,score_core:grade_min=4,score_core:grade=4]
		scoreboard teams join grade:modo @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:book_min=1,score_core:grade_min=50,score_core:grade=50]
		scoreboard teams join grade:admin @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:book_min=1,score_core:grade_min=51,score_core:grade=51]
		scoreboard teams join grade:fonda @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:book_min=1,score_core:grade_min=100,score_core:grade=100]

		tellraw @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:observer_min=1] ["§7[§4Report§7] §fMerci de faire votre report sur cette page : ",{"text":"VanillaReports","clickEvent":{"action":"open_url","value":"https://vanimc.games/fr/reports/new"},"color":"aqua"}]

		tellraw @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:web_min=1] ["",{"text":"\nLiens:","color":"gold","bold":true},{"text":"\n - ","color":"dark_gray","bold":false},{"text":"Site internet","color":"gray","clickEvent":{"action":"open_url","value":"https://vanimc.games/"}},{"text":"\n - ","color":"dark_gray"},{"text":"Twitter","color":"aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/MCVanillaGames"}},{"text":"\n - ","color":"dark_gray"},{"text":"Boutique en ligne","color":"yellow","clickEvent":{"action":"open_url","value":"https://store.vanimc.games/"}},{"text":"\n - ","color":"dark_gray"},{"text":"Support","color":"blue","clickEvent":{"action":"open_url","value":"https://support.vanimc.games/"}},{"text":"\n - ","color":"dark_gray"},{"text":"Forum","color":"dark_purple","clickEvent":{"action":"open_url","value":"https://forum.vanimc.games/"}}]

		tellraw @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:brewing_min=1] [{"text":"Le tutoriel est indisponible pour le moment...","color":"gray"}]

		tellraw @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:rod_min=1] [{"text":"Le paramétrage des notifications est indisponible pour le moment...","color":"gray"}]

		scoreboard players set @a[tag=spawn,score_core:menu_min=13,score_core:menu=13,score_menu:arrow_min=1] core:menu 14 {SelectedItemSlot:8}

	# 14

		scoreboard players set @a[tag=spawn,score_core:menu_min=14,score_core:menu=14,score_menu:arrow_min=1] core:menu 13 {SelectedItemSlot:0}

		tellraw @a[tag=spawn,score_core:menu_min=14,score_core:menu=14,score_menu:barrier_min=1] [{"text":"L'annulation des cosmétiques est indisponible pour le moment...","color":"gray"}]

		playsound minecraft:entity.villager.no master @a[tag=spawn,score_core:menu_min=14,score_core:menu=14,score_menu:bedrock_min=1]

	# 15

		scoreboard players set @a[tag=spawn,score_core:menu_min=15,score_core:menu=15,score_menu:arrow_min=1] core:menu 1 {SelectedItemSlot:0}

		#

		#

		scoreboard players set @a[tag=spawn,score_core:menu_min=15,score_core:menu=15,score_menu:dplant_min=1] core:menu 154

		#

		#

		# 151

		# 152

		# 153

		# 154

			scoreboard players set @a[tag=spawn,score_core:menu_min=154,score_core:menu=154,score_menu:arrow_min=1] core:menu 15 {SelectedItemSlot:0}

			tellraw @a[tag=spawn,score_core:menu_min=154,score_core:menu=154,score_menu:web_min=1] ["",{"text":"\nRetrouvez notre boutique en ligne ici: ","color":"gray"},{"text":"Boutique","color":"yellow","clickEvent":{"action":"open_url","value":"https://store.vanimc.games/"}}]

			execute @a[tag=spawn,score_core:menu_min=154,score_core:menu=154,score_menu:clock_min=1] ~ ~ ~ function vg:rewards/daily

		# 155

		# 156

	# 16

		scoreboard players set @a[tag=spawn,score_core:menu_min=16,score_core:menu=16,score_menu:arrow_min=1] core:menu 1 {SelectedItemSlot:0}

		tellraw @a[tag=spawn,score_core:menu_min=16,score_core:menu=16,score_menu:redflower_min=1] ["§7Téléportation vers le §9Lobby principal§7..."]
		tp @a[tag=spawn,score_core:menu_min=16,score_core:menu=16,score_menu:redflower_min=1] 100 74 100

	# 17

		tellraw @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:beetroot_min=1] ["§6Jump > §aRetour à l'ancien checkpoint !"]
		execute @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:beetroot_min=1,score_jump:chckp_min=1,score_jump:chckp=1] ~ ~ ~ tp @s @e[type=armor_stand,name=jump:start]
		execute @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:beetroot_min=1,score_jump:chckp_min=2,score_jump:chckp=2] ~ ~ ~ tp @s -9974 46 94 -45 0
		execute @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:beetroot_min=1,score_jump:chckp_min=3,score_jump:chckp=3] ~ ~ ~ tp @s -9926 39 97 -35 0
		execute @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:beetroot_min=1,score_jump:chckp_min=4,score_jump:chckp=4] ~ ~ ~ tp @s -9915 54 99 -80 0
		execute @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:beetroot_min=1,score_jump:chckp_min=5,score_jump:chckp=5] ~ ~ ~ tp @s -9861 29 94 -30 20
		execute @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:beetroot_min=1,score_jump:chckp_min=6,score_jump:chckp=6] ~ ~ ~ tp @s -9840 26 121 -10 0
		execute @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:beetroot_min=1,score_jump:chckp_min=7,score_jump:chckp=7] ~ ~ ~ tp @s -9820 36 115 135 0

		execute @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:clock_min=1] ~ ~ ~ scoreboard players set @s jump:chckp 1
		execute @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:clock_min=1] ~ ~ ~ tellraw @s ["§6Jump > §aReset de ta partie au jump..."]
		execute @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:clock_min=1] ~ ~ ~ scoreboard players set @s jump:sec 0
		execute @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:clock_min=1] ~ ~ ~ scoreboard players set @s jump:min 0
		execute @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:clock_min=1] ~ ~ ~ tp @s -9928 71 41 45 0

		tellraw @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:barrier_min=1] ["§6Jump > §aJump arrêté..."]
		tp @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:barrier_min=1] -9928 71 41 45 0
		clear @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:barrier_min=1]
		scoreboard players set @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:barrier_min=1] jump:chckp 0
		scoreboard players tag @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:barrier_min=1] remove jump:ig
		scoreboard players tag @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:barrier_min=1] remove nobc
		scoreboard players reset @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:barrier_min=1] jump:sec
		scoreboard players reset @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:barrier_min=1] jump:min
		scoreboard players set @a[tag=spawn,score_core:menu_min=17,score_core:menu=17,score_menu:barrier_min=1] core:menu 0

# Menu 0 reset

	clear @a[tag=spawn,score_core:menu_min=0,score_core:menu=0,score_menu:arrow_min=1]
	clear @a[tag=spawn,score_core:menu_min=0,score_core:menu=0,score_menu:feather_min=1]

# Events reset

	scoreboard players set @a menu:compass 0
	scoreboard players set @a menu:bed 0
	scoreboard players set @a menu:arrow 0
	scoreboard players set @a menu:feather 0
	scoreboard players set @a menu:pumpkin 0
	scoreboard players set @a menu:netherstar 0
	scoreboard players set @a menu:nametag 0
	scoreboard players set @a menu:anvil 0
	scoreboard players set @a menu:wool 0
	scoreboard players set @a menu:goldenpick 0
	scoreboard players set @a menu:itemframe 0
	scoreboard players set @a menu:banner 0
	scoreboard players set @a menu:tnt 0
	scoreboard players set @a menu:bedrock 0
	scoreboard players set @a menu:book 0
	scoreboard players set @a menu:observer 0
	scoreboard players set @a menu:web 0
	scoreboard players set @a menu:brewing 0
	scoreboard players set @a menu:rod 0
	scoreboard players set @a menu:barrier 0
	scoreboard players set @a menu:redflower 0
	scoreboard players set @a menu:dplant 0
	scoreboard players set @a menu:clock 0
	scoreboard players set @a menu:beetroot 0
