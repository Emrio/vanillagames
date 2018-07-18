# Main.mcfunction
# Execute ici toutes les sous fonctions 20 fois par secondes

# Timer une demie seconde (1/2)
scoreboard players add @e[type=armor_stand,name=timer0.5s] core:stats 1
scoreboard players set @e[type=armor_stand,name=timer0.5s,score_core:stats_min=10] core:stats 0

# Timer une seconde
scoreboard players add @e[type=armor_stand,name=timer1s] core:stats 1
scoreboard players set @e[type=armor_stand,name=timer1s,score_core:stats_min=20] core:stats 0

# Timer trois secondes
scoreboard players add @e[type=armor_stand,name=timer3s] core:stats 1
scoreboard players set @e[type=armor_stand,name=timer3s,score_core:stats_min=60] core:stats 0
 
# Timer cinq secondes
scoreboard players add @e[type=armor_stand,name=timer5s] core:stats 1
scoreboard players set @e[type=armor_stand,name=timer5s,score_core:stats_min=100] core:stats 0

# Timer trente secondes
scoreboard players add @e[type=armor_stand,name=timer30s] core:stats 1
scoreboard players set @e[type=armor_stand,name=timer30s,score_core:stats_min=600] core:stats 0

function vg:lobby
function vg:scoreboards/init
function vg:join
function vg:resetbox if @e[type=armor_stand,name=resetbox,score_core:stats_min=1]
function vg:config
function vg:gamesIO if @e[type=armor_stand,name=GamesIO,score_core:stats_min=1]
function vg:scoreboards/teams if @e[type=armor_stand,name=timer1s,score_core:stats_min=18,score_core:stats=18]
function vg:jump

function games:retour

function vg:menu/action
function vg:menu/display

function games:twr/main
function games:ctf/ctf/main
function games:ctf/ctf2/main
function games:ctf/ctf3/main
function games:mcu/main
function games:msh/main

function vg:cosmetics/select


