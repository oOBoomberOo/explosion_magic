scoreboard players operation @s bb.em.state = #bb.em.player.casted bb.enum

#define entity #bb.em.spell.cost
execute store result score #bb.em.spell.cost bb.variable run data get entity @s SelectedItem.tag.ctc.explosion_magic.cost
#define entity #bb.em.spell.rate
execute store result score #bb.em.spell.rate bb.variable run data get entity @s SelectedItem.tag.ctc.explosion_magic.rate

#define entity #bb.em.spell
scoreboard players operation #bb.em.spell bb.variable = #bb.em.bool.false bb.enum

execute if score #bb.em.spell bb.variable = #bb.em.bool.false bb.enum if score @s bb.em.mana < #bb.em.spell.cost bb.variable run scoreboard players operation #bb.em.spell bb.variable = #bb.em.bool.true bb.enum
execute if score #bb.em.spell bb.variable = #bb.em.bool.false bb.enum if predicate boomber:explosion_magic/spell/aqua_party_trick run function boomber:explosion_magic/spell/aqua_party_trick/fire

scoreboard players reset #bb.em.spell bb.variable
scoreboard players reset #bb.em.spell.rate bb.variable
scoreboard players reset #bb.em.spell.cost bb.variable