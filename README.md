# Minetest bac mod

This is my first public mod

## What it does

It adds 1 node, 4 tools and 1 bit of food. The one node is called a bac box it is a cube with the top off (the is middle hollow). It will generate mese when in water.

The 4 tools are for mining 2 of them are also for other use. The mining tools are bac_pick, bac_pick_upgraded, bac_final and bac_laser.

The 2 other use tools are bac_final and bac_laser they act as a pickaxe, shovel, sword and a axe.

the 1 bit of food is a bac_edible you can eat it.

## How to install

Clone or download this repository to the minetest mods folder.

## How to use it

the craft guides are for bac_pick (craft)

b=bac_box s=stick e=empty
```
  (b)(b)(b)
  (e)(s)(e)
  (e)(s)(e)
```
bac_pick_upgraded (craft)

b=bac_pick m=mese_crystal e=empty
```
  (e)(m)(e)
  (e)(b)(e)
  (e)(e)(e)
```
bac_final (craft)

b=bac_pick_upgraded m=mese_crystal e=empty
```
  (e)(m)(e)
  (e)(b)(e)
  (e)(e)(e)
```

bac_edible (furnace)

f=fuel b=bac_final e=empty
```
  (b)  (e)
  (f)
```
bac_laser (craft)

b=bac_edible d=diamond m=mese_crystal e=empty
```
  (e)(m)(e)
  (e)(b)(e)
  (e)(d)(e)
```
bac_box (craft)

d=diamond s=stone c=chest m=mese_crystal
```
  (m)(d)(m)
  (s)(c)(s)
  (s)(s)(s)
```
you can dig deep down to the caves or build high up to the sky.
