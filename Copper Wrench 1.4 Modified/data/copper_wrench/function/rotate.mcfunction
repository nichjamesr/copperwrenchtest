execute unless score @s copper_wrench.wrench_cooldown matches 1.. as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function copper_wrench:raycasting/start_ray

advancement revoke @s only copper_wrench:use_copper_wrench
advancement revoke @s only copper_wrench:wrench_cooldown
scoreboard players set @s copper_wrench.wrench_cooldown 2