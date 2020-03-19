scoreboard players operation #bb.em.spell bb.variable = #bb.em.bool.true bb.enum

scoreboard players operation @s bb.em.mana -= #bb.em.spell.cost bb.variable

tellraw @s [{"translate": "boomber.explosion_magic.ui.action.casted", "color": "aqua"}, {"text": ": ", "color": "gray"}, {"translate": "boomber.explosion_magic.ui.spell.miniature_explosion", "color": "gray"}, {"text": " [", "color": "dark_gray"}, {"text": "-", "color": "red"}, {"score": {"name": "#bb.em.spell.cost", "objective": "bb.variable"}, "color": "red"}, {"text": "]", "color": "dark_gray"}]
playsound entity.experience_orb.pickup voice @s ~ ~ ~

#define entity #bb.em.raycast
scoreboard players operation #bb.em.raycast bb.calc = #bb.em.bool.false bb.enum
execute at @s anchored eyes positioned ^ ^ ^1 run function boomber:explosion_magic/spell/miniature_explosion/cast