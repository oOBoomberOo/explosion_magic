# This function is called from boomber:explosion_magic/setup by schedule command that run every 20 ticks

execute as @a[tag=boomber.explosion_magic.init, tag=!global.ignore] at @s run function boomber:explosion_magic/player/event/regenerate_mana