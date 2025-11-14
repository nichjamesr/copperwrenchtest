execute if block ~ ~ ~ #copper_wrench:rotatable run function copper_wrench:raycasting/hit_block

scoreboard players add #distance copper_wrench.cast_temp 1
#execute if block ~ ~ ~ #copper_wrench:permeable if score #hit copper_wrench.cast_temp matches 0 if score #distance copper_wrench.cast_temp matches ..100 positioned ^ ^ ^0.05 run function copper_wrench:raycasting/ray
execute if score #hit copper_wrench.cast_temp matches 0 if score #distance copper_wrench.cast_temp matches ..100 positioned ^ ^ ^0.05 run function copper_wrench:raycasting/ray
