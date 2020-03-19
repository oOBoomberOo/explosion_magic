#define entity #bb.em.spell.cost
execute store result score #bb.em.spell.cost bb.variable run data get entity @s SelectedItem.tag.ctc.explosion_magic.cost
scoreboard players operation #bb.em.spell.exhaustion bb.calc = @s bb.em.exhaustion
scoreboard players operation #bb.em.spell.exhaustion bb.calc *= #bb.em.exhaustion_mana bb.const
scoreboard players operation #bb.em.spell.exhaustion bb.calc /= #100 bb.const
scoreboard players operation #bb.em.spell.cost bb.variable += #bb.em.spell.exhaustion bb.calc

scoreboard players reset #bb.em.spell.exhaustion bb.calc