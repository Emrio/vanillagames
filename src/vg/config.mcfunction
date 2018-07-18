# config.mcfunction
# Configuration du serveur gamerule...


# gamerules
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doLimitedCrafting false
gamerule doMobLoot true
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule keepInventory true
gamerule gameLoopFunction vg:main
gamerule mobGriefing false
gamerule showDeathMessages false
gamerule spawnRadius 0

execute @e[type=armor_stand,name=resetbox] ~ ~ ~ setworldspawn ~ ~ ~

# replaceS itemS

replaceitem entity @a[tag=elytra] slot.armor.chest elytra 1 0 {display:{Name:"§aElytra Infinie"}}
replaceitem entity @a[tag=elytra,score_core:menu=0,tag=spawn] slot.hotbar.8 fireworks 1 0 {Fireworks:{Flight:13},display:{Name:"§4Propulseur"}}
