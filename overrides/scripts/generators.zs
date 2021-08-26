// progression of energy production


// *** Furnace fuels
// Coal/Charcoal defaults to 8 items
// Lava defaults to 100 items
// Blaze defaults to 12 items, increase to 20
furnace.setFuel(<minecraft:blaze_rod>, 4000);
// Botania Blaze lantern defaults to 120, increase to 160
// furnace.setFuel(<quark:blaze_lantern>, 32000);
// Mekanism charcoal block defaults to 14400, increase to 16000 in pair with other mods
furnace.setFuel(<mekanism:basicblock:3>, 16000);


// *** Nuclear generators
print("Nuclear generators");
// ExtremeReactors Reactor Casing
// note: immersiveengineering:metal_ladder is ~2.3 steel rods
// note: IC2 Reactor pressure vessel is 1.2 lead plate + 1 stone

recipes.remove(<bigreactors:reactorcasingcores>);
recipes.addShaped("ExtremeReactors_reactorcasingcores", <bigreactors:reactorcasingcores>,
	[	[null,                     <ore:plateSteel>,              null],
		[<ore:plateSteel>,         <ore:ingotGold>,               <ore:plateSteel>],
		[null,                     <ore:plateSteel>,              null] ]);

// ExtremeReactors Turbine Housing
recipes.remove(<bigreactors:turbinehousingcores>);
recipes.addShaped("ExtremeReactors_turbinehousingcores", <bigreactors:turbinehousingcores>,
	[	[null,                     <ore:plateSteel>,              null],
		[<ore:plateInvar>,         <ore:plateEnderium>,           <ore:plateInvar>],
		[null,                     <ore:plateSteel>,              null] ]);

// ExtremeReactors Fuel Rods
recipes.remove(<bigreactors:reactorfuelrod>);
recipes.addShaped("ExtremeReactors_FuelRod", <bigreactors:reactorfuelrod> * 2,
	[	[<ore:ingotGraphite>,      <ore:plateSteel>,              <ore:ingotGraphite>],
		[<ore:blockGlassHardened>, <ore:dustUranium>,             <ore:blockGlassHardened>],
		[<ore:ingotGraphite>,      <ore:plateSteel>,              <ore:ingotGraphite>] ]);

// ExtremeReactors Reactor Controller
recipes.remove(<bigreactors:reactorcontroller>);
// ... from Nuclearcraft Fission controller
recipes.addShaped("ExtremeReactors_ReactorController_fromNuclearCraft", <bigreactors:reactorcontroller>,
	[	[<bigreactors:reactorcasing>,  <ore:circuitUltimate>,                       <bigreactors:reactorcasing>],
		[<bigreactors:reactorfuelrod>, <nuclearcraft:fission_controller_new_fixed>, <bigreactors:reactorfuelrod>],
		[<bigreactors:reactorcasing>,  <ore:itemCompressedRedstone>,                <bigreactors:reactorcasing>] ]);
// ... from Mekanism Elite Induction Cell
recipes.addShaped("ExtremeReactors_ReactorController_fromMekanism", <bigreactors:reactorcontroller>,
	[	[<bigreactors:reactorcasing>,  <ore:circuitUltimate>,                       <bigreactors:reactorcasing>],
		[<bigreactors:reactorcasing>,  <mekanism:basicblock2:3>.withTag({tier: 2}), <bigreactors:reactorcasing>],
		[<bigreactors:reactorcasing>,  <ore:itemCompressedRedstone>,                <bigreactors:reactorcasing>] ]);

// ExtremeReactors Graphite ingot
var ExtremeReactors_graphite_ingot = <bigreactors:ingotgraphite>;
recipes.addShapeless("ExtremeReactors_graphite_ingot_fromCarbonPlates", <bigreactors:ingotgraphite>,
	[<ore:plateCarbon>, <ore:plateCarbon>]);

// ExtremeReactors Ludicrite with nether star, with end game items
recipes.remove(<bigreactors:blockludicrite>);
recipes.addShaped("ExtremeReactors_LudicriteBlock_base", <bigreactors:blockludicrite>,
	[	[<ore:plateEnderium>,          <botania:storage:4>,       <ore:plateEnderium>],
		[<ore:plateMithril>,           <ore:netherStar>,          <ore:plateMithril>], // <ore:gaiaIngot>
		[<ore:plateEnderium>,          <botania:storage:4>,	      <ore:plateEnderium>] ]);
recipes.addShapeless("ExtremeReactors_LudicriteIngot_fromBlock", <bigreactors:ingotludicrite> * 9,
	[	<bigreactors:blockludicrite> ]);
recipes.addShapeless("ExtremeReactors_LudicriteBlock_fromIngot", <bigreactors:blockludicrite>,
	[	<ore:ingotLudicrite>,          <ore:ingotLudicrite>,      <ore:ingotLudicrite>,
		<ore:ingotLudicrite>,          <ore:ingotLudicrite>,      <ore:ingotLudicrite>,
		<ore:ingotLudicrite>,          <ore:ingotLudicrite>,      <ore:ingotLudicrite> ]);

// Blutonium Processing through Thermal Expansion Fractionning still, inspired by ATM3
recipes.removeShaped(<bigreactors:ingotblutonium>);
recipes.addShapeless("ExtremeReactors_BlutoniumIngot_fromBlock", <bigreactors:ingotblutonium> * 9,
	[<bigreactors:blockblutonium>]);
mods.thermalexpansion.Crucible.addRecipe(<liquid:cyanite>.withAmount(144),
	<bigreactors:ingotcyanite>, 200000); // cyanite ingot
mods.thermalexpansion.Crucible.addRecipe(<liquid:cyanite>.withAmount(144),
	<bigreactors:dustcyanite>, 200000); // cyanite dust
mods.thermalexpansion.Crucible.addRecipe(<liquid:cyanite>.withAmount(1296),
	<bigreactors:blockcyanite>, 1350000); // cyanite block is 25% cheaper energy
mods.thermalexpansion.Refinery.addRecipe(<liquid:plutonium>.withAmount(144),
	<minecraft:dye:4>, <liquid:cyanite>.withAmount(288), 400000);
<bigreactors:ingotblutonium>.addTooltip(format.aqua("Refined from fractioning molten cyanite"));

// Mekanism Reactor Controller
recipes.remove(<mekanismgenerators:reactor>);

// ... from Mekanism components
recipes.addShaped("Mekanism_Reactor", <mekanismgenerators:reactor>,
	[	[<ore:circuitUltimate>,          <mekanism:basicblock2:3>.withTag({tier: 3}), <ore:circuitUltimate>],
		[<mekanismgenerators:reactor:2>, <mekanism:gastank>.withTag({tier: 3}),       <mekanismgenerators:reactor:2>],
		[<mekanismgenerators:reactor:1>, <ore:shardLead>,                             <mekanismgenerators:reactor:1>] ]);
// ... from ExtremeReactors Reactor controller
recipes.addShaped("Mekanism_Reactor_fromExtremeReactors", <mekanismgenerators:reactor>,
	[	[<bigreactors:ingotludicrite>,   <mekanism:energycube>.withTag({tier: 3}),    <bigreactors:ingotludicrite>],
		[<mekanismgenerators:reactor:2>, <mekanism:gastank>.withTag({tier: 3}),       <mekanismgenerators:reactor:2>],
		[<mekanismgenerators:reactor:1>, <bigreactors:reactorcontroller>,             <mekanismgenerators:reactor:1>] ]);
// ... from Nuclearcraft Fission controller
<ore:fuelDepletedNuclearCraft>.addItems([
	<nuclearcraft:depleted_fuel_americium:*>,
	<nuclearcraft:depleted_fuel_berkelium:*>,
	<nuclearcraft:depleted_fuel_californium:*>,
	<nuclearcraft:depleted_fuel_curium:*>,
	<nuclearcraft:depleted_fuel_mixed_oxide:*>,
	<nuclearcraft:depleted_fuel_neptunium:*>,
	<nuclearcraft:depleted_fuel_plutonium:*>,
	<nuclearcraft:depleted_fuel_thorium:*>,
	<nuclearcraft:depleted_fuel_uranium:*> ]);
recipes.addShaped("Mekanism_Reactor_fromNuclearCraft", <mekanismgenerators:reactor>,
	[	[<ore:fuelDepletedNuclearCraft>, <mekanism:energycube>.withTag({tier: 3}),    <ore:fuelDepletedNuclearCraft>],
		[<mekanismgenerators:reactor:2>, <mekanism:gastank>.withTag({tier: 3}),       <mekanismgenerators:reactor:2>],
		[<mekanismgenerators:reactor:1>, <nuclearcraft:fission_controller_new_fixed>, <mekanismgenerators:reactor:1>] ]);


// *** Solar generators
print("Solar generators");

// Mekanism Solar panel ingredient, replace glass panel with lapis dust
recipes.remove(<mekanismgenerators:solarpanel>);
recipes.addShaped("Mekanism_solarpanel", <mekanismgenerators:solarpanel>,
	[ [<ore:dustLapis>,      <ore:dustLapis>,          <ore:dustLapis>],
	  [<minecraft:redstone>, <mekanism:enrichedalloy>, <minecraft:redstone>],
	  [<ore:plateOsmium>,    <ore:plateOsmium>,        <ore:plateOsmium>] ]);


// *** Wind generators
// Mekanism Wind generator using diamonds and some basic botania to discourage spamming
// Blades from Diamond plates, Mana diamond, Immersive Engineering Improved Windmill blade, or Refined obsidian ingot
// Rotor from Enderium gear, or Enriched alloy
var dynamo = <thermalexpansion:dynamo>.withTag({Level: 0 as byte});
recipes.remove(<mekanismgenerators:generator:6>);
recipes.addShaped(<mekanismgenerators:generator:6>,
	[	[null,                     <ore:plateDiamond>,                 null],
		[<ore:plateDiamond>,       <mekanism:enrichedalloy>,           <ore:plateDiamond>], // <botania:manaresource:2>
		[<ore:battery>,            dynamo,                             <ore:battery>] ]);
