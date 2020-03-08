scoreboard players operation @s bb.em.uid = #bb.em.current_uid bb.em.uid
scoreboard players add #bb.em.current_uid bb.em.uid 1

scoreboard players operation @s bb.em.mana = #bb.em.start_mana bb.const
scoreboard players operation @s bb.em.max_mana = #bb.em.max_mana bb.const
scoreboard players operation @s bb.em.regen = #bb.em.base_regen bb.const

#define tag boomber.explosion_magic.init
tag @s add boomber.explosion_magic.init