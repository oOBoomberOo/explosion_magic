#define entity #bb.em.progress.precision
scoreboard players set #bb.em.progress.precision bb.const 100
#define entity #bb.em.progress.min
scoreboard players set #bb.em.progress.min bb.const 0
#define entity #bb.em.progress.max
scoreboard players set #bb.em.progress.max bb.const 100

#define entity #bb.em.progress.diff
scoreboard players operation #bb.em.progress.diff bb.const = #bb.em.progress.max bb.const
scoreboard players operation #bb.em.progress.diff bb.const -= #bb.em.progress.min bb.const