scoreboard players set #bb.em.sender bb.variable 100
scoreboard players set #bb.em.receiver bb.variable 0
scoreboard players set #bb.em.amount bb.variable 500

function boomber:explosion_magic/function/transfer_mana

execute unless score #bb.em.sender bb.result matches 0 run tellraw @a [{"text": "Assertion Error: ", "color": "red"}, {"text": "transfer_mana/low_sender_mana\n", "color": "gray"}, {"text": "   Expected: #bb.em.sender = 0", "color": "gray"}, {"text": "\n       Found: #bb.em.sender = ", "color": "gray"}, {"score": {"name": "#bb.em.sender", "objective": "bb.result"}, "color": "green"}, {"text": "\n"}]
execute unless score #bb.em.receiver bb.result matches 100 run tellraw @a [{"text": "Assertion Error: ", "color": "red"}, {"text": "transfer_mana/low_sender_mana\n", "color": "gray"}, {"text": "   Expected: #bb.em.receiver = 100", "color": "gray"}, {"text": "\n       Found: #bb.em.receiver = ", "color": "gray"}, {"score": {"name": "#bb.em.receiver", "objective": "bb.result"}, "color": "green"}, {"text": "\n"}]
execute unless score #bb.em.amount bb.result matches 100 run tellraw @a [{"text": "Assertion Error: ", "color": "red"}, {"text": "transfer_mana/low_sender_mana\n", "color": "gray"}, {"text": "   Expected: #bb.em.amount = 100", "color": "gray"}, {"text": "\n       Found: #bb.em.amount = ", "color": "gray"}, {"score": {"name": "#bb.em.amount", "objective": "bb.result"}, "color": "green"}, {"text": "\n"}]