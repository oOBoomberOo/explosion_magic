scoreboard players operation @s bb.em.state = #bb.em.player.casted bb.enum

function boomber:explosion_magic/player/method/get_spell_cost

#define entity #bb.em.spell
scoreboard players operation #bb.em.spell bb.variable = #bb.em.bool.false bb.enum

execute if score #bb.em.spell bb.variable = #bb.em.bool.false bb.enum if score @s bb.em.mana < #bb.em.spell.cost bb.variable run scoreboard players operation #bb.em.spell bb.variable = #bb.em.bool.true bb.enum
execute if score #bb.em.spell bb.variable = #bb.em.bool.false bb.enum if predicate boomber:explosion_magic/spell/aqua_party_trick run function boomber:explosion_magic/spell/aqua_party_trick/fire

execute if score #bb.em.spell bb.variable = #bb.em.bool.true bb.enum run function boomber:explosion_magic/player/event/exhaustion

scoreboard players reset #bb.em.spell bb.variable
scoreboard players reset #bb.em.spell.rate bb.variable
scoreboard players reset #bb.em.spell.cost bb.variable