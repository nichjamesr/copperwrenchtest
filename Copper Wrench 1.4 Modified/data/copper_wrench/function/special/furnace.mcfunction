execute store result score copper_wrench.currently_used copper_wrench.variable run data get block ~ ~ ~ Items
execute if score copper_wrench.currently_used copper_wrench.variable matches 0 run function copper_wrench:rotation/setblockfacing {"block":"furnace"}
execute if score copper_wrench.currently_used copper_wrench.variable matches 1 run return 1
