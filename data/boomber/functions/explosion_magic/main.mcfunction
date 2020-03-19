function boomber:explosion_magic/time/tick

execute as @a[tag=!boomber.explosion_magic.init] at @s run function boomber:explosion_magic/player/init
execute as @a[tag=boomber.explosion_magic.init, tag=!global.ignore] at @s run function boomber:explosion_magic/player/main

execute as @e[tag=boomber.explosion_magic.spell_node] at @s run function boomber:explosion_magic/spell/main