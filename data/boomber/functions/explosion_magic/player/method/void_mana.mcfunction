scoreboard players operation #bb.em.sender bb.variable = @s bb.em.mana
scoreboard players operation #bb.em.receiver bb.variable = #bb.em.global_pool bb.em.mana
scoreboard players operation #bb.em.amount bb.variable = @s bb.em.mana

function boomber:explosion_magic/function/transfer_mana

scoreboard players operation @s bb.em.mana = #bb.em.sender bb.result
scoreboard players operation #bb.em.global_pool bb.em.mana = #bb.em.receiver bb.result