scoreboard players set #hit copper_wrench.cast_temp 1
#data modify storage copper_wrench:storage Items set from block ~ ~ ~ Items
#setblock ~ ~ ~ dirt


execute if block ~ ~ ~ #copper_wrench:storage run data modify storage copper_wrench:storage Items set from block ~ ~ ~ Items

execute if block ~ ~ ~ anvil run function copper_wrench:rotation/setblockfacing {"block":"anvil"}
execute if block ~ ~ ~ chest run function copper_wrench:rotation/setblockfacing {"block":"chest"}
execute if block ~ ~ ~ trapped_chest run function copper_wrench:rotation/setblockfacing {"block":"trapped_chest"}
execute if block ~ ~ ~ ender_chest run function copper_wrench:rotation/setblockfacing {"block":"ender_chest"}

execute if block ~ ~ ~ furnace run execute store result score copper_wrench.currently_used copper_wrench.variable run data get block ~ ~ ~ Items
execute if block ~ ~ ~ furnace run execute if score copper_wrench.currently_used copper_wrench.variable matches 0 run function copper_wrench:rotation/setblockfacing {"block":"furnace"}
execute if block ~ ~ ~ furnace run execute if score copper_wrench.currently_used copper_wrench.variable matches 1 run playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.2 0
execute if block ~ ~ ~ furnace run execute if score copper_wrench.currently_used copper_wrench.variable matches 1 run return 1

execute if block ~ ~ ~ blast_furnace run execute store result score copper_wrench.currently_used copper_wrench.variable run data get block ~ ~ ~ Items
execute if block ~ ~ ~ blast_furnace run execute if score copper_wrench.currently_used copper_wrench.variable matches 0 run function copper_wrench:rotation/setblockfacing {"block":"blast_furnace"}
execute if block ~ ~ ~ blast_furnace run execute if score copper_wrench.currently_used copper_wrench.variable matches 1 run playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.2 0
execute if block ~ ~ ~ blast_furnace run execute if score copper_wrench.currently_used copper_wrench.variable matches 1 run return 1

execute if block ~ ~ ~ smoker run execute store result score copper_wrench.currently_used copper_wrench.variable run data get block ~ ~ ~ Items
execute if block ~ ~ ~ smoker run execute if score copper_wrench.currently_used copper_wrench.variable matches 0 run function copper_wrench:rotation/setblockfacing {"block":"smoker"}
execute if block ~ ~ ~ smoker run execute if score copper_wrench.currently_used copper_wrench.variable matches 1 run playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.2 0
execute if block ~ ~ ~ smoker run execute if score copper_wrench.currently_used copper_wrench.variable matches 1 run return 1


execute if block ~ ~ ~ barrel run function copper_wrench:rotation/setblockfacingupdown {"block":"barrel"}


execute if block ~ ~ ~ grindstone run function copper_wrench:rotation/setblockfacing {"block":"grindstone"}



execute if block ~ ~ ~ oak_log run function copper_wrench:rotation/setblockaxis {"block":"oak_log"}
execute if block ~ ~ ~ stripped_oak_log run function copper_wrench:rotation/setblockaxis {"block":"stripped_oak_log"}
execute if block ~ ~ ~ dark_oak_log run function copper_wrench:rotation/setblockaxis {"block":"dark_oak_log"}
execute if block ~ ~ ~ stripped_dark_oak_log run function copper_wrench:rotation/setblockaxis {"block":"stripped_dark_oak_log"}
execute if block ~ ~ ~ spruce_log run function copper_wrench:rotation/setblockaxis {"block":"spruce_log"}
execute if block ~ ~ ~ stripped_spruce_log run function copper_wrench:rotation/setblockaxis {"block":"stripped_spruce_log"}
execute if block ~ ~ ~ birch_log run function copper_wrench:rotation/setblockaxis {"block":"birch_log"}
execute if block ~ ~ ~ stripped_birch_log run function copper_wrench:rotation/setblockaxis {"block":"stripped_birch_log"}
execute if block ~ ~ ~ acacia_log run function copper_wrench:rotation/setblockaxis {"block":"acacia_log"}
execute if block ~ ~ ~ stripped_acacia_log run function copper_wrench:rotation/setblockaxis {"block":"stripped_acacia_log"}
execute if block ~ ~ ~ mangrove_log run function copper_wrench:rotation/setblockaxis {"block":"mangrove_log"}
execute if block ~ ~ ~ stripped_mangrove_log run function copper_wrench:rotation/setblockaxis {"block":"stripped_mangrove_log"}
execute if block ~ ~ ~ jungle_log run function copper_wrench:rotation/setblockaxis {"block":"jungle_log"}
execute if block ~ ~ ~ stripped_jungle_log run function copper_wrench:rotation/setblockaxis {"block":"stripped_jungle_log"}
execute if block ~ ~ ~ cherry_log run function copper_wrench:rotation/setblockaxis {"block":"cherry_log"}
execute if block ~ ~ ~ stripped_cherry_log run function copper_wrench:rotation/setblockaxis {"block":"stripped_cherry_log"}

execute if block ~ ~ ~ powered_rail run function copper_wrench:rotation/setblockrail {"block":"powered_rail"}
execute if block ~ ~ ~ activator_rail run function copper_wrench:rotation/setblockrail {"block":"activator_rail"}
execute if block ~ ~ ~ detector_rail run function copper_wrench:rotation/setblockrail {"block":"detector_rail"}

execute if block ~ ~ ~ observer run function copper_wrench:rotation/setblockfacingupdown {"block":"observer"}
execute if block ~ ~ ~ piston run function copper_wrench:rotation/setblockfacingupdown {"block":"piston"}
execute if block ~ ~ ~ sticky_piston run function copper_wrench:rotation/setblockfacingupdown {"block":"sticky_piston"}
execute if block ~ ~ ~ dispenser run function copper_wrench:rotation/setblockfacingupdown {"block":"dispenser"}
execute if block ~ ~ ~ dropper run function copper_wrench:rotation/setblockfacingupdown {"block":"dropper"}

execute store result score copper_wrench.rotation copper_wrench.variable unless score copper_wrench.rotation copper_wrench.variable matches 1 if block ~ ~ ~ hopper[facing=north] run function copper_wrench:rotation/setblock {"block":"hopper","var":"facing","direction":"east"}
execute store result score copper_wrench.rotation copper_wrench.variable unless score copper_wrench.rotation copper_wrench.variable matches 1 if block ~ ~ ~ hopper[facing=east] run function copper_wrench:rotation/setblock {"block":"hopper","var":"facing","direction":"south"}
execute store result score copper_wrench.rotation copper_wrench.variable unless score copper_wrench.rotation copper_wrench.variable matches 1 if block ~ ~ ~ hopper[facing=south] run function copper_wrench:rotation/setblock {"block":"hopper","var":"facing","direction":"west"}
execute store result score copper_wrench.rotation copper_wrench.variable unless score copper_wrench.rotation copper_wrench.variable matches 1 if block ~ ~ ~ hopper[facing=west] run function copper_wrench:rotation/setblock {"block":"hopper","var":"facing","direction":"down"}
execute store result score copper_wrench.rotation copper_wrench.variable unless score copper_wrench.rotation copper_wrench.variable matches 1 if block ~ ~ ~ hopper[facing=down] run function copper_wrench:rotation/setblock {"block":"hopper","var":"facing","direction":"north"}






execute store result score copper_wrench.rotation copper_wrench.variable unless score copper_wrench.rotation copper_wrench.variable matches 1 if block ~ ~ ~ rail[shape=north_south] run function copper_wrench:rotation/setblock {"block":"rail","var":"shape","direction":"south_east"}
execute store result score copper_wrench.rotation copper_wrench.variable unless score copper_wrench.rotation copper_wrench.variable matches 1 if block ~ ~ ~ rail[shape=south_east] run function copper_wrench:rotation/setblock {"block":"rail","var":"shape","direction":"south_west"}
execute store result score copper_wrench.rotation copper_wrench.variable unless score copper_wrench.rotation copper_wrench.variable matches 1 if block ~ ~ ~ rail[shape=south_west] run function copper_wrench:rotation/setblock {"block":"rail","var":"shape","direction":"east_west"}
execute store result score copper_wrench.rotation copper_wrench.variable unless score copper_wrench.rotation copper_wrench.variable matches 1 if block ~ ~ ~ rail[shape=east_west] run function copper_wrench:rotation/setblock {"block":"rail","var":"shape","direction":"north_west"}
execute store result score copper_wrench.rotation copper_wrench.variable unless score copper_wrench.rotation copper_wrench.variable matches 1 if block ~ ~ ~ rail[shape=north_west] run function copper_wrench:rotation/setblock {"block":"rail","var":"shape","direction":"north_east"}
execute store result score copper_wrench.rotation copper_wrench.variable unless score copper_wrench.rotation copper_wrench.variable matches 1 if block ~ ~ ~ rail[shape=north_east] run function copper_wrench:rotation/setblock {"block":"rail","var":"shape","direction":"north_south"}


scoreboard players reset copper_wrench.rotation copper_wrench.variable

execute if block ~ ~ ~ #copper_wrench:storage run data modify block ~ ~ ~ Items set from storage copper_wrench:storage Items


#Damage & Breaking
execute if items entity @s weapon.mainhand *[minecraft:custom_data={"copper_wrench.copper_wrench":1b}] store result score copper_wrench.damage copper_wrench.variable run data get entity @s SelectedItem.components.minecraft:damage
execute if items entity @s weapon.mainhand *[minecraft:custom_data={"copper_wrench.copper_wrench":1b}] store result score copper_wrench.max_damage copper_wrench.variable run data get entity @s SelectedItem.components.minecraft:max_damage

execute store result score copper_wrench.cdamage copper_wrench.variable run scoreboard players get copper_wrench.damage copper_wrench.variable
execute store result score copper_wrench.cmax copper_wrench.variable run scoreboard players get copper_wrench.max_damage copper_wrench.variable

#execute store result score copper_wrench.cdamage copper_wrench.variable run 
scoreboard players operation copper_wrench.cmax copper_wrench.variable -= copper_wrench.cdamage copper_wrench.variable
scoreboard players operation copper_wrench.cmax copper_wrench.variable -= copper_wrench.1 copper_wrench.variable
execute if score copper_wrench.cmax copper_wrench.variable matches 51 run scoreboard players operation copper_wrench.cmax copper_wrench.variable -= copper_wrench.1 copper_wrench.variable

scoreboard players operation copper_wrench.cmax copper_wrench.variable *= copper_wrench.100 copper_wrench.variable
execute store result storage copper_wrench:damage Damage double 0.01 run scoreboard players operation copper_wrench.cmax copper_wrench.variable /= copper_wrench.max_damage copper_wrench.variable

execute if items entity @s weapon.mainhand *[minecraft:custom_data={"copper_wrench.copper_wrench":1b}] run item modify entity @s weapon.mainhand copper_wrench:damage
execute if items entity @s weapon.offhand *[minecraft:custom_data={"copper_wrench.copper_wrench":1b}] run item modify entity @s weapon.offhand copper_wrench:damage

execute if items entity @s weapon.mainhand *[minecraft:custom_data={"copper_wrench.copper_wrench":1b},damage=60] run function copper_wrench:break {"hand":"mainhand"}
execute if items entity @s weapon.offhand *[minecraft:custom_data={"copper_wrench.copper_wrench":1b},damage=60] run function copper_wrench:break {"hand":"offhand"}

#Sound
playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.2 2
