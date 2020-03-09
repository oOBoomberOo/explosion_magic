#define entity #bb.em.sender Sender's mana
#define entity #bb.em.receiver Receiver's mana
#define entity #bb.em.amount Transfer amount
scoreboard players operation #bb.em.sender bb.calc = #bb.em.sender bb.variable
scoreboard players operation #bb.em.receiver bb.calc = #bb.em.receiver bb.variable
scoreboard players operation #bb.em.amount bb.calc = #bb.em.amount bb.variable

scoreboard players operation #bb.em.max_send bb.calc = #bb.em.sender bb.calc
scoreboard players operation #bb.em.max_receive bb.calc = #bb.em.transfer.max_mana bb.const
scoreboard players operation #bb.em.max_receive bb.calc -= #bb.em.receiver bb.calc

scoreboard players operation #bb.em.amount bb.calc < #bb.em.max_send bb.calc
scoreboard players operation #bb.em.amount bb.calc < #bb.em.max_receive bb.calc

scoreboard players operation #bb.em.sender bb.calc -= #bb.em.amount bb.calc
scoreboard players operation #bb.em.receiver bb.calc += #bb.em.amount bb.calc

scoreboard players operation #bb.em.sender bb.result = #bb.em.sender bb.calc
scoreboard players operation #bb.em.receiver bb.result = #bb.em.receiver bb.calc
scoreboard players operation #bb.em.amount bb.result = #bb.em.amount bb.calc

# End lifetime
scoreboard players reset #bb.em.sender bb.calc
scoreboard players reset #bb.em.receiver bb.calc
scoreboard players reset #bb.em.amount bb.calc
scoreboard players reset #bb.em.max_send bb.calc
scoreboard players reset #bb.em.max_receive bb.calc