# (current / max) * mapped_max
#define entity #bb.em.progress
scoreboard players operation #bb.em.progress bb.calc = #bb.em.delta_time bb.em.time
scoreboard players operation #bb.em.progress bb.calc *= #bb.em.progress.precision bb.const
scoreboard players operation #bb.em.progress bb.calc /= #bb.em.cast_time bb.variable
scoreboard players operation #bb.em.progress bb.calc *= #bb.em.progress.diff bb.const
scoreboard players operation #bb.em.progress bb.calc /= #bb.em.progress.precision bb.const
scoreboard players operation #bb.em.progress bb.calc += #bb.em.progress.min bb.const

function boomber:explosion_magic/player/display/progress_bar

execute if predicate boomber:explosion_magic/spell/aqua_party_trick run function boomber:explosion_magic/spell/aqua_party_trick/animate