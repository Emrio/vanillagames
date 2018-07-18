# jump.mcfunction
# Gère les jumps des lobbys


# Jump lobby principal

	execute @e[type=armor_stand,name=jump:start] ~ ~ ~ execute @a[tag=!jump:ig,r=1] ~ ~ ~ tellraw @s [{"text":"Jump >","color":"gold"},{"text":" Vous avez démarrer le jump, bonne chance !","color":"green"}]
	execute @e[type=armor_stand,name=jump:start] ~ ~ ~ execute @a[tag=!jump:ig,r=1] ~ ~ ~ scoreboard players set @s core:menu 17
	execute @e[type=armor_stand,name=jump:start] ~ ~ ~ execute @a[tag=!jump:ig,r=1] ~ ~ ~ scoreboard players set @s jump:chckp 1
	execute @e[type=armor_stand,name=jump:start] ~ ~ ~ execute @a[tag=!jump:ig,r=1] ~ ~ ~ scoreboard players set @s jump:sec 0
	execute @e[type=armor_stand,name=jump:start] ~ ~ ~ execute @a[tag=!jump:ig,r=1] ~ ~ ~ scoreboard players set @s jump:min 0
	execute @e[type=armor_stand,name=jump:start] ~ ~ ~ execute @a[tag=!jump:ig,r=1] ~ ~ ~ scoreboard players tag @s add nobc
	execute @e[type=armor_stand,name=jump:start] ~ ~ ~ execute @a[tag=!jump:ig,r=1] ~ ~ ~ scoreboard players tag @s add jump:ig

	# State for fall restart

	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ dirt 0 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ dirt 2 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ grass 0 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-0.5 ~ leaves -1 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-0.5 ~ leaves2 -1 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ dirt 1 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ log -1 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ concrete -1 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ quartz_block 1 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ quartz_block 2 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ quartz_block 3 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ quartz_block 4 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ quartz_block 5 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ quartz_block 6 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ quartz_block 7 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ quartz_block 8 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ quartz_block 9 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ quartz_block 10 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ quartz_block 11 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ quartz_block 12 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ quartz_block 13 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ quartz_block 14 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ quartz_block 15 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ quartz_stairs -1 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ stone_slab 7 scoreboard players set @s jump:state 0
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ concrete 15 scoreboard players set @s jump:state 0

	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ emerald_block 0 scoreboard players set @s jump:state 1
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ stained_glass -1 scoreboard players set @s jump:state 2
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ stained_glass_pane -1 scoreboard players set @s jump:state 3
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ slime 0 scoreboard players set @s jump:state 4
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ air 0 scoreboard players set @s jump:state 5
	execute @e[type=armor_stand,name=jump:start] ~ ~ ~ execute @p[tag=jump:ig,r=2] ~ ~ ~ scoreboard players set @s jump:state 6
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ wooden_slab -1 scoreboard players set @s jump:state 7
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ coal_ore -1 scoreboard players set @s jump:state 8
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ wool 14 scoreboard players set @s jump:state 9
	execute @a[tag=jump:ig] ~ ~ ~ detect ~ ~-1 ~ fence 1 scoreboard players set @s jump:state 10
	scoreboard players tag @a[tag=jump:ig,score_jump:state_min=0,score_jump:state_min=0] add jump:death
	execute @a[tag=jump:death,score_jump:state_min=0,score_jump:state=0] ~ ~ ~ tellraw @s ["§6Jump > §aVous êtes tombé, retour au checkpoint !"]
	execute @a[tag=jump:ig,score_jump:state_min=0,score_jump:state=0,score_jump:chckp_min=1,score_jump:chckp=1] ~ ~ ~ tp @s @e[type=armor_stand,name=jump:start]
	execute @a[tag=jump:ig,score_jump:state_min=0,score_jump:state=0,score_jump:chckp_min=2,score_jump:chckp=2] ~ ~ ~ tp @s -9974 46 94 -45 0
	execute @a[tag=jump:ig,score_jump:state_min=0,score_jump:state=0,score_jump:chckp_min=3,score_jump:chckp=3] ~ ~ ~ tp @s -9926 39 97 -35 0
	execute @a[tag=jump:ig,score_jump:state_min=0,score_jump:state=0,score_jump:chckp_min=4,score_jump:chckp=4] ~ ~ ~ tp @s -9915 54 99 -90 0
	execute @a[tag=jump:ig,score_jump:state_min=0,score_jump:state=0,score_jump:chckp_min=5,score_jump:chckp=5] ~ ~ ~ tp @s -9861 29 94 -30 30
	execute @a[tag=jump:ig,score_jump:state_min=0,score_jump:state=0,score_jump:chckp_min=6,score_jump:chckp=6] ~ ~ ~ tp @s -9840 26 121 -10 0
	execute @a[tag=jump:ig,score_jump:state_min=0,score_jump:state=0,score_jump:chckp_min=7,score_jump:chckp=7] ~ ~ ~ tp @s -9820 36 115 135 0
	scoreboard players tag @a remove jump:death

	# Checkpoints

	execute @e[type=armor_stand,name=jump:chckp1] ~ ~ ~ execute @a[tag=jump:ig,score_jump:chckp_min=1,score_jump:chckp=1,r=1,score_jump:sec_min=0,score_jump:sec=9] ~ ~ ~ tellraw @s ["",{"text":"Jump >","color":"gold"},{"text":" "},{"text":"Le premier checkpoint a été passé !","color":"green"},{"text":" "},{"text":"Temps:","color":"blue"},{"text":" "},{"score":{"name":"@s","objective":"jump:min"},"color":"aqua"},{"text":":","color":"black"},{"text":"0","color":"aqua"},{"score":{"name":"@s","objective":"jump:sec"},"color":"aqua"}]
	execute @e[type=armor_stand,name=jump:chckp1] ~ ~ ~ execute @a[tag=jump:ig,score_jump:chckp_min=1,score_jump:chckp=1,r=1,score_jump:sec_min=10,score_jump:sec=59] ~ ~ ~ tellraw @s ["",{"text":"Jump >","color":"gold"},{"text":" "},{"text":"Le premier checkpoint a été passé !","color":"green"},{"text":" "},{"text":"Temps:","color":"blue"},{"text":" "},{"score":{"name":"@s","objective":"jump:min"},"color":"aqua"},{"text":":","color":"black"},{"score":{"name":"@s","objective":"jump:sec"},"color":"aqua"}]
	execute @e[type=armor_stand,name=jump:chckp1] ~ ~ ~ execute @a[tag=jump:ig,score_jump:chckp_min=1,score_jump:chckp=1,r=1] ~ ~ ~ scoreboard players set @s jump:chckp 2

	execute @e[type=armor_stand,name=jump:chckp2] ~ ~ ~ execute @a[tag=jump:ig,score_jump:chckp_min=2,score_jump:chckp=2,r=1,score_jump:sec_min=0,score_jump:sec=9] ~ ~ ~ tellraw @s ["",{"text":"Jump >","color":"gold"},{"text":" "},{"text":"Le second checkpoint a été passé !","color":"green"},{"text":" "},{"text":"Temps:","color":"blue"},{"text":" "},{"score":{"name":"@s","objective":"jump:min"},"color":"aqua"},{"text":":","color":"black"},{"text":"0","color":"aqua"},{"score":{"name":"@s","objective":"jump:sec"},"color":"aqua"}]
	execute @e[type=armor_stand,name=jump:chckp2] ~ ~ ~ execute @a[tag=jump:ig,score_jump:chckp_min=2,score_jump:chckp=2,r=1,score_jump:sec_min=10,score_jump:sec=59] ~ ~ ~ tellraw @s ["",{"text":"Jump >","color":"gold"},{"text":" "},{"text":"Le second checkpoint a été passé !","color":"green"},{"text":" "},{"text":"Temps:","color":"blue"},{"text":" "},{"score":{"name":"@s","objective":"jump:min"},"color":"aqua"},{"text":":","color":"black"},{"score":{"name":"@s","objective":"jump:sec"},"color":"aqua"}]
	execute @e[type=armor_stand,name=jump:chckp2] ~ ~ ~ execute @a[tag=jump:ig,score_jump:chckp_min=2,score_jump:chckp=2,r=1] ~ ~ ~ scoreboard players set @s jump:chckp 3

	execute @e[type=armor_stand,name=jump:chckp3] ~ ~ ~ execute @a[tag=jump:ig,score_jump:chckp_min=3,score_jump:chckp=3,r=1,score_jump:sec_min=0,score_jump:sec=9] ~ ~ ~ tellraw @s ["",{"text":"Jump >","color":"gold"},{"text":" "},{"text":"Le troisième checkpoint a été passé !","color":"green"},{"text":" "},{"text":"Temps:","color":"blue"},{"text":" "},{"score":{"name":"@s","objective":"jump:min"},"color":"aqua"},{"text":":","color":"black"},{"text":"0","color":"aqua"},{"score":{"name":"@s","objective":"jump:sec"},"color":"aqua"}]
	execute @e[type=armor_stand,name=jump:chckp3] ~ ~ ~ execute @a[tag=jump:ig,score_jump:chckp_min=3,score_jump:chckp=3,r=1,score_jump:sec_min=10,score_jump:sec=59] ~ ~ ~ tellraw @s ["",{"text":"Jump >","color":"gold"},{"text":" "},{"text":"Le troisième checkpoint a été passé !","color":"green"},{"text":" "},{"text":"Temps:","color":"blue"},{"text":" "},{"score":{"name":"@s","objective":"jump:min"},"color":"aqua"},{"text":":","color":"black"},{"score":{"name":"@s","objective":"jump:sec"},"color":"aqua"}]
	execute @e[type=armor_stand,name=jump:chckp3] ~ ~ ~ execute @a[tag=jump:ig,score_jump:chckp_min=3,score_jump:chckp=3,r=1] ~ ~ ~ scoreboard players set @s jump:chckp 4

	execute @e[type=armor_stand,name=jump:chckp4] ~ ~ ~ execute @a[tag=jump:ig,score_jump:chckp_min=4,score_jump:chckp=4,r=1,score_jump:sec_min=0,score_jump:sec=9] ~ ~ ~ tellraw @s ["",{"text":"Jump >","color":"gold"},{"text":" "},{"text":"Le quatrième checkpoint a été passé !","color":"green"},{"text":" "},{"text":"Temps:","color":"blue"},{"text":" "},{"score":{"name":"@s","objective":"jump:min"},"color":"aqua"},{"text":":","color":"black"},{"text":"0","color":"aqua"},{"score":{"name":"@s","objective":"jump:sec"},"color":"aqua"}]
	execute @e[type=armor_stand,name=jump:chckp4] ~ ~ ~ execute @a[tag=jump:ig,score_jump:chckp_min=4,score_jump:chckp=4,r=1,score_jump:sec_min=10,score_jump:sec=59] ~ ~ ~ tellraw @s ["",{"text":"Jump >","color":"gold"},{"text":" "},{"text":"Le quatrième checkpoint a été passé !","color":"green"},{"text":" "},{"text":"Temps:","color":"blue"},{"text":" "},{"score":{"name":"@s","objective":"jump:min"},"color":"aqua"},{"text":":","color":"black"},{"score":{"name":"@s","objective":"jump:sec"},"color":"aqua"}]
	execute @e[type=armor_stand,name=jump:chckp4] ~ ~ ~ execute @a[tag=jump:ig,score_jump:chckp_min=4,score_jump:chckp=4,r=1] ~ ~ ~ scoreboard players set @s jump:chckp 5

	execute @e[type=armor_stand,name=jump:chckp5] ~ ~ ~ execute @a[tag=jump:ig,score_jump:chckp_min=5,score_jump:chckp=5,r=1,score_jump:sec_min=0,score_jump:sec=9] ~ ~ ~ tellraw @s ["",{"text":"Jump >","color":"gold"},{"text":" "},{"text":"Le cinquième checkpoint a été passé !","color":"green"},{"text":" "},{"text":"Temps:","color":"blue"},{"text":" "},{"score":{"name":"@s","objective":"jump:min"},"color":"aqua"},{"text":":","color":"black"},{"text":"0","color":"aqua"},{"score":{"name":"@s","objective":"jump:sec"},"color":"aqua"}]
	execute @e[type=armor_stand,name=jump:chckp5] ~ ~ ~ execute @a[tag=jump:ig,score_jump:chckp_min=5,score_jump:chckp=5,r=1,score_jump:sec_min=10,score_jump:sec=59] ~ ~ ~ tellraw @s ["",{"text":"Jump >","color":"gold"},{"text":" "},{"text":"Le cinquième checkpoint a été passé !","color":"green"},{"text":" "},{"text":"Temps:","color":"blue"},{"text":" "},{"score":{"name":"@s","objective":"jump:min"},"color":"aqua"},{"text":":","color":"black"},{"score":{"name":"@s","objective":"jump:sec"},"color":"aqua"}]
	execute @e[type=armor_stand,name=jump:chckp5] ~ ~ ~ execute @a[tag=jump:ig,score_jump:chckp_min=5,score_jump:chckp=5,r=1] ~ ~ ~ scoreboard players set @s jump:chckp 6

	execute @e[type=armor_stand,name=jump:chckp6] ~ ~ ~ execute @a[tag=jump:ig,score_jump:chckp_min=6,score_jump:chckp=6,r=1,score_jump:sec_min=0,score_jump:sec=9] ~ ~ ~ tellraw @s ["",{"text":"Jump >","color":"gold"},{"text":" "},{"text":"Le sixième checkpoint a été passé !","color":"green"},{"text":" "},{"text":"Temps:","color":"blue"},{"text":" "},{"score":{"name":"@s","objective":"jump:min"},"color":"aqua"},{"text":":","color":"black"},{"text":"0","color":"aqua"},{"score":{"name":"@s","objective":"jump:sec"},"color":"aqua"}]
	execute @e[type=armor_stand,name=jump:chckp6] ~ ~ ~ execute @a[tag=jump:ig,score_jump:chckp_min=6,score_jump:chckp=6,r=1,score_jump:sec_min=10,score_jump:sec=59] ~ ~ ~ tellraw @s ["",{"text":"Jump >","color":"gold"},{"text":" "},{"text":"Le sixième checkpoint a été passé !","color":"green"},{"text":" "},{"text":"Temps:","color":"blue"},{"text":" "},{"score":{"name":"@s","objective":"jump:min"},"color":"aqua"},{"text":":","color":"black"},{"score":{"name":"@s","objective":"jump:sec"},"color":"aqua"}]
	execute @e[type=armor_stand,name=jump:chckp6] ~ ~ ~ execute @a[tag=jump:ig,score_jump:chckp_min=6,score_jump:chckp=6,r=1] ~ ~ ~ scoreboard players set @s jump:chckp 7


	# Timer

	execute @e[type=armor_stand,name=timer1s,score_core:stats_min=19,score_core:stats=19] ~ ~ ~ scoreboard players add @a[tag=jump:ig] jump:sec 1
	scoreboard players add @a[tag=jump:ig,score_jump:sec_min=60,score_jump:sec=60] jump:min 1
	scoreboard players set @a[tag=jump:ig,score_jump:sec_min=60,score_jump:sec=60] jump:sec 0
	execute @a[tag=jump:ig,score_jump:sec_min=0,score_jump:sec=9] ~ ~ ~ title @s actionbar [{"score":{"name":"@s","objective":"jump:min"},"color":"aqua"},{"text":":","color":"black"},{"text":"0","color":"aqua"},{"score":{"name":"@s","objective":"jump:sec"},"color":"aqua"}]
	execute @a[tag=jump:ig,score_jump:sec_min=10,score_jump:sec=59] ~ ~ ~ title @s actionbar [{"score":{"name":"@s","objective":"jump:min"},"color":"aqua"},{"text":":","color":"black"},{"score":{"name":"@s","objective":"jump:sec"},"color":"aqua"}]
