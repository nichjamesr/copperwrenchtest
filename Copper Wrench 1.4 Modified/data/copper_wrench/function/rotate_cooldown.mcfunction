scoreboard players remove @s copper_wrench.wrench_cooldown 1
execute if score @s copper_wrench.wrench_cooldown matches 1.. run return run advancement revoke @s only copper_wrench:wrench_cooldown
scoreboard players reset @s copper_wrench.wrench_cooldown