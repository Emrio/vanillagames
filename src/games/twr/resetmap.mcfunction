# Resetmap.mcfunction
# Reset TWR map


# FILL AIR 1
  scoreboard players set @e[type=armor_stand,name=twr:reset1,x=-10046,y=0,z=-10040,dx=1,dy=254,dz=1] twr 1
  execute @e[name=twr:reset1,score_twr_min=1,score_twr=1] ~ ~ ~ fill ~ ~ ~ ~128 ~ ~128 air
  execute @e[name=twr:reset1,score_twr_min=1,score_twr=1] ~ ~ ~ tp @s ~ ~1 ~
  tp @e[type=armor_stand,name=twr:reset1,x=-10046,y=254,z=-10040,dx=1,dy=10,dz=1] -10046 1 -9912
  tp @e[type=armor_stand,name=twr:reset1,x=-10046,y=254,z=-9912,dx=1,dy=10,dz=1] -10000 34 -10000

# CLONE MAP 2
  scoreboard players set @e[type=armor_stand,name=twr:reset1,x=-10000,y=0,z=-10000,dx=1,dy=86,dz=1] twr 3
  #execute @e[name=twr:reset1,score_twr_min=1] ~ ~ ~ clone ~9864 ~ ~9821 ~9899 ~ ~9996 ~ ~ ~
  execute @e[name=twr:reset1,score_twr_min=3,score_twr=3] ~ ~ ~ clone ~9956 ~ ~10033 ~9991 ~ ~10208 ~ ~ ~
  execute @e[name=twr:reset1,score_twr_min=3,score_twr=3] ~ ~ ~ tp @s ~ ~1 ~
  scoreboard players set @e[type=armor_stand,name=twr:reset1,x=-10000,y=87,z=-10000,dx=1,dy=100,dz=1,score_twr_min=3,score_twr=3] twr 4
  execute @e[type=armor_stand,name=twr:reset1,score_twr_min=4,score_twr=4] ~ ~ ~ tp @a[tag=twr] @e[type=armor_stand,name=resetbox]
  scoreboard players set @e[type=armor_stand,name=twr:reset1,score_twr_min=4] twr -1
