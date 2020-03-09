scoreboard players set #bb.em.sender bb.variable 100
scoreboard players set #bb.em.receiver bb.variable 0
scoreboard players set #bb.em.amount bb.variable 500

function boomber:explosion_magic/function/transfer_mana

execute unless score #bb.em.sender bb.result matches 0 unless score #bb.em.receiver bb.result matches 100 unless score #bb.em.amount bb.result matches 100 run tellraw @a [{"text": "Assertion error (transfer_mana/low_sender_mana): ", "color": "red"}, {"text": "Expecting #bb.em.amount to change to 100 because sender's mana is low but found: ", "color": "gray"}, {"score": {"name": "#bb.em.amount", "objective": "bb.result"}, "color": "green"}]