// metals deduplification
// readding to furnace the dust to ingot recipe resynchronize Mekanism smelting factories, etc.

// *** Aluminum
// ThermalFoundation takes priority
<ore:ingotAluminum>.remove(<nuclearcraft:ingot:12>);
mods.jei.JEI.removeAndHide(<nuclearcraft:ingot:12>);
furnace.addRecipe(<thermalfoundation:material:163>, <ore:dustAluminum>);

// *** Bronze
// ThermalFoundation takes priority
<ore:ingotBronze>.remove(<nuclearcraft:alloy>);
mods.jei.JEI.removeAndHide(<nuclearcraft:alloy>);
<ore:ingotCopper>.remove(<mekanism:ingot:2>);
furnace.remove(<mekanism:ingot:2>);
mods.jei.JEI.removeAndHide(<mekanism:ingot:2>);
furnace.addRecipe(<thermalfoundation:material:163>, <ore:dustBronze>);

// *** Copper
// ThermalFoundation takes priority
<ore:ingotCopper>.remove(<mekanism:ingot:5>);
furnace.remove(<mekanism:ingot:5>);
mods.jei.JEI.removeAndHide(<mekanism:ingot:5>);
mods.jei.JEI.removeAndHide(<mekanism:oreblock:1>);
mods.jei.JEI.removeAndHide(<techguns:basicore>);
furnace.addRecipe(<thermalfoundation:material:128>, <ore:dustCopper>);

// *** Lead
mods.jei.JEI.removeAndHide(<techguns:basicore:2>);

// *** Electrum
// ThermalFoundation takes priority
furnace.addRecipe(<thermalfoundation:material:161>, <ore:dustElectrum>);

// *** Enderium
furnace.addRecipe(<thermalfoundation:material:167>, <ore:dustEnderium>);

// *** Lumium
furnace.addRecipe(<thermalfoundation:material:166>, <ore:dustLumium>);

// *** Osmium
furnace.addRecipe(<mekanism:ingot:1>, <ore:dustOsmium>);

// *** Platinum
furnace.addRecipe(<thermalfoundation:material:134>, <ore:dustPlatinum>);

// *** Signalum
furnace.addRecipe(<thermalfoundation:material:165>, <ore:dustSignalum>);

// *** Silver
// ThermalFoundation takes priority
<ore:ingotSilver>.remove(<nuclearcraft:ingot:13>);
furnace.remove(<nuclearcraft:ingot:13>);
mods.jei.JEI.removeAndHide(<nuclearcraft:ingot:13>);
furnace.addRecipe(<thermalfoundation:material:130>, <ore:dustSilver>);

// *** Steel
// remove basic smelting
// vanilla/ThermalExpansion is 1 iron ingot + 4 coal makes 1 steel ingot
// Mekanism Infuser is 1 iron ingot + 2 coal makes 1 steel ingot
// Mekanism Infuser + Enrichment is 1 iron ingot + 0.25 coal makes 1 steel ingot
// TechGuns is 4 iron ingot + 1 coal makes 4 steel ingot

// * remove basic smelting
// furnace.remove(<ore:ingotSteel>);

// remove tinker's smeltery alloying Coal and Iron, keep alloying Iron and Manganese
// mods.tconstruct.Alloy.removeRecipe(<liquid:steel>);
mods.tconstruct.Alloy.removeRecipe(<liquid:steel>*18, [<liquid:iron> * 18, <liquid:coal> * 25]);

// * progression
// stage TechGun behind Mekanism
recipes.remove(<techguns:simplemachine:11>);
recipes.addShaped("techguns_blast_furnace", <techguns:simplemachine:11>,
	[	[<ore:plateIron>,               <ore:dustRedstone>,              <ore:plateIron>],
		[<mekanism:machineblock:8>,     null,                            <mekanism:machineblock:8>],
		[<minecraft:stonebrick>,        <minecraft:furnace>,             <minecraft:stonebrick>] ]);

// * ThermalFoundation takes priority
<ore:ingotSteel>.remove(<bigreactors:ingotsteel>);
furnace.remove(<bigreactors:ingotsteel>);
mods.jei.JEI.removeAndHide(<bigreactors:ingotsteel>);

recipes.remove(<bigreactors:blocksteel>);

<ore:ingotSteel>.remove(<mekanism:ingot:4>);
furnace.remove(<mekanism:ingot:4>);
mods.jei.JEI.removeAndHide(<mekanism:ingot:4>);

<ore:ingotSteel>.remove(<nuclearcraft:alloy:5>);
furnace.remove(<nuclearcraft:alloy:5>);
mods.jei.JEI.removeAndHide(<nuclearcraft:alloy:5>);
furnace.remove(<techguns:itemshared:83>);


// *** Tin
// ThermalFoundation takes priority
<ore:ingotTin>.remove(<mekanism:ingot:6>);
furnace.remove(<mekanism:ingot:6>);
mods.jei.JEI.removeAndHide(<mekanism:ingot:6>);
mods.jei.JEI.removeAndHide(<mekanism:oreblock:2>);
mods.jei.JEI.removeAndHide(<techguns:basicore:1>);
furnace.addRecipe(<thermalfoundation:material:129>, <ore:dustTin>);


// *** Uranium and yellorium are the same
<ore:oreUranium>.add(<bigreactors:oreyellorite>);
<ore:crushedUranium>.add(<bigreactors:dustyellorium>);
<ore:blockUranium>.addAll(<ore:blockYellorium>);
<ore:blockYellorium>.addAll(<ore:blockUranium>);
mods.jei.JEI.removeAndHide(<techguns:basicore:4>);

// *** Uranium processing for military usage
// TechGuns Enriched Uranium processing from NuclearCraft U235 and sulfuric acid
val enrichedUraniumOutput = [<techguns:itemshared:98>, <nuclearcraft:californium:2>] as crafttweaker.item.IItemStack[];
mods.techguns.ReactionChamber.removeRecipe(<techguns:itemshared:97>, <liquid:water>);
mods.techguns.ReactionChamber.addRecipe("EnrichedUranium",
    <nuclearcraft:fuel_uranium:5>,
    <liquid:sulfuricacid>,
    enrichedUraniumOutput,
    <techguns:itemshared:104>,
    6, 5, 7, 2, 3, 1000,0.0,
    "EXPLOSION_LOW",
    250000
);
