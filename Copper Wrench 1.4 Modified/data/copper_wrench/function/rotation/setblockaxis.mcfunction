$execute store result score copper_wrench.rotation copper_wrench.variable unless score copper_wrench.rotation copper_wrench.variable matches 1 if block ~ ~ ~ $(block)[axis=x] run function copper_wrench:rotation/setblock {"block":"$(block)","var":"axis","direction":"y"}
$execute store result score copper_wrench.rotation copper_wrench.variable unless score copper_wrench.rotation copper_wrench.variable matches 1 if block ~ ~ ~ $(block)[axis=y] run function copper_wrench:rotation/setblock {"block":"$(block)","var":"axis","direction":"z"}
$execute store result score copper_wrench.rotation copper_wrench.variable unless score copper_wrench.rotation copper_wrench.variable matches 1 if block ~ ~ ~ $(block)[axis=z] run function copper_wrench:rotation/setblock {"block":"$(block)","var":"axis","direction":"x"}

scoreboard players reset copper_wrench.rotation copper_wrench.variable
