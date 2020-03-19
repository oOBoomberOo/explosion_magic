scoreboard players operation #bb.em.spell bb.variable = #bb.em.bool.true bb.enum

scoreboard players operation #bb.em.spell_uid.most bb.variable = @s bb.em.uid.most
scoreboard players operation #bb.em.spell_uid.least bb.variable = @s bb.em.uid.least
scoreboard players operation #bb.em.spell_mana bb.variable = #bb.em.spell.cost bb.variable
# We can take shortcut here because the parent function ensure that player's mana is greater than spell cost
scoreboard players operation @s bb.em.mana -= #bb.em.spell.cost bb.variable

function boomber:explosion_magic/function/spell_node

execute at @s anchored eyes positioned ^ ^ ^1 as @e[tag=boomber.explosion_magic.temporary] run function boomber:explosion_magic/spell/aqua_party_trick/builder

tellraw @s [{"translate": "boomber.explosion_magic.ui.action.casted", "color": "aqua"}, {"text": ": ", "color": "gray"}, {"translate": "boomber.explosion_magic.ui.spell.aqua_party_trick", "color": "gray"}, {"text": " [", "color": "dark_gray"}, {"text": "-", "color": "red"}, {"score": {"name": "#bb.em.spell.cost", "objective": "bb.variable"}, "color": "red"}, {"text": "]", "color": "dark_gray"}]
playsound entity.experience_orb.pickup voice @s ~ ~ ~

scoreboard players reset #bb.em.spell_uid.most bb.variable
scoreboard players reset #bb.em.spell_uid.least bb.variable
scoreboard players reset #bb.em.spell_mana bb.variable