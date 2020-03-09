#> TODO:
# Handle 'cast_spell' properly
tellraw @a {"text": "Explosionnn!!", "color": "red"}
execute at @s anchored eyes positioned ^ ^ ^8 run summon tnt ~ ~ ~ {Fuse: 3s, NoGravity: 1b}

scoreboard players operation @s bb.em.state = #bb.em.player.casted bb.enum