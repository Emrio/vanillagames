# select.mcfunction
# Définit les différentes cosmetics et leurs effets

# Reset dans les jeux des cosm
	# Cosmetic 1: Note Block
		scoreboard players tag @a[tag=mcu] remove cosm:note
		scoreboard players tag @a[tag=twr] remove cosm:note
		scoreboard players tag @a[tag=ctf] remove cosm:note
		scoreboard players tag @a[tag=ruh] remove cosm:note
		scoreboard players tag @a[tag=pwa] remove cosm:note
	# Cosmetic 2: Demon
		scoreboard players tag @a[tag=mcu] remove cosm:demon
		scoreboard players tag @a[tag=twr] remove cosm:demon
		scoreboard players tag @a[tag=ctf] remove cosm:demon
		scoreboard players tag @a[tag=ruh] remove cosm:demon
		scoreboard players tag @a[tag=pwa] remove cosm:demon
	# Cosmetic 3: Arc en ciel
		scoreboard players tag @a[tag=mcu] remove cosm:aec
		scoreboard players tag @a[tag=twr] remove cosm:aec
		scoreboard players tag @a[tag=ctf] remove cosm:aec
		scoreboard players tag @a[tag=ruh] remove cosm:aec
		scoreboard players tag @a[tag=pwa] remove cosm:aec
	# Cosmetic 4: Arceau de feu
		scoreboard players tag @a[tag=mcu] remove cosm:arcfla
		scoreboard players tag @a[tag=twr] remove cosm:arcfla
		scoreboard players tag @a[tag=ctf] remove cosm:arcfla
		scoreboard players tag @a[tag=ruh] remove cosm:arcfla
		scoreboard players tag @a[tag=pwa] remove cosm:arcfla

# Cosmetic 1: Note Block
	replaceitem entity @a[tag=cosm:note] slot.armor.head noteblock 1 0 {display:{Name:Disco}}
	scoreboard players tag @r[type=armor_stand,tag=note] add cosm:choosenote
	execute @e[type=armor_stand,tag=cosm:choosenote,name=cosm:note1] ~ ~ ~ execute @e[name=timer0.5s,score_core:stats_min=9,score_core:stats=9] ~ ~ ~ execute @a[tag=cosm:note] ~ ~ ~ particle note ~ ~2 ~ 0.2 0.2 0.2 25 0 force
		execute @e[type=armor_stand,tag=cosm:choosenote,name=cosm:note1] ~ ~ ~ execute @e[name=timer0.5s,score_core:stats_min=9,score_core:stats=9] ~ ~ ~ execute @a[tag=cosm:note] ~ ~ ~ execute @a[r=7,rm=1] ~ ~ ~ playsound minecraft:block.note.chime master @s ~ ~ ~ 1 1
	execute @e[type=armor_stand,tag=cosm:choosenote,name=cosm:note2] ~ ~ ~ execute @e[name=timer0.5s,score_core:stats_min=9,score_core:stats=9] ~ ~ ~ execute @a[tag=cosm:note] ~ ~ ~ particle note ~ ~2 ~ 0.2 0.2 0.2 31.5 0 force
		execute @e[type=armor_stand,tag=cosm:choosenote,name=cosm:note2] ~ ~ ~ execute @e[name=timer0.5s,score_core:stats_min=9,score_core:stats=9] ~ ~ ~ execute @a[tag=cosm:note] ~ ~ ~ execute @a[r=7,rm=1] ~ ~ ~ playsound minecraft:block.note.guitar master @s ~ ~ ~ 1 0.5
	execute @e[type=armor_stand,tag=cosm:choosenote,name=cosm:note3] ~ ~ ~ execute @e[name=timer0.5s,score_core:stats_min=9,score_core:stats=9] ~ ~ ~ execute @a[tag=cosm:note] ~ ~ ~ particle note ~ ~2 ~ 0.2 0.2 0.2 2.90 0 force
		execute @e[type=armor_stand,tag=cosm:choosenote,name=cosm:note3] ~ ~ ~ execute @e[name=timer0.5s,score_core:stats_min=9,score_core:stats=9] ~ ~ ~ execute @a[tag=cosm:note] ~ ~ ~ execute @a[r=7,rm=1] ~ ~ ~ playsound minecraft:block.note.harp master @s ~ ~ ~ 1 1
	execute @e[type=armor_stand,tag=cosm:choosenote,name=cosm:note4] ~ ~ ~ execute @e[name=timer0.5s,score_core:stats_min=9,score_core:stats=9] ~ ~ ~ execute @a[tag=cosm:note] ~ ~ ~ particle note ~ ~2 ~ 0.2 0.2 0.2 4.587 0 force
		execute @e[type=armor_stand,tag=cosm:choosenote,name=cosm:note4] ~ ~ ~ execute @e[name=timer0.5s,score_core:stats_min=9,score_core:stats=9] ~ ~ ~ execute @a[tag=cosm:note] ~ ~ ~ execute @a[r=7,rm=1] ~ ~ ~ playsound minecraft:block.note.xylophone master @s ~ ~ ~ 1 1
	execute @e[type=armor_stand,tag=cosm:choosenote,name=cosm:note5] ~ ~ ~ execute @e[name=timer0.5s,score_core:stats_min=9,score_core:stats=9] ~ ~ ~ execute @a[tag=cosm:note] ~ ~ ~ particle note ~ ~2 ~ 0.2 0.2 0.2 36.21 0 force
		execute @e[type=armor_stand,tag=cosm:choosenote,name=cosm:note5] ~ ~ ~ execute @e[name=timer0.5s,score_core:stats_min=9,score_core:stats=9] ~ ~ ~ execute @a[tag=cosm:note] ~ ~ ~ execute @a[r=7,rm=1] ~ ~ ~ playsound minecraft:block.note.bell master @s ~ ~ ~ 1 0.5
	scoreboard players tag @e[type=armor_stand,tag=note] remove cosm:choosenote
# Cosmetic 2: Demon
	scoreboard players add @e[name=cosm:demon] cosm:timer 1
	replaceitem entity @a[tag=cosm:demon] slot.armor.head skull 1 3 {display:{Name:"Fire Demon"},SkullOwner:{Id:"c94c13fd-72af-48ea-8a5e-1456cc281423",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDVjNGViNGQxMGQ4NzdjYmJmMjFmYTRkNjc3Mzg1YjI0ZGQ1MWQwYjgxYzEwNmJmODY3M2YxOTk5ZWE5In19fQ=="}]}}}
	execute @e[type=armor_stand,name=cosm:demon,score_cosm:timer_min=1,score_cosm:timer=1] ~ ~ ~ execute @a[tag=cosm:demon] ~ ~ ~ particle flame ~ ~2.1 ~0.3 0 0 0 0.1
    execute @e[type=armor_stand,name=cosm:demon,score_cosm:timer_min=3,score_cosm:timer=3] ~ ~ ~ execute @a[tag=cosm:demon] ~ ~ ~ particle flame ~0.2 ~2.1 ~0.2 0 0 0 0.11
    execute @e[type=armor_stand,name=cosm:demon,score_cosm:timer_min=5,score_cosm:timer=5] ~ ~ ~ execute @a[tag=cosm:demon] ~ ~ ~ particle flame ~0.3 ~2.1 ~ 0 0 0 0.1
    execute @e[type=armor_stand,name=cosm:demon,score_cosm:timer_min=7,score_cosm:timer=7] ~ ~ ~ execute @a[tag=cosm:demon] ~ ~ ~ particle flame ~0.2 ~2.1 ~-0.2 0 0 0 0.1
    execute @e[type=armor_stand,name=cosm:demon,score_cosm:timer_min=9,score_cosm:timer=9] ~ ~ ~ execute @a[tag=cosm:demon] ~ ~ ~ particle flame ~ ~2.1 ~-0.3 0 0 0 0.1
    execute @e[type=armor_stand,name=cosm:demon,score_cosm:timer_min=11,score_cosm:timer=11] ~ ~ ~ execute @a[tag=cosm:demon] ~ ~ ~ particle flame ~-0.2 ~2.1 ~-0.2 0 0 0 0.1
    execute @e[type=armor_stand,name=cosm:demon,score_cosm:timer_min=13,score_cosm:timer=13] ~ ~ ~ execute @a[tag=cosm:demon] ~ ~ ~ particle flame ~-0.3 ~2.1 ~ 0 0 0 0.1
    execute @e[type=armor_stand,name=cosm:demon,score_cosm:timer_min=15,score_cosm:timer=15] ~ ~ ~ execute @a[tag=cosm:demon] ~ ~ ~ particle flame ~-0.2 ~2.1 ~0.2 0 0 0 0.1
    scoreboard players set @e[name=cosm:demon,score_cosm:timer_min=15,type=armor_stand] cosm:timer 0
# Cosmetic 3: Arc En Ciel
	execute @a[tag=cosm:aec] ~ ~ ~ particle mobSpell ~ ~ ~ 0 0 0 0.15 2
# Cosmetic 4: Arceau de feu
	scoreboard players add @e[name=cosm:arcfla] cosm:timer 1
	execute @e[name=cosm:arcfla,score_cosm:timer_min=1,score_cosm:timer=1] ~ ~ ~ execute @e[tag=cosm:arcfla] ~ ~ ~ /particle flame ~ ~0.5 ~-0.75 0 0 0 0.1
	execute @e[name=cosm:arcfla,score_cosm:timer_min=3,score_cosm:timer=3] ~ ~ ~ execute @e[tag=cosm:arcfla] ~ ~ ~ /particle flame ~-0.25 ~0.65 ~-0.5 0 0 0 0.1
	execute @e[name=cosm:arcfla,score_cosm:timer_min=5,score_cosm:timer=5] ~ ~ ~ execute @e[tag=cosm:arcfla] ~ ~ ~ /particle flame ~-0.4 ~0.8 ~-0.25 0 0 0 0.1
	execute @e[name=cosm:arcfla,score_cosm:timer_min=7,score_cosm:timer=7] ~ ~ ~ execute @e[tag=cosm:arcfla] ~ ~ ~ /particle flame ~-0.5 ~1 ~ 0 0 0 0.1
	execute @e[name=cosm:arcfla,score_cosm:timer_min=9,score_cosm:timer=9] ~ ~ ~ execute @e[tag=cosm:arcfla] ~ ~ ~ /particle flame ~-0.4 ~1.2 ~0.35 0 0 0 0.1
	execute @e[name=cosm:arcfla,score_cosm:timer_min=11,score_cosm:timer=11] ~ ~ ~ execute @e[tag=cosm:arcfla] ~ ~ ~ /particle flame ~-0.25 ~1.35 ~0.6 0 0 0 0.1
	execute @e[name=cosm:arcfla,score_cosm:timer_min=13,score_cosm:timer=13] ~ ~ ~ execute @e[tag=cosm:arcfla] ~ ~ ~ /particle flame ~ ~1.5 ~0.75 0 0 0 0.1
	execute @e[name=cosm:arcfla,score_cosm:timer_min=15,score_cosm:timer=15] ~ ~ ~ execute @e[tag=cosm:arcfla] ~ ~ ~ /particle flame ~0.25 ~1.35 ~0.6 0 0 0 0.1
	execute @e[name=cosm:arcfla,score_cosm:timer_min=17,score_cosm:timer=17] ~ ~ ~ execute @e[tag=cosm:arcfla] ~ ~ ~ /particle flame ~0.4 ~1.2 ~0.35 0 0 0 0.1
	execute @e[name=cosm:arcfla,score_cosm:timer_min=19,score_cosm:timer=19] ~ ~ ~ execute @e[tag=cosm:arcfla] ~ ~ ~ /particle flame ~0.5 ~1 ~ 0 0 0 0.1
	execute @e[name=cosm:arcfla,score_cosm:timer_min=21,score_cosm:timer=21] ~ ~ ~ execute @e[tag=cosm:arcfla] ~ ~ ~ /particle flame ~0.4 ~0.8 ~-0.25 0 0 0 0.1
	execute @e[name=cosm:arcfla,score_cosm:timer_min=23,score_cosm:timer=23] ~ ~ ~ execute @e[tag=cosm:arcfla] ~ ~ ~ /particle flame ~0.25 ~0.65 ~-0.5 0 0 0 0.1
	scoreboard players set @e[name=cosm:arcfla,score_cosm:timer_min=23] cosm:timer 0


