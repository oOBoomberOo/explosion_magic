execute store result score #bb.em.selected_slot bb.variable run data get entity @s SelectedSlot

#> TODO:
# It's possible for 'unequip_scroll' event to run twice if player change slot to another unrelated item
# Maybe prevent this?
execute unless score @s bb.em.sel_slot = #bb.em.selected_slot bb.variable run function boomber:explosion_magic/player/event/change_state/unequip_scroll
execute unless data entity @s SelectedItem.tag.ctc{traits: ["item", "magic_scroll/explosion_magic"]} run function boomber:explosion_magic/player/event/change_state/unequip_scroll

execute if score @s bb.em.cast matches 1.. run function boomber:explosion_magic/player/event/change_state/casting