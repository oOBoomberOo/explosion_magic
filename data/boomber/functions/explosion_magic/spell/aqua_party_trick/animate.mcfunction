execute if score #bb.em.delta_time bb.em.time matches 1 run tellraw @s {"text": "Something #1"}
execute if score #bb.em.delta_time bb.em.time matches 5 run tellraw @s {"text": "Something #2"}
execute if score #bb.em.delta_time bb.em.time matches 50 run tellraw @s {"text": "Something #3"}
execute if score #bb.em.delta_time bb.em.time matches 90 run tellraw @s {"text": "Something #4"}
execute if score #bb.em.delta_time bb.em.time matches 99 run tellraw @s {"text": "Explosion!"}