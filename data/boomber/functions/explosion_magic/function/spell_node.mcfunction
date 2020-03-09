#define tag boomber.explosion_magic.spell_node
#define tag boomber.explosion_magic.temporary
summon armor_stand ~ ~ ~ {Tags: ['boomber.explosion_magic.spell_node', 'boomber.explosion_magic.temporary'], Invisible: 1b, Small: 1b, Marker: 1b, NoGravity: 1b}
execute as @e[tag=boomber.explosion_magic.temporary] run function boomber:explosion_magic/function/spell_node/builder