//Imports
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.block.IBlockState;

// *** Hide AE2 Facades
val baseFacade = <appliedenergistics2:facade>.withTag({damage: 0, item: "minecraft:stone"});
for facade in <appliedenergistics2:facade>.definition.subItems {
    if (facade.hasTag && !(baseFacade.matchesExact(facade))) {
        mods.jei.JEI.hide(facade);
    }
}
<appliedenergistics2:facade>.addTooltip(format.red("Facades are not disabled in this pack; just hidden in JEI. To craft facades, place the block you want to create a facade out of in the centre of the crafting grid (3x3) and four AE2 cable anchors on all adjacent sides of that block. If no output appears then you cannot create a facade with that block."));

// *** Tropicraft Balance.
recipes.remove(<tropicraft:portal_enchanter:*>);
<tropicraft:portal_enchanter>.addTooltip(format.red("Disabled under the Equilibrium act"));
recipes.remove(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 9 as byte}, {IngredientID: 11 as byte}], Color: 15724527, DrinkID: 6 as byte}), true);
recipes.remove(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 9 as byte}, {IngredientID: 12 as byte}], Color: 15724527, DrinkID: 6 as byte}), true);
recipes.remove(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 10 as byte}, {IngredientID: 11 as byte}], Color: 15724527, DrinkID: 6 as byte}), true);
recipes.remove(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 10 as byte}, {IngredientID: 12 as byte}], Color: 15724527, DrinkID: 6 as byte}), true);
recipes.remove(<tropicraft:drink_mixer>);
recipes.addShapeless(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 11 as byte}, {IngredientID: 15 as byte}], Color: 16777215, DrinkID: 7 as byte}), [<tropicraft:coconut>, <tropicraft:tropics_water_bucket>, <tropicraft:bamboo_mug>]);
recipes.addShapeless(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 6 as byte}, {IngredientID: 13 as byte}, {IngredientID: 15 as byte}], Color: 16777215, DrinkID: 4 as byte}), [<tropicraft:lime>, <minecraft:reeds>, <tropicraft:bamboo_mug>, <tropicraft:tropics_water_bucket>]);
recipes.addShapeless(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 0 as byte}, {IngredientID: 6 as byte}, {IngredientID: 15 as byte}], Color: 16777215, DrinkID: 2 as byte}), [<tropicraft:lime>,<minecraft:sugar>,<tropicraft:bamboo_mug>,<tropicraft:tropics_water_bucket>]);
recipes.addShapeless(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 0 as byte}, {IngredientID: 7 as byte}, {IngredientID: 15 as byte}], Color: 16777215, DrinkID: 3 as byte}), [<tropicraft:orange>, <minecraft:sugar>, <tropicraft:bamboo_mug>, <tropicraft:tropics_water_bucket>]);
recipes.addShapeless(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 14 as byte}, {IngredientID: 15 as byte}], Color: 16777215, DrinkID: 5 as byte}), [<tropicraft:coffee_beans:1>, <tropicraft:tropics_water_bucket>, <tropicraft:bamboo_mug>]);
recipes.addShapeless(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 0 as byte}, {IngredientID: 5 as byte}, {IngredientID: 15 as byte}], Color: 16777215, DrinkID: 1 as byte}), [<tropicraft:lemon>,<minecraft:sugar>,<tropicraft:bamboo_mug>,<tropicraft:tropics_water_bucket>]);
recipes.addShapeless(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 6 as byte}, {IngredientID: 7 as byte}, {IngredientID: 15 as byte}], Color: 16777215, DrinkID: 8 as byte}), [<tropicraft:lime>,<tropicraft:orange>,<tropicraft:bamboo_mug>,<tropicraft:tropics_water_bucket>]);
<tropicraft:cocktail>.withTag({DrinkID: 6}).addTooltip(format.red("Heard of only in legends..."));
<tropicraft:drink_mixer>.addTooltip(format.red("Disabled under the Equilibrium act"));

// *** Tropicraft Manganese ore > 2 dust
events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    if(event.blockState has <item:tropicraft:ore>.asBlock().definition.getStateFromMeta(3)) {
        event.drops = [<nuclearcraft:dust:11> % 100, <nuclearcraft:dust:11> % 100];
    }
});

// *** Tropicraft Shaka ore > Cobblestone
events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    if(event.blockState has <item:tropicraft:ore>.asBlock().definition.getStateFromMeta(4)) {
        event.drops = [<minecraft:cobblestone> % 100];
    }
});

// *** Tropicraft Manganese ore removed.
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:866>, <tropicraft:ore:3>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:865>, <tropicraft:ore:3>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <tropicraft:ore:3>);
mods.tconstruct.Melting.removeRecipe(<liquid:manganese>);
recipes.removeByRecipeName("thermalfoundation:dust_16");
recipes.removeByRecipeName("thermalfoundation:ingot_24");
recipes.removeByRecipeName("thermalfoundation:ingot_26");
mods.thermalexpansion.Pulverizer.removeRecipe(<tropicraft:ore:3>);
mods.nuclearcraft.manufactory.removeRecipeWithInput(<tropicraft:ore:3>);
mods.nuclearcraft.melter.removeRecipeWithInput(<tropicraft:ore:3>);

// *** Atum Balance
recipes.remove(<atum:scarab>);
<atum:scarab>.addTooltip(format.red("Heard of only in legends..."));

// *** Betweenlands Balance
recipes.remove(<thebetweenlands:swamp_talisman:0>);
mods.jei.JEI.removeAndHide(<thebetweenlands:swamp_talisman:1>);
mods.jei.JEI.removeAndHide(<thebetweenlands:swamp_talisman:2>);
mods.jei.JEI.removeAndHide(<thebetweenlands:swamp_talisman:3>);
mods.jei.JEI.removeAndHide(<thebetweenlands:swamp_talisman:4>);
<thebetweenlands:swamp_talisman:0>.addTooltip(format.red("Heard of only in legends..."));

// *** First start balance (roika)
recipes.remove(<thermalexpansion:dynamo:0>);
recipes.remove(<warpdrive:component:14>);
recipes.remove(<warpdrive:component:16>);
recipes.remove(<warpdrive:component:11>);
// Steam Dynamo Recipe
recipes.addShapedMirrored("Steam Dynamo", 
<thermalexpansion:dynamo:0>, 
[[null, <thermalfoundation:material:513>, null],
[<minecraft:iron_ingot>, <thermalfoundation:material:256>, <minecraft:iron_ingot>], 
[<thermalfoundation:material:128>, <minecraft:redstone>, <thermalfoundation:material:128>]]);
// WarpDrive Glass Tank Recipe
recipes.addShapedMirrored("Glass Tank", 
<warpdrive:component:14>, 
[[<minecraft:iron_ingot>, <minecraft:glass>, <minecraft:iron_ingot>],
[<minecraft:glass>, null, <minecraft:glass>], 
[<minecraft:iron_ingot>, <minecraft:glass>, <minecraft:iron_ingot>]]);
// WarpDrive Pump Recipe
recipes.addShapedMirrored("Pump", 
<warpdrive:component:16>, 
[[<techguns:itemshared:56>, <techguns:itemshared:56>, <warpdrive:component:14>],
[<warpdrive:component:15>, <minecraft:iron_ingot>, <warpdrive:component:15>], 
[<warpdrive:component:14>, <techguns:itemshared:56>, <techguns:itemshared:56>]]);
// WarpDrive Air Canister Recipe
recipes.addShapedMirrored("Empty Air Canister", 
<warpdrive:component:11>, 
[[<minecraft:iron_bars>, <minecraft:wool>, <minecraft:iron_bars>],
[<techguns:itemshared:56>, <warpdrive:component:14>, <techguns:itemshared:56>], 
[<minecraft:iron_bars>, <minecraft:wool>, <minecraft:iron_bars>]]);
// String from root and Green Dye Smelt recipes
recipes.addShapeless("Make String", <minecraft:string>, [<biomesoplenty:plant_1:9>]);
furnace.addRecipe(<biomesoplenty:green_dye>, <minecraft:leaves2:1>);

// *** Chunkloading through plugins only
recipes.remove(<mekanism:anchorupgrade>);
<mekanism:anchorupgrade>.addTooltip(format.red("ChunkLoader Disabled."));
recipes.remove(<opencomputers:upgrade:4>);
<opencomputers:upgrade:4>.addTooltip(format.red("ChunkLoader Disabled."));
<warpdrive:chunk_loader.basic>.addTooltip(format.red("Place an iron block then right click it with a blaze rod to make a chunkloader"));
<warpdrive:chunk_loader.advanced>.addTooltip(format.red("Place an iron block then right click it with a blaze rod to make a chunkloader"));
<warpdrive:chunk_loader.superior>.addTooltip(format.red("Place an iron block then right click it with a blaze rod to make a chunkloader"));
// *** Corruption
// ICBM rejuvenation for balance and world corruption
recipes.remove(<icbmclassic:explosives:12>);
<icbmclassic:explosives:12>.addTooltip(format.red("Member of the corruptolic anonymous"));
recipes.remove(<icbmclassic:missile:12>);
<icbmclassic:missile:12>.addTooltip(format.red("Member of the corruptolic anonymous"));

// Mekanism Robit voiding items
recipes.remove(<mekanism:robit>);
<mekanism:robit>.addTooltip(format.red("Member of the corruptolic anonymous"));

// *** Crashing items/blocks
// AppliedEnergistics2 Security Terminal causing block drop
<appliedenergistics2:security_station>.addTooltip(format.red("Randomly breaks blocks when reloading chunks!"));

// Mekanism cardboard box
recipes.remove(<mekanism:cardboardbox>);
<mekanism:cardboardbox>.addTooltip(format.red("Member of the crasholic anonymous"));

// ICBM Xmas grenades
recipes.remove(<icbmclassic:grenade:29>);
<icbmclassic:grenade:29>.addTooltip(format.red("Member of the crasholic anonymous"));
recipes.remove(<icbmclassic:grenade:30>);
<icbmclassic:grenade:30>.addTooltip(format.red("Member of the crasholic anonymous"));

// OpenModularTurrets relativistic turret head
recipes.remove(<openmodularturrets:relativistic_turret>);
<openmodularturrets:relativistic_turret>.addTooltip(format.red("Member of the crasholic anonymous"));

// TechGuns guidded missile launcher
// (not working in SMP)
recipes.remove(<techguns:guidedmissilelauncher>);
<techguns:guidedmissilelauncher>.addTooltip(format.red("Single player only"));

// *** Equilibrium (a.k.a. duplication and unfair combat)
// Botania Tiny potato
mods.botania.ManaInfusion.removeRecipe(<botania:tinypotato>);
<botania:tinypotato>.addTooltip(format.red("Disabled under the Equilibrium act"));

// AppliedEnergistics2 annihilation planes (hardness bypass)
// won't work, need custom recipe config: recipes.removeShaped(<appliedenergistics2:part:300>); 
<appliedenergistics2:part:300>.addTooltip(format.red("Disabled under the Equilibrium act"));

// won't work, need custom recipe config: recipes.removeShaped(<appliedenergistics2:part:301>); 
<appliedenergistics2:part:301>.addTooltip(format.red("Disabled under the Equilibrium act"));

// AppliedEnergistics2 formation plane (duping)
// won't work, need custom recipe config: recipes.removeShaped(<appliedenergistics2:part:320>);
<appliedenergistics2:part:320>.addTooltip(format.red("Disabled under the Equilibrium act"));

// Building gadget Exchanging gadget instant breaking hull blocks
recipes.remove(<buildinggadgets:exchangertool>);
<buildinggadgets:exchangertool>.addTooltip(format.red("Disabled under the Equilibrium act"));

// Mekanism digital miner bypassing unbreakable blocks
recipes.remove(<mekanism:machineblock:4>);
<mekanism:machineblock:4>.addTooltip(format.red("Disabled under the Equilibrium act"));

// Mekanism Personal chest is actually public
<mekanism:machineblock:13>.displayName = "Public chest";

// Mekanism Security desk (unraidable blocks)
recipes.remove(<mekanism:basicblock2:9>);
<mekanism:basicblock2:9>.addTooltip(format.red("Disabled under the Equilibrium act"));

// Mekanism recyling torches into coal, making diamonds from wood > charcoal > torch > coal > diamond
mods.mekanism.sawmill.removeRecipe(<minecraft:torch> * 4);

// Nuclearcraft Domino's special gives 29 saturation per meat (normally 4.5)
recipes.remove(<nuclearcraft:dominos>);
<nuclearcraft:dominos>.addTooltip(format.aqua("Illegal in most places, but..."));

// Thermal Signalum security lock (unraidable satchel)
recipes.remove(<thermalfoundation:security>);
<thermalfoundation:security>.addTooltip(format.red("Disabled under the Equilibrium act"));

// TechGuns CamoBench gives free dye through Thermal Pulverizer
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:1>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:2>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:3>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:4>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:5>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:6>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:7>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:8>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:9>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:10>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:11>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:12>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:13>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:14>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:15>);

mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:1>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:2>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:3>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:4>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:5>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:6>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:7>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:8>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:9>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:10>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:11>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:12>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:13>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:14>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:15>, 3000);

// *** Protection bypass
// Tinker's Construct ELFN bypassing protections
recipes.remove(<tconstruct:throwball:1>);
<tconstruct:throwball:1>.addTooltip(format.red("Disabled under the Spawn preservation act"));
