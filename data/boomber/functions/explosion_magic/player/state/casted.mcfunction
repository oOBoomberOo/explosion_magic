function boomber:explosion_magic/time/delta_time

scoreboard players operation #bb.em.min_tick bb.calc = #bb.em.delta_time bb.em.time
scoreboard players operation #bb.em.min_tick bb.calc /= #bb.em.cos.gap bb.const

execute if score #bb.em.min_tick bb.calc > @s bb.em.cast run function boomber:explosion_magic/player/event/change_state/unequip_scroll
execute unless predicate boomber:explosion_magic/selection/magic_scroll run function boomber:explosion_magic/player/event/change_state/unequip_scroll

scoreboard players reset #bb.em.min_tick bb.calc
scoreboard players reset #bb.em.delta_time bb.em.time