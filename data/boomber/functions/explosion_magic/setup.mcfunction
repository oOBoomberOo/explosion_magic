scoreboard objectives add bb.variable dummy
scoreboard objectives add bb.const dummy
scoreboard objectives add bb.enum dummy
scoreboard objectives add bb.em.mana dummy
scoreboard objectives add bb.em.max_mana dummy
scoreboard objectives add bb.em.regen dummy
scoreboard objectives add bb.em.uid dummy

function boomber:explosion_magic/const/mana

#define entity #bb.em.global_pool Global Mana Pool
execute unless score #bb.em.global_pool bb.em.mana matches -2147483648..2147483647 run scoreboard players operation #bb.em.global_pool bb.em.mana = #bb.em.mana_pool bb.const

#define entity #bb.em.current_uid
execute unless score #bb.em.current_uid bb.em.uid matches -2147483648..2147483647 run scoreboard players set #bb.em.current_uid bb.em.uid 0

#define tag global.ignore
#define tag global.ignore.kill
#define tag global.ignore.gui
#define tag global.ignore.pos

schedule function boomber:explosion_magic/event/mana_regeneration 1s