#define entity #bb.em.delta_time
scoreboard players operation #bb.em.delta_time bb.em.time = #bb.em.current_time bb.em.time
scoreboard players operation #bb.em.delta_time bb.em.time -= @s bb.em.timestamp

title @s actionbar [{"score": {"name": "#bb.em.delta_time", "objective": "bb.em.time"}, "color": "aqua"}, {"text": "/", "color": "gray"}, {"score": {"name": "#bb.em.cast_time", "objective": "bb.variable"}, "color": "blue"}]

execute if predicate boomber:explosion_magic/spell/aqua_party_trick run function boomber:explosion_magic/spell/aqua_party_trick/animate