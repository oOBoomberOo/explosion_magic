particle flame ~ ~ ~

execute unless block ^ ^ ^0.5 minecraft:air run function boomber:explosion_magic/spell/miniature_explosion/explode

execute as @s[distance=..100] if score #bb.em.raycast bb.calc = #bb.em.bool.false bb.enum positioned ^ ^ ^0.5 run function boomber:explosion_magic/spell/miniature_explosion/cast