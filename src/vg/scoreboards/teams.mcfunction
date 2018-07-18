# Teams.mcfunction
# Met les teams aux joueurs fictifs


scoreboard teams join core:teams §cRouge:
scoreboard teams join core:teams §9Bleu:

# Grades
scoreboard teams add grade:joueur §8Joueur
scoreboard teams add grade:fonda §cFondateur
scoreboard teams add grade:vip §eVIP
scoreboard teams add grade:vipp §bVIP+
scoreboard teams add grade:elite §3Elite
scoreboard teams add grade:admin §6Administrateur
scoreboard teams add grade:modo §9Modérateur

# Toutes les teams
scoreboard teams add twr:red §4Tower §cRouge
scoreboard teams option twr:red color red
scoreboard teams option twr:red collisionRule never
scoreboard teams option twr:red friendlyfire false

scoreboard teams add twr:blue §4Tower §9Bleu
scoreboard teams option twr:blue color blue
scoreboard teams option twr:blue collisionRule never
scoreboard teams option twr:blue friendlyfire false

scoreboard teams add ctf:org §9CTF §6Orange
scoreboard teams option ctf:org color gold
scoreboard teams option ctf:org collisionRule never
scoreboard teams option ctf:org friendlyfire false
scoreboard teams option ctf:org nametagVisibility hideForOtherTeams

scoreboard teams add ctf:green §9CTF §2Vert
scoreboard teams option ctf:green color green
scoreboard teams option ctf:green collisionRule never
scoreboard teams option ctf:green friendlyfire false
scoreboard teams option ctf:green nametagVisibility hideForOtherTeams

scoreboard teams add mcu §2Minecube
scoreboard teams option mcu color dark_green
scoreboard teams option mcu collisionRule never
scoreboard teams option mcu friendlyfire true

scoreboard teams add msh §eMobShooter
scoreboard teams option msh color yellow
scoreboard teams option msh collisionRule never
scoreboard teams option msh friendlyfire true