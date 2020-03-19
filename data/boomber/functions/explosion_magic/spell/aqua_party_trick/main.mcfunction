execute if block ^ ^ ^0.5 minecraft:air run function boomber:explosion_magic/spell/aqua_party_trick/update
execute unless block ^ ^ ^0.5 minecraft:air run function boomber:explosion_magic/spell/aqua_party_trick/event/finish

execute store result score #bb.em.pos.y bb.calc run data get entity @s Pos[1]
execute if score #bb.em.pos.y bb.calc matches 255.. run function boomber:explosion_magic/spell/aqua_party_trick/event/fail
execute if score #bb.em.pos.y bb.calc matches ..0 run function boomber:explosion_magic/spell/aqua_party_trick/event/fail

particle falling_water ~ ~ ~ 0.1 0.1 0.1 0.1 10 normal @a
particle totem_of_undying ~ ~ ~ 0.2 0.2 0.2 0.1 1 normal @a