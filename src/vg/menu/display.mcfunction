# Display.mcfunction
# Affichage des icônes du menu

replaceitem entity @a[tag=spawn,score_core:menu_min=0,score_core:menu=99999] slot.weapon.offhand air

# Menu rapide spawn
replaceitem entity @a[tag=spawn,score_core:menu_min=0,score_core:menu=0] slot.hotbar.0 compass 1 0 {display:{Name:"§r§fAfficher le §6§lmenu rapide",Lore:["§r§7Lâchez moi pour ouvrir","§r§7le menu rapide !"]},HideFlags:63}
replaceitem entity @a[tag=spawn,score_core:menu_min=0,score_core:menu=0] slot.hotbar.1 bed 1 14 {display:{Name:"§r§5Retour au spawn",Lore:["§r§7Lâchez moi pour retourner","§r§7au spawn !"]},HideFlags:63}
replaceitem entity @a[tag=spawn,score_core:menu_min=0,score_core:menu=0,tag=dailyReward] slot.hotbar.2 clock 1 0 {display:{Name:"§r§eRécompenses quotidiennes",Lore:["§r§7Des cadeaux à collecter","§r§7tous les jours."]},HideFlags:63,ench:[{id:1,lvl:1}],Potion:"minecraft:swiftness"}
replaceitem entity @a[tag=spawn,score_core:menu_min=1,score_core:menu=16] slot.hotbar.0 arrow 1 0 {display:{Name:"§r§bRetour",Lore:["§r§7Lâchez moi pour retourner","§r§7au menu précédent !"]},HideFlags:63,ench:[{id:1,lvl:1}]}
replaceitem entity @a[tag=spawn,score_core:menu_min=18,score_core:menu=99999] slot.hotbar.0 arrow 1 0 {display:{Name:"§r§bRetour",Lore:["§r§7Lâchez moi pour retourner","§r§7au menu précédent !"]},HideFlags:63,ench:[{id:1,lvl:1}]}


# Menu : 1 - Inventaire principal
replaceitem entity @a[tag=spawn,score_core:menu_min=1,score_core:menu=1] slot.hotbar.1 air
replaceitem entity @a[tag=spawn,score_core:menu_min=1,score_core:menu=1] slot.hotbar.2 feather 1 0 {display:{Name:"§r§5Jump",Lore:["§r§7Accéder au jump","§r§7du serveur."]},HideFlags:63,ench:[{id:1,lvl:1}]}
replaceitem entity @a[tag=spawn,score_core:menu_min=1,score_core:menu=1] slot.hotbar.3 pumpkin 1 0 {display:{Name:"§r§5Jeux",Lore:["§r§7Accéder aux jeux.","§r§7"]},HideFlags:63,ench:[{id:1,lvl:1}]}
replaceitem entity @a[tag=spawn,score_core:menu_min=1,score_core:menu=1] slot.hotbar.4 nether_star 1 0 {display:{Name:"§r§6Vanilla Games",Lore:["§r§7Changer de","§r§7lobby."]},HideFlags:63,ench:[{id:1,lvl:1}]}
replaceitem entity @a[tag=spawn,score_core:menu_min=1,score_core:menu=1] slot.hotbar.5 name_tag 1 0 {display:{Name:"§r§5Magasin",Lore:["§r§7Accéder au magasin en","§r§7jeu du serveur."]},HideFlags:63,ench:[{id:1,lvl:1}]}
replaceitem entity @a[tag=spawn,score_core:menu_min=1,score_core:menu=1] slot.hotbar.6 anvil 1 0 {display:{Name:"§r§5Paramètres de jeu",Lore:["§r§7Accéder aux paramètres","§r§7de votre compte."]},HideFlags:63,ench:[{id:1,lvl:1}]}
replaceitem entity @a[tag=spawn,score_core:menu_min=1,score_core:menu=1] slot.hotbar.7 air
replaceitem entity @a[tag=spawn,score_core:menu_min=1,score_core:menu=1] slot.hotbar.8 air

	# Menu : 16 - Menu lobbys
	replaceitem entity @a[tag=spawn,score_core:menu_min=16,score_core:menu=16] slot.hotbar.1 air
	replaceitem entity @a[tag=spawn,score_core:menu_min=16,score_core:menu=16] slot.hotbar.2 air
	replaceitem entity @a[tag=spawn,score_core:menu_min=16,score_core:menu=16] slot.hotbar.3 red_flower 1 1 {display:{Name:"§r§9Lobby principal",Lore:["§r§7Accéder au lobby","§r§7principale"]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=16,score_core:menu=16] slot.hotbar.4 red_flower 1 8 {display:{Name:"§r§fLobby secondaire",Lore:["§r§7Accéder au lobby","§r§7secondaire"]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=16,score_core:menu=16] slot.hotbar.5 red_flower 1 2 {display:{Name:"§r§dLobby incognito",Lore:["§r§7Accéder au lobby","§r§7incognito"]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=16,score_core:menu=16] slot.hotbar.6 air
	replaceitem entity @a[tag=spawn,score_core:menu_min=16,score_core:menu=16] slot.hotbar.7 air
	replaceitem entity @a[tag=spawn,score_core:menu_min=16,score_core:menu=16] slot.hotbar.8 air


	# Menu : 11 - Sélection des jeux 1
	replaceitem entity @a[tag=spawn,score_core:menu_min=11,score_core:menu=11] slot.hotbar.1 air
	replaceitem entity @a[tag=spawn,score_core:menu_min=11,score_core:menu=11] slot.hotbar.2 wool 1 14 {display:{Name:"§r§4Tower §b5v5",Lore:["§r§7Deux équipes se battent pour","§r§7marquer des points dans le","§r§7camp ennemi."]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=11,score_core:menu=11] slot.hotbar.3 golden_pickaxe 1 0 {display:{Name:"§r§2Minecube §b16 joueurs",Lore:["§r§7Affrontez-vous et","§r§7récupérez le plus","§r§7d'émeraudes !"]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=11,score_core:menu=11] slot.hotbar.4 item_frame 1 0 {display:{Name:"§r§aLootmatch §b24 joueurs",Lore:["§r§7Tuez des monstres et","§r§7préparez-vous au","§r§7combat !"]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=11,score_core:menu=11] slot.hotbar.5 banner 1 4 {display:{Name:"§r§9Capture The Flag §bXX joueurs",Lore:["§r§7Capturez le drapeau ennemi","§r§7et menez votre équipe","§r§7à la victoire !"]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=11,score_core:menu=11] slot.hotbar.6 ender_pearl 1 0 {display:{Name:"§r§3Pearl War §b12 joueurs",Lore:["§r§7Poussez vous dans le vide à","§r§7l'aide de vos enderpearls","§r§7Knockback XII"]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=11,score_core:menu=11] slot.hotbar.7 air
	replaceitem entity @a[tag=spawn,score_core:menu_min=11,score_core:menu=11] slot.hotbar.8 air
	#replaceitem entity @a[tag=spawn,score_core:menu_min=11,score_core:menu=11] slot.hotbar.8 arrow 1 0 {display:{Name:"§r§bSuivant",Lore:["§r§7Lâchez moi pour aller","§r§7au menu suivant !"]},HideFlags:63,ench:[{id:1,lvl:1}]}


	# Menu : 12 - Sélection des jeux 2
	replaceitem entity @a[tag=spawn,score_core:menu_min=12,score_core:menu=12] slot.hotbar.1 air
	replaceitem entity @a[tag=spawn,score_core:menu_min=12,score_core:menu=12] slot.hotbar.2 bedrock 1 0 {display:{Name:"§r§8Indisponible",Lore:["§r§7Ce jeu est indiponible,","§r§7en maintenance ou en","§r§7développement."]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=12,score_core:menu=12] slot.hotbar.3 bedrock 1 0 {display:{Name:"§r§8Indisponible",Lore:["§r§7Ce jeu est indiponible,","§r§7en maintenance ou en","§r§7développement."]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=12,score_core:menu=12] slot.hotbar.4 bedrock 1 0 {display:{Name:"§r§8Indisponible",Lore:["§r§7Ce jeu est indiponible,","§r§7en maintenance ou en","§r§7développement."]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=12,score_core:menu=12] slot.hotbar.5 bedrock 1 0 {display:{Name:"§r§8Indisponible",Lore:["§r§7Ce jeu est indiponible,","§r§7en maintenance ou en","§r§7développement."]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=12,score_core:menu=12] slot.hotbar.6 bedrock 1 0 {display:{Name:"§r§8Indisponible",Lore:["§r§7Ce jeu est indiponible,","§r§7en maintenance ou en","§r§7développement."]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=12,score_core:menu=12] slot.hotbar.7 air
	replaceitem entity @a[tag=spawn,score_core:menu_min=12,score_core:menu=12] slot.hotbar.8 air


	# Menu : 13 - Paramètres de jeu 1
	replaceitem entity @a[tag=spawn,score_core:menu_min=13,score_core:menu=13] slot.hotbar.1 air
	execute @e[type=armor_stand,name=timer5s,score_core:stats_min=99] ~ ~ ~ replaceitem entity @a[tag=spawn,score_core:menu_min=13,score_core:menu=13] slot.hotbar.2 book 1 0 {display:{Name:"§r§6Stats",Lore:["§r§7Vos statistiques de jeu,","§r§7de kills, de level","§r§7et plus."]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=13,score_core:menu=13] slot.hotbar.3 observer 1 0 {display:{Name:"§r§cReport",Lore:["§r§7Signaler un joueur."]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=13,score_core:menu=13] slot.hotbar.4 web 1 0 {display:{Name:"§r§9Sur le Web",Lore:["§r§7Retrouvez nous","§r§7sur l'internet."]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=13,score_core:menu=13] slot.hotbar.5 brewing_stand 1 0 {display:{Name:"§r§eTutoriel",Lore:["§r§7Suivez notre tutoriel pour","§r§7découvrir notre serveur."]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=13,score_core:menu=13] slot.hotbar.6 fishing_rod 1 0 {display:{Name:"§r§dGérer les notifications",Lore:["§r§7Modifier vos préférences","§r§7de broadcasts."]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=13,score_core:menu=13] slot.hotbar.7 air
	replaceitem entity @a[tag=spawn,score_core:menu_min=13,score_core:menu=13] slot.hotbar.8 arrow 1 0 {display:{Name:"§r§bSuivant",Lore:["§r§7Lâchez moi pour aller","§r§7au menu suivant !"]},HideFlags:63,ench:[{id:1,lvl:1}]}


	# Menu : 14 - Paramètres de jeu 2
	replaceitem entity @a[tag=spawn,score_core:menu_min=14,score_core:menu=14] slot.hotbar.1 air
	replaceitem entity @a[tag=spawn,score_core:menu_min=14,score_core:menu=14] slot.hotbar.2 barrier 1 0 {display:{Name:"§r§cEnlever cosmétiques",Lore:["§r§7Enlève vos cosmétiques, kits","§r§7et boosters activés mais ne","§r§7supprime pas les achats !"]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=14,score_core:menu=14] slot.hotbar.3 bedrock 1 0 {display:{Name:"§r§8Indisponible",Lore:["§r§7Cette fonctionnalité est","§r§7indiponible ou en cours","§r§7de développement."]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=14,score_core:menu=14] slot.hotbar.4 bedrock 1 0 {display:{Name:"§r§8Indisponible",Lore:["§r§7Cette fonctionnalité est","§r§7indiponible ou en cours","§r§7de développement."]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=14,score_core:menu=14] slot.hotbar.5 bedrock 1 0 {display:{Name:"§r§8Indisponible",Lore:["§r§7Cette fonctionnalité est","§r§7indiponible ou en cours","§r§7de développement."]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=14,score_core:menu=14] slot.hotbar.6 bedrock 1 0 {display:{Name:"§r§8Indisponible",Lore:["§r§7Cette fonctionnalité est","§r§7indiponible ou en cours","§r§7de développement."]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=14,score_core:menu=14] slot.hotbar.7 air
	replaceitem entity @a[tag=spawn,score_core:menu_min=14,score_core:menu=14] slot.hotbar.8 air


	# Menu : 15 - Magasin en jeu
	replaceitem entity @a[tag=spawn,score_core:menu_min=15,score_core:menu=15] slot.hotbar.1 air
	replaceitem entity @a[tag=spawn,score_core:menu_min=15,score_core:menu=15] slot.hotbar.2 wooden_sword 1 0 {display:{Name:"§r§6Améliorations jeux",Lore:["§r§7Améliorez votre skills dans","§r§7nos jeux en achetant des","§r§7améliorations."]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=15,score_core:menu=15] slot.hotbar.3 bed 1 14 {display:{Name:"§r§dCosmétiques spawn",Lore:["§r§7Achetez des cosmétiques","§r§7pour vous l'a péter ;)"]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=15,score_core:menu=15] slot.hotbar.4 dragon_breath 1 0 {display:{Name:"§r§3Boosters",Lore:["§r§7Augmenter vos gains","§r§7en fin de partie."]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=15,score_core:menu=15] slot.hotbar.5 emerald 1 0 {display:{Name:"§r§2Grades",Lore:["§r§7Aider le serveur et","§r§7accéder à plus de","§r§7fonctionnalités"]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=15,score_core:menu=15] slot.hotbar.6 double_plant 1 0 {display:{Name:"§r§eBoutique VaniCoins",Lore:["§r§7Acheter et gagnez des VaniCoins","§r§7dépensables dans tout le magasin."]},HideFlags:63,ench:[{id:1,lvl:1}]}
	replaceitem entity @a[tag=spawn,score_core:menu_min=15,score_core:menu=15] slot.hotbar.7 air
	replaceitem entity @a[tag=spawn,score_core:menu_min=15,score_core:menu=15] slot.hotbar.8 air


		# Menu : 151 - Améliorations 1
		replaceitem entity @a[tag=spawn,score_core:menu_min=151,score_core:menu=151] slot.hotbar.1 air
		replaceitem entity @a[tag=spawn,score_core:menu_min=151,score_core:menu=151] slot.hotbar.2 wool 1 14 {display:{Name:"§r§4Tower",Lore:["§r§7Acheter des kits","§r§7de départ."]},HideFlags:63,ench:[{id:1,lvl:1}]}
		replaceitem entity @a[tag=spawn,score_core:menu_min=151,score_core:menu=151] slot.hotbar.3 golden_pickaxe 1 0 {display:{Name:"§r§2Minecube",Lore:["§r§7Acheter de meilleurs","§r§7pioche de départ."]},HideFlags:63,ench:[{id:1,lvl:1}]}
		replaceitem entity @a[tag=spawn,score_core:menu_min=151,score_core:menu=151] slot.hotbar.4 item_frame 1 0 {display:{Name:"§r§aLootmatch",Lore:["§r§7Améliorer votre stuff de","§r§7départ et vos loots."]},HideFlags:63,ench:[{id:1,lvl:1}]}
		replaceitem entity @a[tag=spawn,score_core:menu_min=151,score_core:menu=151] slot.hotbar.5 banner 1 4 {display:{Name:"§r§9Capture The Flag",Lore:["§r§7Améliorer votre stuff","§r§7de départ."]},HideFlags:63,ench:[{id:1,lvl:1}]}
		replaceitem entity @a[tag=spawn,score_core:menu_min=151,score_core:menu=151] slot.hotbar.6 tnt 1 0 {display:{Name:"§r§cTntWar",Lore:["§r§7Aucune améliorations","§r§7disponibles !"]},HideFlags:63}
		replaceitem entity @a[tag=spawn,score_core:menu_min=151,score_core:menu=151] slot.hotbar.7 air
		replaceitem entity @a[tag=spawn,score_core:menu_min=151,score_core:menu=151] slot.hotbar.8 arrow 1 0 {display:{Name:"§r§bSuivant",Lore:["§r§7Lâchez moi pour aller","§r§7au menu suivant !"]},HideFlags:63,ench:[{id:1,lvl:1}]}



			# Item supprimer Menus améliorations
			replaceitem entity @a[tag=spawn,score_core:menu_min=1511,score_core:menu=1515] slot.hotbar.1 barrier 1 0 {display:{Name:"§r§cEnlever tout",Lore:["§r§7Désactive vos améliorations","§r§7du jeu mais ne supprime","§r§7pas les achats !"]},HideFlags:63,ench:[{id:1,lvl:1}]}


			# Menu : 1511 - Améliorations Tower
			replaceitem entity @a[tag=spawn,score_core:menu_min=1511,score_core:menu=1511] slot.hotbar.2 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1511,score_core:menu=1511] slot.hotbar.3 diamond_axe 1 0 {display:{Name:"§r§dWarrior §e$1000",Lore:["§r§7Contenu :","§r§7 - x1 hache en diamant","§r§7 - x1 stuff full fer P1","§r§7 - Résistance I pendant 1 minute"]},HideFlags:63}
			replaceitem entity @a[tag=spawn,score_core:menu_min=1511,score_core:menu=1511] slot.hotbar.4 ender_pearl 1 0 {display:{Name:"§r§dEnderman §e$2500",Lore:["§r§7Contenu :","§r§7 - x1 enderpearls","§r§7 - x1 tête d'enderman"]},HideFlags:63}
			replaceitem entity @a[tag=spawn,score_core:menu_min=1511,score_core:menu=1511] slot.hotbar.5 enchanting_table 1 0 {display:{Name:"§r§dEnchanter §e$1000",Lore:["§r§7Contenu :","§r§7 - x1 table d'enchantement","§r§7 - x1 enclume","§r§7 - x64 bouteilles d'XP"]},HideFlags:63}
			replaceitem entity @a[tag=spawn,score_core:menu_min=1511,score_core:menu=1511] slot.hotbar.6 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1511,score_core:menu=1511] slot.hotbar.7 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1511,score_core:menu=1511] slot.hotbar.8 air


			# Menu : 1512 - Améliorations Minecube
			replaceitem entity @a[tag=spawn,score_core:menu_min=1512,score_core:menu=1512] slot.hotbar.2 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1512,score_core:menu=1512] slot.hotbar.3 wooden_pickaxe 1 0 {display:{Name:"§r§dPioche I §e$1000",Lore:["§r§7Contenu :","§r§7 - x1 pioche en bois"]},HideFlags:63}
			replaceitem entity @a[tag=spawn,score_core:menu_min=1512,score_core:menu=1512] slot.hotbar.4 wooden_pickaxe 1 0 {display:{Name:"§r§dPioche II §e$2000",Lore:["§r§7Contenu :","§r§7 - x1 pioche en bois E1"]},HideFlags:63}
			replaceitem entity @a[tag=spawn,score_core:menu_min=1512,score_core:menu=1512] slot.hotbar.5 stone_pickaxe 1 0 {display:{Name:"§r§dPioche III §e$2500",Lore:["§r§7Contenu :","§r§7 - x1 pioche en pierre"]},HideFlags:63}
			replaceitem entity @a[tag=spawn,score_core:menu_min=1512,score_core:menu=1512] slot.hotbar.6 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1512,score_core:menu=1512] slot.hotbar.7 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1512,score_core:menu=1512] slot.hotbar.8 air


			# Menu : 1513 - Améliorations Lootmatch
			replaceitem entity @a[tag=spawn,score_core:menu_min=1513,score_core:menu=1513] slot.hotbar.2 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1513,score_core:menu=1513] slot.hotbar.3 stone_sword 1 0 {display:{Name:"§r§dStuff de départ amélioré §e$500",Lore:["§r§7Contenu :","§r§7 - x1 épée en pierre","§r§7 - x24 steaks","§r§7 - Plastron en cuir P1"]},HideFlags:63}
			replaceitem entity @a[tag=spawn,score_core:menu_min=1513,score_core:menu=1513] slot.hotbar.4 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1513,score_core:menu=1513] slot.hotbar.5 potion 1 0 {display:{Name:"§r§dMeilleurs loots I §e$750",Lore:["§r§7Contenu :","§r§7 - Chance I infinie"]},HideFlags:63,Potion:luck}
			replaceitem entity @a[tag=spawn,score_core:menu_min=1513,score_core:menu=1513] slot.hotbar.6 potion 1 0 {display:{Name:"§r§dMeilleurs loots II §e$1000",Lore:["§r§7Contenu :","§r§7 - Chance II infinie"]},HideFlags:63,Potion:luck}
			replaceitem entity @a[tag=spawn,score_core:menu_min=1513,score_core:menu=1513] slot.hotbar.7 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1513,score_core:menu=1513] slot.hotbar.8 air


			# Menu : 1514 - Améliorations CTF
			replaceitem entity @a[tag=spawn,score_core:menu_min=1514,score_core:menu=1514] slot.hotbar.2 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1514,score_core:menu=1514] slot.hotbar.3 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1514,score_core:menu=1514] slot.hotbar.4 stone_sword 1 0 {display:{Name:"§r§dStuff de départ amélioré §e$XXXX",Lore:["§r§7Contenu :","§r§7 - A PRECISER"]},HideFlags:63}
			replaceitem entity @a[tag=spawn,score_core:menu_min=1514,score_core:menu=1514] slot.hotbar.5 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1514,score_core:menu=1514] slot.hotbar.6 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1514,score_core:menu=1514] slot.hotbar.7 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1514,score_core:menu=1514] slot.hotbar.8 air


			# Menu : 1515 - Améliorations TNTWAR
			replaceitem entity @a[tag=spawn,score_core:menu_min=1515,score_core:menu=1515] slot.hotbar.2 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1515,score_core:menu=1515] slot.hotbar.3 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1515,score_core:menu=1515] slot.hotbar.4 bedrock 1 0 {display:{Name:"§r§8Indisponible",Lore:["§r§7Aucune amélioration","§r§7disponible."]},HideFlags:63}
			replaceitem entity @a[tag=spawn,score_core:menu_min=1515,score_core:menu=1515] slot.hotbar.5 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1515,score_core:menu=1515] slot.hotbar.6 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1515,score_core:menu=1515] slot.hotbar.7 air
			replaceitem entity @a[tag=spawn,score_core:menu_min=1515,score_core:menu=1515] slot.hotbar.8 air


		# Menu : 152 - Améliorations 2
		replaceitem entity @a[tag=spawn,score_core:menu_min=152,score_core:menu=152] slot.hotbar.1 air
		replaceitem entity @a[tag=spawn,score_core:menu_min=152,score_core:menu=152] slot.hotbar.2 bedrock 1 0 {display:{Name:"§r§8Indisponible",Lore:["§r§7Ce jeu est indiponible,","§r§7en maintenance ou en","§r§7développement."]},HideFlags:63,ench:[{id:1,lvl:1}]}
		replaceitem entity @a[tag=spawn,score_core:menu_min=152,score_core:menu=152] slot.hotbar.3 bedrock 1 0 {display:{Name:"§r§8Indisponible",Lore:["§r§7Ce jeu est indiponible,","§r§7en maintenance ou en","§r§7développement."]},HideFlags:63,ench:[{id:1,lvl:1}]}
		replaceitem entity @a[tag=spawn,score_core:menu_min=152,score_core:menu=152] slot.hotbar.4 bedrock 1 0 {display:{Name:"§r§8Indisponible",Lore:["§r§7Ce jeu est indiponible,","§r§7en maintenance ou en","§r§7développement."]},HideFlags:63,ench:[{id:1,lvl:1}]}
		replaceitem entity @a[tag=spawn,score_core:menu_min=152,score_core:menu=152] slot.hotbar.5 bedrock 1 0 {display:{Name:"§r§8Indisponible",Lore:["§r§7Ce jeu est indiponible,","§r§7en maintenance ou en","§r§7développement."]},HideFlags:63,ench:[{id:1,lvl:1}]}
		replaceitem entity @a[tag=spawn,score_core:menu_min=152,score_core:menu=152] slot.hotbar.6 bedrock 1 0 {display:{Name:"§r§8Indisponible",Lore:["§r§7Ce jeu est indiponible,","§r§7en maintenance ou en","§r§7développement."]},HideFlags:63,ench:[{id:1,lvl:1}]}
		replaceitem entity @a[tag=spawn,score_core:menu_min=152,score_core:menu=152] slot.hotbar.7 air
		replaceitem entity @a[tag=spawn,score_core:menu_min=152,score_core:menu=152] slot.hotbar.8 air


		# Menu : 153 - Cosmétiques Spawn
		replaceitem entity @a[tag=spawn,score_core:menu_min=153,score_core:menu=153] slot.hotbar.1 air
		replaceitem entity @a[tag=spawn,score_core:menu_min=153,score_core:menu=153] slot.hotbar.2 air
		replaceitem entity @a[tag=spawn,score_core:menu_min=153,score_core:menu=153] slot.hotbar.3 blaze_powder 1 0 {display:{Name:"§r§6Particules",Lore:["§r§7Des trucs volants,","§r§7magiques et jolies !"]},HideFlags:63,ench:[{id:1,lvl:1}]}
		replaceitem entity @a[tag=spawn,score_core:menu_min=153,score_core:menu=153] slot.hotbar.4 leather_chestplate 1 0 {display:{Name:"§r§dArmures",Lore:["§r§7Des tenus pour ne","§r§7pas avoir froid !"]},HideFlags:63,ench:[{id:1,lvl:1}]}
		replaceitem entity @a[tag=spawn,score_core:menu_min=153,score_core:menu=153] slot.hotbar.5 potion 1 0 {display:{Name:"§r§bEffets",Lore:["§r§7Des effets magiques."]},HideFlags:63,ench:[{id:1,lvl:1}],Potion:"minecraft:swiftness"}
		replaceitem entity @a[tag=spawn,score_core:menu_min=153,score_core:menu=153] slot.hotbar.6 air
		replaceitem entity @a[tag=spawn,score_core:menu_min=153,score_core:menu=153] slot.hotbar.7 air
		replaceitem entity @a[tag=spawn,score_core:menu_min=153,score_core:menu=153] slot.hotbar.8 air

			# Menu : 1531 - Particules
			replaceitem entity @a[tag=spawn,score_core:menu_min=1531,score_core:menu=1531] slot.hotbar.1 air




		# Menu : 154 - Boutique VaniCoins
		replaceitem entity @a[tag=spawn,score_core:menu_min=154,score_core:menu=154] slot.hotbar.1 air
		replaceitem entity @a[tag=spawn,score_core:menu_min=154,score_core:menu=154] slot.hotbar.2 air
		replaceitem entity @a[tag=spawn,score_core:menu_min=154,score_core:menu=154] slot.hotbar.3 web 1 0 {display:{Name:"§r§fBoutique en ligne",Lore:["§r§7Pour plus de contenu","§r§7et de fonctionnalités !"]},HideFlags:63,ench:[{id:1,lvl:1}]}
		replaceitem entity @a[tag=spawn,score_core:menu_min=154,score_core:menu=154] slot.hotbar.4 air
		replaceitem entity @a[tag=spawn,score_core:menu_min=154,score_core:menu=154] slot.hotbar.5 clock 1 0 {display:{Name:"§r§eRécompenses quotidiennes",Lore:["§r§7Des cadeaux à collecter","§r§7tous les jours."]},HideFlags:63,ench:[{id:1,lvl:1}],Potion:"minecraft:swiftness"}
		replaceitem entity @a[tag=spawn,score_core:menu_min=154,score_core:menu=154] slot.hotbar.6 air
		replaceitem entity @a[tag=spawn,score_core:menu_min=154,score_core:menu=154] slot.hotbar.7 air
		replaceitem entity @a[tag=spawn,score_core:menu_min=154,score_core:menu=154] slot.hotbar.8 air

	# Menu : 17 - Jump
	replaceitem entity @a[tag=spawn,score_core:menu_min=17,score_core:menu=17] slot.hotbar.0 air
	replaceitem entity @a[tag=spawn,score_core:menu_min=17,score_core:menu=17] slot.hotbar.1 air
	replaceitem entity @a[tag=spawn,score_core:menu_min=17,score_core:menu=17] slot.hotbar.2 air
	replaceitem entity @a[tag=spawn,score_core:menu_min=17,score_core:menu=17] slot.hotbar.3 beetroot 1 0 {display:{Name:"§r§eSpawnpoint précédent"}}
	replaceitem entity @a[tag=spawn,score_core:menu_min=17,score_core:menu=17] slot.hotbar.4 clock 1 0 {display:{Name:"§r§8Timer §2lancé"}}
	replaceitem entity @a[tag=spawn,score_core:menu_min=17,score_core:menu=17] slot.hotbar.5 barrier 1 0 {display:{Name:"§r§cQuitter",Lore:["§r§7Quittez le jump"]}}
	replaceitem entity @a[tag=spawn,score_core:menu_min=17,score_core:menu=17] slot.hotbar.6 air
	replaceitem entity @a[tag=spawn,score_core:menu_min=17,score_core:menu=17] slot.hotbar.7 air
	replaceitem entity @a[tag=spawn,score_core:menu_min=17,score_core:menu=17] slot.hotbar.8 air
