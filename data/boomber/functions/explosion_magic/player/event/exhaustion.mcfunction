#define entity #bb.em.exhaustion
scoreboard players operation #bb.em.exhaustion bb.calc = #bb.em.spell.cost bb.variable
scoreboard players operation #bb.em.exhaustion bb.calc *= #bb.em.exhaustion_unit bb.const

scoreboard players operation @s bb.em.exhaustion += #bb.em.exhaustion bb.calc

scoreboard players reset #bb.em.exhaustion bb.calc