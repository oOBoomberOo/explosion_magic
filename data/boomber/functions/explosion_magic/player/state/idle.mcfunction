execute if data entity @s SelectedItem.tag.ctc{traits: ["item", "magic_scroll/explosion_magic"]} run function boomber:explosion_magic/player/event/change_state/equip_scroll

execute if data entity @s SelectedItem.tag.ctc{id: 'mana_gauge', from: 'boomber:explosion_magic'} run function boomber:explosion_magic/player/display/mana_gauge

execute if score @s bb.em.cast matches 1.. run tellraw @s {"score": {"name": "@s", "objective": "bb.em.cast"}}

execute unless data entity @s SelectedItem.Count run scoreboard players set @s bb.em.cast 0