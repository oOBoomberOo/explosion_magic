#> TODO:
# Handle 'cast_spell' properly
tellraw @a {"text": "Explosionnn!!", "color": "red"}
execute at @s anchored eyes positioned ^ ^ ^8 run summon tnt ~ ~ ~ {Fuse: 3s, NoGravity: 1b}

function boomber:explosion_magic/player/event/change_state/unequip_scroll