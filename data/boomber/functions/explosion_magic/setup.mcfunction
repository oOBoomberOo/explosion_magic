scoreboard objectives add bb.variable dummy
scoreboard objectives add bb.calc dummy
scoreboard objectives add bb.const dummy
scoreboard objectives add bb.enum dummy
scoreboard objectives add bb.result dummy
#define objective bb.em.state Represent an enum state of player
scoreboard objectives add bb.em.state dummy
#define objective bb.em.sel_slot Represent 'SelectedSlot' nbt of player, used in player/state/scroll to check if player change their selected slot
scoreboard objectives add bb.em.sel_slot dummy
scoreboard objectives add bb.em.mana dummy
scoreboard objectives add bb.em.max_mana dummy
scoreboard objectives add bb.em.regen dummy
scoreboard objectives add bb.em.uid.most dummy
scoreboard objectives add bb.em.uid.least dummy
scoreboard objectives add bb.em.cast minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add bb.em.cast_tick dummy
scoreboard objectives add bb.em.timestamp dummy
scoreboard objectives add bb.em.time dummy

function boomber:explosion_magic/const/magic_casting
function boomber:explosion_magic/const/mana
function boomber:explosion_magic/enum/player
function boomber:explosion_magic/enum/boolean

#define entity #bb.em.global_pool Global Mana Pool
execute unless score #bb.em.global_pool bb.em.mana matches -2147483648..2147483647 run scoreboard players operation #bb.em.global_pool bb.em.mana = #bb.em.mana_pool bb.const

#define entity #bb.em.current_time
execute unless score #bb.em.current_time bb.em.time matches -2147483648..2147483647 run scoreboard players set #bb.em.current_time bb.em.time 0

#> Global Ignoring Tag Conventions
#define tag global.ignore
#define tag global.ignore.kill
#define tag global.ignore.gui
#define tag global.ignore.pos

function #boomber:explosion_magic/unit_test

schedule function boomber:explosion_magic/event/mana_regeneration 1s