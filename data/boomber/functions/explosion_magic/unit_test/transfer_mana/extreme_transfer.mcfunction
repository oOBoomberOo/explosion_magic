scoreboard players set #bb.em.sender bb.variable 1000
scoreboard players operation #bb.em.receiver bb.variable = #bb.em.transfer.max_mana bb.const
scoreboard players set #bb.em.amount bb.variable 100

function boomber:explosion_magic/function/transfer_mana

execute unless score #bb.em.sender bb.result matches 1000 unless score #bb.em.receiver bb.result matches 2147483647 unless score #bb.em.amount bb.result matches 0 run tellraw @a [{"text": "Assertion error (transfer_mana/extreme_transfer): ", "color": "red"}, {"text": "Expecting #bb.em.amount to be 0 because receiver already have max mana but found ", "color": "gray"}, {"score": {"name": "#bb.em.amount", "objective": "bb.result"}, "color": "green"}]