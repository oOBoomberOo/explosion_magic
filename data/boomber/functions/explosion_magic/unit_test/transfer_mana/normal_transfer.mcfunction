scoreboard players set #bb.em.sender bb.variable 1000
scoreboard players set #bb.em.receiver bb.variable 1000
scoreboard players set #bb.em.amount bb.variable 500

function boomber:explosion_magic/function/transfer_mana

execute unless score #bb.em.sender bb.result matches 500 unless score #bb.em.receiver bb.result matches 1500 unless score #bb.em.amount bb.result matches 500 run tellraw @a [{"text": "Assertion error (transfer_mana/normal_transfer): ", "color": "red"}, {"text": "Unable to transfer 500 mana from sender with 1,000 mana to receiver with 1,000 mana correctly", "color": "gray"}]