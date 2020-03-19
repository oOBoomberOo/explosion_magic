#define entity #bb.em.mana_pool
scoreboard players set #bb.em.mana_pool bb.const 1000000

#define entity #bb.em.start_mana
scoreboard players set #bb.em.start_mana bb.const 50

#define entity #bb.em.max_mana
scoreboard players set #bb.em.max_mana bb.const 100

#define entity #bb.em.base_regen
scoreboard players set #bb.em.base_regen bb.const 2

#define entity #bb.em.transfer.min_mana
scoreboard players set #bb.em.transfer.min_mana bb.const -2147483648
#define entity #bb.em.transfer.max_mana
scoreboard players set #bb.em.transfer.max_mana bb.const 2147483647

#define entity #bb.em.exhaustion_unit Exhaustion level per mana
scoreboard players set #bb.em.exhaustion_unit bb.const 20

#define entity #bb.em.exhaustion_mana [ spell_cost + (exhaustion * exhaustion_mana) / 100] = mana cost
scoreboard players set #bb.em.exhaustion_mana bb.const 1

#define entity #bb.em.resting_rate
scoreboard players set #bb.em.resting_rate bb.const 2