scoreboard players operation #bb.em.min_tick bb.calc = @s bb.em.cast_tick
scoreboard players operation #bb.em.min_tick bb.calc /= #bb.em.cos.gap bb.const

scoreboard players add @s bb.em.cast_tick 1

# #define entity #bb.em.casting
scoreboard players operation #bb.em.casting bb.variable = @s bb.em.cast
# #define entity #bb.em.cast_time
execute store result score #bb.em.cast_time bb.variable run data get entity @s SelectedItem.tag.ctc.explosion_magic.cast_time

title @s actionbar [{"score": {"name": "#bb.em.casting", "objective": "bb.variable"}, "color": "yellow"}, {"text": "/", "color": "white"}, {"score": {"name": "#bb.em.cast_time", "objective": "bb.variable"}, "color": "green"}]

execute if score #bb.em.casting bb.variable = #bb.em.cast_time bb.variable run function boomber:explosion_magic/player/event/change_state/cast_spell

# This must be call after 'cast_spell' because it would set #bb.em.casting and #bb.em.cast_time to 0 which would make the condition of the above command become true.
execute if score #bb.em.min_tick bb.calc > @s bb.em.cast run function boomber:explosion_magic/player/event/change_state/unequip_scroll
execute unless predicate boomber:explosion_magic/selection/magic_scroll run function boomber:explosion_magic/player/event/change_state/unequip_scroll

scoreboard players reset #bb.em.min_tick bb.calc
scoreboard players reset #bb.em.casting bb.variable
scoreboard players reset #bb.em.cast_time bb.variable