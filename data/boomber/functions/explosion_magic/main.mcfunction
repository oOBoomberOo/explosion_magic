execute as @a[tag=!boomber.explosion_magic.init] at @s run function boomber:explosion_magic/player/init
execute as @a[tag=boomber.explosion_magic.init, tag=!global.ignore] at @s run function boomber:explosion_magic/player/main