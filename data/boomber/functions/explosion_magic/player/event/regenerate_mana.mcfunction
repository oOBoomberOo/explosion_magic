scoreboard players operation #bb.em.sender bb.variable = #bb.em.global_pool bb.em.mana
scoreboard players operation #bb.em.receiver bb.variable = @s bb.em.mana

scoreboard players operation #bb.em.max_receive bb.calc = @s bb.em.max_mana
scoreboard players operation #bb.em.max_receive bb.calc -= @s bb.em.mana

scoreboard players operation #bb.em.amount bb.variable = @s bb.em.regen
scoreboard players operation #bb.em.amount bb.variable < #bb.em.max_receive bb.calc

function boomber:explosion_magic/function/transfer_mana

scoreboard players operation #bb.em.global_pool bb.em.mana = #bb.em.sender bb.result
scoreboard players operation @s bb.em.mana = #bb.em.receiver bb.result