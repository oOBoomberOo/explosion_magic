#define entity #bb.em.spell_mana
#define entity #bb.em.spell_uid
scoreboard players operation @s bb.em.mana = #bb.em.spell_mana bb.variable
scoreboard players operation @s bb.em.uid.most = #bb.em.spell_uid.most bb.variable
scoreboard players operation @s bb.em.uid.least = #bb.em.spell_uid.least bb.variable