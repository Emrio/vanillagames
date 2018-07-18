# Scoreboard.mcfunction
# Tout ce qui est lié au scoreboards


# Initialisation des scoreboards

scoreboard objectives add vgsb dummy §r§4§lVanilla §6§lGames

scoreboard objectives add core:menu dummy
scoreboard objectives add core:stats dummy
scoreboard objectives add core:rejoin trigger
scoreboard objectives add core:join stat.leaveGame
scoreboard objectives add core:gogames trigger
scoreboard objectives add core:grade dummy
scoreboard objectives add core:damage dummy
scoreboard objectives add core:lognrejoin trigger

scoreboard objectives add spawn dummy

scoreboard objectives add jump:chckp dummy
scoreboard objectives add jump:sec dummy
scoreboard objectives add jump:min dummy
scoreboard objectives add jump:state dummy

scoreboard objectives add stats:level dummy
scoreboard objectives add stats:centilevel dummy
scoreboard objectives add stats:coin dummy
scoreboard objectives add stats:centicoin dummy
scoreboard objectives add stats:totalKills totalKillCount
scoreboard objectives add stats:twrKills dummy
scoreboard objectives add stats:mcuKills dummy
scoreboard objectives add stats:ctfKills dummy
scoreboard objectives add stats:booster dummy
scoreboard objectives add stats:boostGrade dummy
scoreboard objectives add stats:fragvip dummy

scoreboard objectives add rewards:daily dummy

scoreboard objectives add menu:compass stat.drop.minecraft.compass
scoreboard objectives add menu:bed stat.drop.minecraft.bed
scoreboard objectives add menu:arrow stat.drop.minecraft.arrow
scoreboard objectives add menu:feather stat.drop.minecraft.feather
scoreboard objectives add menu:pumpkin stat.drop.minecraft.pumpkin
scoreboard objectives add menu:netherstar stat.drop.minecraft.nether_star
scoreboard objectives add menu:nametag stat.drop.minecraft.name_tag
scoreboard objectives add menu:anvil stat.drop.minecraft.anvil
scoreboard objectives add menu:wool stat.drop.minecraft.wool
scoreboard objectives add menu:goldenpick stat.drop.minecraft.golden_pickaxe
scoreboard objectives add menu:itemframe stat.drop.minecraft.item_frame
scoreboard objectives add menu:banner stat.drop.minecraft.banner
scoreboard objectives add menu:tnt stat.drop.minecraft.tnt
scoreboard objectives add menu:bedrock stat.drop.minecraft.bedrock
scoreboard objectives add menu:book stat.drop.minecraft.book
scoreboard objectives add menu:observer stat.drop.minecraft.observer
scoreboard objectives add menu:web stat.drop.minecraft.web
scoreboard objectives add menu:brewing stat.drop.minecraft.brewing_stand
scoreboard objectives add menu:rod stat.drop.minecraft.fishing_rod
scoreboard objectives add menu:barrier stat.drop.minecraft.barrier
scoreboard objectives add menu:redflower stat.drop.minecraft.red_flower
scoreboard objectives add menu:dplant stat.drop.minecraft.double_plant
scoreboard objectives add menu:clock stat.drop.minecraft.clock
scoreboard objectives add menu:beetroot stat.drop.minecraft.beetroot

scoreboard objectives add twr dummy
scoreboard objectives add twr:state dummy
scoreboard objectives add twr:teams dummy
scoreboard objectives add twr:select_blue stat.drop.minecraft.blue_glazed_terracotta
scoreboard objectives add twr:select_red stat.drop.minecraft.red_glazed_terracotta
scoreboard objectives add twr:select_alea stat.drop.minecraft.barrier
scoreboard objectives add twr:return stat.drop.minecraft.arrow
scoreboard objectives add twr:swordchange dummy
scoreboard objectives add twr:coins dummy
scoreboard objectives add twr:lvl dummy
scoreboard objectives add twr:kills playerKillCount
scoreboard objectives add twr:dead deathCount
scoreboard objectives add twr:gameKills dummy
scoreboard objectives add twr:sb dummy §l§4Tower

scoreboard objectives add ctf dummy
scoreboard objectives add ctf:gameN dummy
scoreboard objectives add ctf:state dummy
scoreboard objectives add ctf:teams dummy
scoreboard objectives add ctf:select_green stat.drop.minecraft.green_glazed_terracotta
scoreboard objectives add ctf:select_org stat.drop.minecraft.orange_glazed_terracotta
scoreboard objectives add ctf:select_alea stat.drop.minecraft.barrier
scoreboard objectives add ctf:return stat.drop.minecraft.arrow
scoreboard objectives add ctf:timeO dummy
scoreboard objectives add ctf:flgO dummy
scoreboard objectives add ctf:has_drap_o dummy
scoreboard objectives add ctf:timeV dummy
scoreboard objectives add ctf:flgV dummy
scoreboard objectives add ctf:has_drap_v dummy
scoreboard objectives add ctf:dead stat.deaths
scoreboard objectives add ctf:deadMSG deathCount
scoreboard objectives add ctf:kill playerKillCount
scoreboard objectives add ctf:coins dummy
scoreboard objectives add ctf:levels dummy
scoreboard objectives add ctf:gameKill dummy
scoreboard objectives add ctf:deathRES stat.deaths
scoreboard objectives add ctf:sb dummy §l§9CTF

scoreboard objectives add pwa dummy
scoreboard objectives add pwa:state dummy
scoreboard objectives add pwa:sb dummy §b§lPearl War

scoreboard objectives add msh dummy
scoreboard objectives add msh:sb dummy §eMob Shooter
scoreboard objectives add msh:state dummy
scoreboard objectives add msh:killEntity totalKillCount
scoreboard objectives add msh:coins dummy
scoreboard objectives add msh:lvl dummy
scoreboard objectives add msh:stock dummy

scoreboard objectives add mcu dummy
scoreboard objectives add mcu:state dummy
scoreboard objectives add mcu:emeralds stat.mineBlock.minecraft.emerald_ore §2Minecube
scoreboard objectives add mcu:kills playerKillCount
scoreboard objectives add mcu:coins dummy
scoreboard objectives add mcu:lvl dummy
scoreboard objectives add mcu:gameKills dummy
scoreboard objectives add mcu:kills playerKillCount
scoreboard objectives add mcu:dead deathCount
scoreboard objectives add mcu:swordchange dummy

scoreboard objectives add cosm:timer dummy

# Scoreboard principale (§r = espace vide)
#scoreboard objectives setdisplay sidebar vgsb
scoreboard players operation §7Connectés: vgsb = Joueurs core:stats
scoreboard players operation §4Tower: vgsb = @e[type=armor_stand,name=twr:joueurs] twr
scoreboard players operation §3CTF: vgsb = @e[type=armor_stand,name=ctf:joueurs] ctf
scoreboard players operation §eRush: vgsb = @e[type=armor_stand,name=ruh:joueurs] ruh
scoreboard players operation §2Minecube: vgsb = @e[type=armor_stand,name=ruh:joueurs] ruh

# Scoreboard Pearl War
scoreboard players set §8Vies: pwa:sb 10

# Scoreboard Tower
scoreboard players set §8Objectif: twr:sb 10
scoreboard players operation §cRouge: twr:sb = @e[type=armor_stand,name=twr:red] twr
scoreboard players operation §9Bleu: twr:sb = @e[type=armor_stand,name=twr:blue] twr

# Scoreboard CTF
scoreboard players set §8Objectif: ctf:sb 5
scoreboard players operation §6Orange: ctf:sb = @e[type=armor_stand,name=ctf:org] ctf
scoreboard players operation §aVerte: ctf:sb = @e[type=armor_stand,name=ctf:green] ctf
scoreboard teams join §6Orange: core:teams
scoreboard teams join §aVerte: core:teams
