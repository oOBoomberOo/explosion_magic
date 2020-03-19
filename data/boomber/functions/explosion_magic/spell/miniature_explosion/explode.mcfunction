scoreboard players operation #bb.em.raycast bb.calc = #bb.em.bool.true bb.enum

summon fireball ~ ~ ~ { power: [0.0d, -10.0d, 0.0d], direction: [0.0d, -10.0d, 0.0d], ExplosionPower: 30}

summon tnt ~ ~ ~ {Fuse: 0s}
summon tnt ~1 ~ ~ {Fuse: 0s}
summon tnt ~-1 ~ ~ {Fuse: 0s}
summon tnt ~ ~ ~1 {Fuse: 0s}
summon tnt ~ ~ ~-1 {Fuse: 0s}