// basic production for raw materials and addressing overlaps
import mods.tconstruct.Alloy;

// *** Clay
// clay from hardened clay with 50% efficiency
<ore:hardenedClay>.add(<minecraft:hardened_clay>);
recipes.addShaped("minecraft_recycle_hardened_clay2", <minecraft:clay_ball> * 16,
	[	[<ore:hardenedClay>,                  <ore:hardenedClay>,       <ore:hardenedClay>],
		[<ore:hardenedClay>,                  <minecraft:water_bucket>, <ore:hardenedClay>],
		[<ore:hardenedClay>,                  <ore:hardenedClay>,       <ore:hardenedClay>]]); 

recipes.addShaped("minecraft_recycle_terracotta", <minecraft:clay_ball> * 16, 
	[	[<minecraft:stained_hardened_clay:*>, <minecraft:stained_hardened_clay:*>, <minecraft:stained_hardened_clay:*>],
		[<minecraft:stained_hardened_clay:*>, <minecraft:water_bucket>,            <minecraft:stained_hardened_clay:*>],
		[<minecraft:stained_hardened_clay:*>, <minecraft:stained_hardened_clay:*>, <minecraft:stained_hardened_clay:*>]]); 


// *** Charcoal
// remove Chisel & Mekanism crafting in favor of ThermalExpansion which has better integration
recipes.removeShaped(<chisel:block_charcoal2:1>);
recipes.removeShaped(<mekanism:basicblock:3>);

// unify uncrafting recipe
recipes.remove(<minecraft:coal:1>);
recipes.addShapeless("minecraft_charcoal", <minecraft:coal:1> * 9,
	[	<ore:blockCharcoal> ]);


// *** Circuits
// * Basic circuits
// leave Mekanism cheap 'as is'

/*
// increase IC2 Basic circuits from 1 to 2
recipes.remove(<IC2:itemPartCircuit>);
recipes.addShaped(<IC2:itemPartCircuit> * 2,
	[	[<ore:wireCopper>,            <ore:wireCopper>,                  <ore:wireCopper>],
		[<ore:dustRedstone>,          <ore:plateIron>,                   <ore:dustRedstone>],
		[<ore:wireCopper>,            <ore:wireCopper>,                  <ore:wireCopper>] ]);
*/

// reduce TechGuns Basic circuits from 4 to 2
recipes.remove(<techguns:itemshared:65>);
recipes.addShaped("techguns_basic_circuit", <techguns:itemshared:65> * 2,
	[	[<ore:wireCopper>,            <ore:dyeGreen>,                    <ore:wireCopper>],
		[<ore:dustRedstone>,          <ore:plateIron>,                   <ore:dustRedstone>],
		[<ore:wireCopper>,            <ore:dyeGreen>,                    <ore:wireCopper>] ]);

// * Advanced circuits
// add copper to Mekanism
recipes.remove(<mekanism:controlcircuit:1>);
recipes.addShaped("mekanism_advanced_circuit", <mekanism:controlcircuit:1> * 2,
	[	[<ore:wireCopper>,            <ore:wireCopper>,                  <ore:wireCopper>],
		[<ore:circuitBasic>,          <ore:alloyAdvanced>,               <ore:circuitBasic>],
		[<ore:wireCopper>,            <ore:wireCopper>,                  <ore:wireCopper>] ]);

// adjust Techguns circuits hierarchy, restricting Elite circuits to Osmium
<ore:circuitAdvanced>.add(<techguns:itemshared:66>);
<ore:circuitElite>.remove(<techguns:itemshared:66>);
<techguns:itemshared:66>.displayName = "Advanced Circuit Board";

// replace copper with gold to give alternative options
recipes.remove(<techguns:itemshared:66>);
recipes.addShaped("techguns_advanced_circuit", <techguns:itemshared:66> * 2,
	[	[<ore:dustRedstone>,          <ore:wireGold>,                    <ore:dustRedstone>],
		[<ore:circuitBasic>,          <ore:ingotIron>,                   <ore:circuitBasic>],
		[<ore:dustRedstone>,          <ore:wireGold>,                    <ore:dustRedstone>]]);

// * Elite circuits
// add lapis and gold to Mekanism
recipes.remove(<mekanism:controlcircuit:2>);
recipes.addShaped("mekanism_elite_circuit", <mekanism:controlcircuit:2> * 2,
	[	[<ore:alloyElite>,            <ore:wireGold>,                    <ore:alloyElite>],
		[<ore:circuitAdvanced>,       <ore:plateLapis>,                  <ore:circuitAdvanced>],
		[<ore:alloyElite>,            <ore:wireGold>,                    <ore:alloyElite>] ]);


// *** Dyes
// not applicable


// *** Glowstone
mods.tconstruct.Casting.addBasinRecipe(<minecraft:glowstone>, null, <liquid:glowstone>, 1000, true);


// *** Gravel
// add cobblestone to gravel
//      InputStack, OutputStack1, Turns, OutputStack2, OutputStackChance2, OutputStack3, OutputStackChance3
mods.appliedenergistics2.Grinder.addRecipe(<minecraft:cobblestone>, <minecraft:gravel>, 4); // @TODO not working?


// *** Gunpowder, Sulfur and Saltpeter
// remove unobtainable dusts
mods.jei.JEI.removeAndHide(<icbmclassic:saltpeter>);
mods.jei.JEI.removeAndHide(<nuclearcraft:gem_dust:6>);

// unify ore dictionary entries
<ore:dustSulfur>.addAll(<ore:dustSulphur>);
<ore:dustSulphur>.addAll(<ore:dustSulfur>);

<ore:dustNiter>.addAll(<ore:dustSaltpeter>);
<ore:dustSaltpeter>.addAll(<ore:dustNiter>);

// remove Thermal to integrate with Mekanism (changing 1 per coal into 1 per saltpeter)
// recipes.remove(<ore:dustGunpowder>);
recipes.removeByRecipeName("thermalfoundation:gunpowder");
recipes.removeByRecipeName("thermalfoundation:gunpowder_1");
recipes.addShaped("vanilla_coal_to_9_gunpowder", <minecraft:gunpowder> * 9,
	[	[<ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustSaltpeter>],
		[<ore:dustSaltpeter>, <ore:dustSulfur>,    <ore:dustSaltpeter>],
		[<ore:dustSaltpeter>, <ore:dustCoal>,  <ore:dustSaltpeter>] ]);
recipes.addShaped("vanilla_charcoal_to_9_gunpowder", <minecraft:gunpowder> * 9,
	[	[<ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustSaltpeter>],
		[<ore:dustSaltpeter>, <ore:dustSulfur>,    <ore:dustSaltpeter>],
		[<ore:dustSaltpeter>, <ore:dustCharcoal>,  <ore:dustSaltpeter>] ]);

recipes.addShapeless("vanilla_coal_to_1_gunpowder", <minecraft:gunpowder>,
	[	<ore:dustSulfur>, <ore:dustSaltpeter>, <ore:dustCoal> ]);
recipes.addShapeless("vanilla_charcoal_to_1_gunpowder", <minecraft:gunpowder>,
	[	<ore:dustSulfur>, <ore:dustSaltpeter>, <ore:dustCharcoal> ]);

recipes.addShapeless("vanilla_coal_to_3_gunpowder", <minecraft:gunpowder> * 3,
	[	<ore:dustSulfur>, <ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustCoal> ]);
recipes.addShapeless("vanilla_charcoal_to_3_gunpowder", <minecraft:gunpowder> * 3,
	[	<ore:dustSulfur>, <ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustCharcoal> ]);


// *** Ladders
// Vanilla ladder increasing output to 8
recipes.removeShaped(<minecraft:ladder>);
recipes.addShaped("minecraft_ladder", <minecraft:ladder> * 8,
	[	[<ore:stickWood>,          null,                 <ore:stickWood>],
		[<ore:stickWood>,          <ore:stickWood>,      <ore:stickWood>],
		[<ore:stickWood>,          null,                 <ore:stickWood>] ]);

// Tinker's Construct Stone ladder increasing output to 8
recipes.removeShaped(<tconstruct:stone_ladder>);
recipes.addShaped("tconstruct_stone_ladder", <tconstruct:stone_ladder> * 8,
	[	[<ore:rodStone>,           null,                 <ore:rodStone>],
		[<ore:rodStone>,           <ore:rodStone>,       <ore:rodStone>],
		[<ore:rodStone>,           null,                 <ore:rodStone>] ]);

// TechGuns ladders are made from multiple metals, we can't recycle them
// (not working) mods.tconstruct.Melting.removeRecipe(<liquid:molten_tin>, <techguns:ladder0:8>);

// Quark iron ladder reducing output from 16 to 5 since it uses ingots
// Quark iron ladder rotated due to conflict with Malisis Rusty ladder
//	recipes.removeShaped(<quark:iron_ladder>);
//	recipes.addShaped("quark_iron_ladder", <quark:iron_ladder> * 5,
//		[	[<ore:ingotIron>,      <ore:ingotIron>,      <ore:ingotIron>],
//			[null,                 <ore:ingotIron>,      null],
//			[<ore:ingotIron>,      <ore:ingotIron>,      <ore:ingotIron>] ]);


// *** Lithium
// IC2 makes 1 tiny dust from 2 Nether quartz in a Thermal centrifuge
//   => 18 Nether quartz gives 1 Lithium dust
// NuclearCraft adds ores, but it's fairly rare
// Mekanism makes from water in a salination plant into Brine into liquid lithium (it's nowhere close to realistic and a bit laggy)
//   10mB Water in a Thermal evaporation plant gives 1mB Brine
//   10mB Brine in a Thermal evaporation plant gives 1mB Liquid Lithium
//   1mB Liquid Lithium in a Decondensentrator gives 1mB Lithium (gaz?)
//   100mB Lithium (gaz?) in a Chemical oxydizer gives 1 dust
//   => 10 buckets of Water gives 1 Lithium dust
// WarpDrive uses it extensively, but doesn't provide it

// add a simpler route from End stone when IC2 is missing
mods.mekanism.crusher.addRecipe(<minecraft:end_stone>, <nuclearcraft:gem_dust:11>);
mods.mekanism.purification.addRecipe(<ore:dustEndstone>, <gas:oxygen>, <nuclearcraft:dust:6>);

// *** Liquid
// conversion between Mekanism and NuclearCraft through NuclearCraft Electrolyser
mods.nuclearcraft.electrolyser.addRecipe([<liquid:sulfur_dioxide>  * 1000, <liquid:liquidsulfurdioxide>  * 1000, null, null, null, 0.00625, 0.1, 0.0]);
mods.nuclearcraft.electrolyser.addRecipe([<liquid:ethene>          * 1000, <liquid:liquidethene>         * 1000, null, null, null, 0.00625, 0.1, 0.0]);
mods.nuclearcraft.electrolyser.addRecipe([<liquid:sodium>          * 1000, <liquid:liquidsodium>         * 1000, null, null, null, 0.00625, 0.1, 0.0]);
mods.nuclearcraft.electrolyser.addRecipe([<liquid:tritium>         * 1000, <liquid:liquidtritium>        * 1000, null, null, null, 0.00625, 0.1, 0.0]);
mods.nuclearcraft.electrolyser.addRecipe([<liquid:hydrogen>        * 1000, <liquid:liquidhydrogen>       * 1000, null, null, null, 0.00625, 0.1, 0.0]);
mods.nuclearcraft.electrolyser.addRecipe([<liquid:oxygen>          * 1000, <liquid:liquidoxygen>         * 1000, null, null, null, 0.00625, 0.1, 0.0]);
mods.nuclearcraft.electrolyser.addRecipe([<liquid:sulfur_trioxide> * 1000, <liquid:liquidsulfurtrioxide> * 1000, null, null, null, 0.00625, 0.1, 0.0]);
mods.nuclearcraft.electrolyser.addRecipe([<liquid:sulfuric_acid>   * 1000, <liquid:sulfuricacid>         * 1000, null, null, null, 0.00625, 0.1, 0.0]);
mods.nuclearcraft.electrolyser.addRecipe([<liquid:deuterium>       * 1000, <liquid:liquiddeuterium>      * 1000, null, null, null, 0.00625, 0.1, 0.0]);
mods.nuclearcraft.electrolyser.addRecipe([<liquid:lithium>         * 1000, <liquid:liquidlithium>        * 1000, null, null, null, 0.00625, 0.1, 0.0]);


// *** Nether star
// add an expensive recipe for automation, as an alternative to Woot
recipes.remove(<minecraft:nether_star>);
recipes.addShaped(<minecraft:nether_star>,
	[	[<minecraft:diamond_sword>, <minecraft:skull:1>,   <botania:manaresource:1>],
		[<minecraft:soul_sand>,     <minecraft:soul_sand>, <minecraft:soul_sand>],
		[null,                      <minecraft:soul_sand>, null] ]);


// *** Paper
// remove cheap Mekanism in favor of Thermal's inspired water one
recipes.removeByRecipeName("mekanism:paper");
recipes.removeByRecipeName("thermalfoundation:paper");
recipes.addShapeless(<minecraft:paper> * 6,
	[	<ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <ore:dustWood>,
		<ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <ore:dustWood>,
		<minecraft:water_bucket> ]);


// *** Redstone
mods.tconstruct.Casting.addBasinRecipe(<minecraft:redstone_block>, null, <liquid:redstone>, 900, true);


// *** Reinforced/Hardened glass
// WarpDrive basic hull glass should be considered as Hardened glass
<ore:blockGlassHardened>.addAll(<ore:blockHull1_glass>);


// *** Rubber
// Mekanism HDPE Pellet should be considered as rubber item or plastic sheet
<ore:itemRubber>.add(<mekanism:polyethene:0>);
<ore:sheetPlastic>.add(<mekanism:polyethene:2>);
// recipes.replaceAllOccurences(<techguns:xxx>, <ore:xxx>);


// *** Sand
// recycling sand variants into plain vanilla one
// use case: Mekanism plastic recipes, etc.
recipes.addShaped("minecraft_ore_sand_to_vanilla", <minecraft:sand> * 8, 
	[	[<ore:sand>,                <ore:sand>,                                                    <ore:sand>],
		[<ore:sand>,                <minecraft:water_bucket>.transformReplace(<minecraft:bucket>), <ore:sand>],
		[<ore:sand>,                <ore:sand>,                                                    <ore:sand>] ]);


// *** Salt
// Mekanism salt block should use ore dictionary
recipes.remove(<mekanism:saltblock>);
recipes.addShaped("mekanism_saltblock", <mekanism:saltblock>,
	[	[<ore:dustSalt>, <ore:dustSalt>],
		[<ore:dustSalt>, <ore:dustSalt>] ]);


// *** Slime
// recycling Tinker's construct congealed slimes blocks into vanilla slime balls
recipes.addShaped(<minecraft:slime_ball> * 12, 
	[	[<ore:blockSlimeCongealed>, <ore:blockSlimeCongealed>,                                     <ore:blockSlimeCongealed>],
		[<ore:dyeGreen>,            <minecraft:water_bucket>.transformReplace(<minecraft:bucket>), <ore:dyeGreen>],
		[<ore:blockSlimeCongealed>, <ore:blockSlimeCongealed>,                                     <ore:blockSlimeCongealed>] ]);


// *** Stone
// Encourage chiseling instead of crafting
recipes.removeShaped(<minecraft:stonebrick:3>); 


// *** Wooden parts
// * Doors
// Use Ore dictionary planks for mods with no doors
recipes.addShaped("vanilla_oak_door", <minecraft:wooden_door> * 3,
	[	[<ore:plankWood>,             <ore:plankWood>,            null],
		[<ore:plankWood>,             null,                       <ore:plankWood>],
		[<ore:plankWood>,             <ore:plankWood>,            null] ]);

// * Recycling
// 9 sticks to 1 plank (machines can give 6+ per plank)
recipes.addShapeless(<minecraft:planks>,
	[	<minecraft:stick>,            <minecraft:stick>,          <minecraft:stick>,
		<minecraft:stick>,            <minecraft:stick>,          <minecraft:stick>,
		<minecraft:stick>,            <minecraft:stick>,          <minecraft:stick> ]);
// stick to plank recipe is overlapping with MineTraps Fall trap
recipes.remove(<minetraps:fall_trap>);
recipes.addShapeless(<minetraps:fall_trap>,
	[	<ore:stickWood>,              <ore:stickWood>,            <ore:stickWood>,
		<ore:stickWood>,              <ore:paper>,                <ore:stickWood>,
		<ore:stickWood>,              <ore:stickWood>,            <ore:stickWood> ]);

// slabs back to plank
// recipes.addShapeless(<minecraft:planks>, [<ore:slabWoodOak>, <ore:slabWoodOak>]);

