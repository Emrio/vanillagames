# Daily.mcfunction
# Récompense quotidienne

execute @p[tag=!dailyReward] ~ ~ ~ tellraw @s ["",{"text":"Vous ne pouvez plus recevoir de récompense pour aujourd'hui ! Revenez demain ;)","color":"gray"}]

      execute @p[tag=dailyReward] ~ ~ ~ summon armor_stand ~ ~ ~ {Invisible:1b,CustomName:"2",Tags:["dailyAlea"],NoGravity:1b}
      execute @p[tag=dailyReward] ~ ~ ~ summon armor_stand ~ ~ ~ {Invisible:1b,CustomName:"2",Tags:["dailyAlea"],NoGravity:1b}

      execute @p[tag=dailyReward] ~ ~ ~ summon armor_stand ~ ~ ~ {Invisible:1b,CustomName:"5",Tags:["dailyAlea"],NoGravity:1b}
      execute @p[tag=dailyReward] ~ ~ ~ summon armor_stand ~ ~ ~ {Invisible:1b,CustomName:"5",Tags:["dailyAlea"],NoGravity:1b}
      execute @p[tag=dailyReward] ~ ~ ~ summon armor_stand ~ ~ ~ {Invisible:1b,CustomName:"5",Tags:["dailyAlea"],NoGravity:1b}

      execute @p[tag=dailyReward] ~ ~ ~ summon armor_stand ~ ~ ~ {Invisible:1b,CustomName:"10",Tags:["dailyAlea"],NoGravity:1b}
      execute @p[tag=dailyReward] ~ ~ ~ summon armor_stand ~ ~ ~ {Invisible:1b,CustomName:"10",Tags:["dailyAlea"],NoGravity:1b}
      execute @p[tag=dailyReward] ~ ~ ~ summon armor_stand ~ ~ ~ {Invisible:1b,CustomName:"10",Tags:["dailyAlea"],NoGravity:1b}

      execute @p[tag=dailyReward] ~ ~ ~ summon armor_stand ~ ~ ~ {Invisible:1b,CustomName:"20",Tags:["dailyAlea"],NoGravity:1b}
      execute @p[tag=dailyReward] ~ ~ ~ summon armor_stand ~ ~ ~ {Invisible:1b,CustomName:"20",Tags:["dailyAlea"],NoGravity:1b}

      execute @p[tag=dailyReward] ~ ~ ~ summon armor_stand ~ ~ ~ {Invisible:1b,CustomName:"250",Tags:["dailyAlea"],NoGravity:1b}
      execute @p[tag=dailyReward] ~ ~ ~ summon armor_stand ~ ~ ~ {Invisible:1b,CustomName:"999",Tags:["dailyAlea"],NoGravity:1b}

execute @p[tag=dailyReward] ~ ~ ~ scoreboard players tag @r[type=armor_stand,tag=dailyAlea,c=1] add selected

      execute @p[tag=dailyReward] ~ ~ ~ execute @e[type=armor_stand,name=2,tag=selected] ~ ~ ~ tellraw @p[tag=dailyReward] ["",{"text":"Vous avez obtenu ","color":"gray"},{"text":"2","color":"gold","bold":"true"},{"text":" coins ","color":"gold","bold":"false"},{"text":"aujourd'hui ! Revenez demain et retentez votre chance :)","color":"gray"}]
      execute @p[tag=dailyReward] ~ ~ ~ execute @e[type=armor_stand,name=2,tag=selected] ~ ~ ~ scoreboard players add @p[tag=dailyReward] stats:coin 2

      execute @p[tag=dailyReward] ~ ~ ~ execute @e[type=armor_stand,name=5,tag=selected] ~ ~ ~ tellraw @p[tag=dailyReward] ["",{"text":"Vous avez obtenu ","color":"gray"},{"text":"5","color":"gold","bold":"true"},{"text":" coins ","color":"gold","bold":"false"},{"text":"aujourd'hui ! Revenez demain pour tentez de recevoir un meilleur prix :)","color":"gray"}]
      execute @p[tag=dailyReward] ~ ~ ~ execute @e[type=armor_stand,name=5,tag=selected] ~ ~ ~ scoreboard players add @p[tag=dailyReward] stats:coin 5

      execute @p[tag=dailyReward] ~ ~ ~ execute @e[type=armor_stand,name=10,tag=selected] ~ ~ ~ tellraw @p[tag=dailyReward] ["",{"text":"Vous avez obtenu ","color":"gray"},{"text":"10","color":"gold","bold":"true"},{"text":" coins ","color":"gold","bold":"false"},{"text":"aujourd'hui ! Revenez demain pour tentez de recevoir un meilleur prix :)","color":"gray"}]
      execute @p[tag=dailyReward] ~ ~ ~ execute @e[type=armor_stand,name=10,tag=selected] ~ ~ ~ scoreboard players add @p[tag=dailyReward] stats:coin 10

      execute @p[tag=dailyReward] ~ ~ ~ execute @e[type=armor_stand,name=20,tag=selected] ~ ~ ~ tellraw @p[tag=dailyReward] ["",{"text":"Vous avez obtenu ","color":"gray"},{"text":"20","color":"gold","bold":"true"},{"text":" coins ","color":"gold","bold":"false"},{"text":"aujourd'hui ! Revenez demain pour tentez de recevoir un meilleur prix :)","color":"gray"}]
      execute @p[tag=dailyReward] ~ ~ ~ execute @e[type=armor_stand,name=20,tag=selected] ~ ~ ~ scoreboard players add @p[tag=dailyReward] stats:coin 20

      execute @p[tag=dailyReward] ~ ~ ~ execute @e[type=armor_stand,name=250,tag=selected] ~ ~ ~ tellraw @p[tag=dailyReward] ["",{"text":"Vous avez obtenu ","color":"gray"},{"text":"250","color":"gold","bold":"true"},{"text":" coins ","color":"gold","bold":"false"},{"text":"aujourd'hui ! C'était votre jour de chance aujourd'hui :D","color":"gray"}]
      execute @p[tag=dailyReward] ~ ~ ~ execute @e[type=armor_stand,name=250,tag=selected] ~ ~ ~ scoreboard players add @p[tag=dailyReward] stats:coin 250

      execute @p[tag=dailyReward] ~ ~ ~ execute @e[type=armor_stand,name=999,tag=selected] ~ ~ ~ tellraw @a[tag=spawn] ["",{"selector":"@p[tag=dailyReward]"},{"text":" a obtenu ","color":"light_purple"},{"text":"1","color":"gold","bold":"true"},{"text":" fragment VIP  ","color":"gold","bold":"false"},{"text":"aujourd'hui. Félicitations à lui !","color":"light_purple"}]
      execute @p[tag=dailyReward] ~ ~ ~ execute @e[type=armor_stand,name=999,tag=selected] ~ ~ ~ tellraw @p[tag=dailyReward] ["",{"text":"Vous avez obtenu ","color":"gray"},{"text":"1","color":"gold","bold":"true"},{"text":" fragment VIP  ","color":"gold","bold":"false"},{"text":"aujourd'hui ! C'était votre jour de chance aujourd'hui :D\nObtenez 75 fragments pour avoir le grade VIP et 150 pour un VIP+ !","color":"gray"}]
      execute @p[tag=dailyReward] ~ ~ ~ execute @e[type=armor_stand,name=999,tag=selected] ~ ~ ~ scoreboard players add @p[tag=dailyReward] stats:fragvip 1

execute @p[tag=dailyReward] ~ ~ ~ kill @e[tag=dailyAlea,c=40]

scoreboard players tag @p[tag=dailyReward] remove dailyReward


# 16,66% 2        2
# 25% 5           3
# 25% 10          3
# 16,66% 20       2
# 8,33% 250       1
# 8,33% Fragment  1
