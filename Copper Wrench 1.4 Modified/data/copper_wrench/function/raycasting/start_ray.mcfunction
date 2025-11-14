tag @s add copper_wrench.rotating
scoreboard players set #hit copper_wrench.cast_temp 0
scoreboard players set #distance copper_wrench.cast_temp 0
function copper_wrench:raycasting/ray
tag @s remove copper_wrench.rotating
