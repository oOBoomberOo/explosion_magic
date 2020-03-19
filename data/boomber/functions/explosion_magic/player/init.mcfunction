function boomber:explosion_magic/function/get_uid

scoreboard players operation @s bb.em.mana = #bb.em.start_mana bb.const
scoreboard players operation @s bb.em.max_mana = #bb.em.max_mana bb.const
scoreboard players operation @s bb.em.regen = #bb.em.base_regen bb.const
scoreboard players operation @s bb.em.state = #bb.em.player.idle bb.enum

#define tag boomber.explosion_magic.init
tag @s add boomber.explosion_magic.init