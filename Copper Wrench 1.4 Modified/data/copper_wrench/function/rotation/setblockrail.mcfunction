$execute store result score copper_wrench.rotation copper_wrench.variable unless score copper_wrench.rotation copper_wrench.variable matches 1 if block ~ ~ ~ $(block)[shape=north_south] run function copper_wrench:rotation/setblock {"block":"$(block)","var":"shape","direction":"east_west"}
$execute store result score copper_wrench.rotation copper_wrench.variable unless score copper_wrench.rotation copper_wrench.variable matches 1 if block ~ ~ ~ $(block)[shape=east_west] run function copper_wrench:rotation/setblock {"block":"$(block)","var":"shape","direction":"north_south"}

scoreboard players reset copper_wrench.rotation copper_wrench.variable
