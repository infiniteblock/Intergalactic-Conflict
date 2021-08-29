#ignoreBrac ketErrors
// general progression


// *** Cyberware
// modern, yet accessible
recipes.remove(<cyberware:surgery_chamber>);
recipes.addShaped("cyberware_surgery_chamber", <cyberware:surgery_chamber>,
	[	[<ore:plateCarbon>,             <ore:plateCarbon>,               <ore:plateCarbon>],
		[<ore:plateCarbon>,             null,                            <ore:plateCarbon>],
		[<ore:plateCarbon>,             <minecraft:iron_door>,           <ore:plateCarbon>] ]);

val shearDiamond = <thermalfoundation:tool.shears_diamond>;
val emeraldCrystal = <warpdrive:component:3>;
val memoryCrystal = <warpdrive:component>;
recipes.remove(<cyberware:surgery>);
recipes.addShaped("cyberware_robosurgeon", <cyberware:surgery>,
	[	[<ore:plateCarbon>,             <ore:plateCarbon>,               <ore:plateCarbon>],
		[memoryCrystal,                 emeraldCrystal,                  memoryCrystal],
		[<ore:string>,        			<techguns:combatknife>,          <ore:string>] ]);

// *** Energy transfer
// Mekanism is way cheaper than ThermalDynamics, so we adjust them to Thermal level
// note: Mekanism progression is also much more steep, but we don't touch it here
recipes.remove(<mekanism:transmitter>.withTag({tier: 0}));
recipes.addShaped("mekanism_universal_cable_0", <mekanism:transmitter>.withTag({tier: 0}) * 6,
	[	[<ore:dustRedstone>,             <ore:dustRedstone>,              <ore:dustRedstone>],
		[<ore:ingotSteel>,               <ore:blockGlass>,                <ore:ingotSteel>],
		[<ore:dustRedstone>,             <ore:dustRedstone>,              <ore:dustRedstone>] ]);

recipes.remove(<mekanism:transmitter>.withTag({tier: 1}));
recipes.addShapeless("mekanism_universal_cable_1", <mekanism:transmitter>.withTag({tier: 1}) * 3,
	[	<mekanism:transmitter>.withTag({tier: 0}), <mekanism:transmitter>.withTag({tier: 0}), <mekanism:transmitter>.withTag({tier: 0}),
		<ore:dustRedstone>,             <ore:dustRedstone>,              <ore:dustRedstone>,
		<ore:nuggetInvar>,				<ore:alloyAdvanced> ]);

recipes.remove(<mekanism:transmitter>.withTag({tier: 2}));
recipes.addShapeless("mekanism_universal_cable_2", <mekanism:transmitter>.withTag({tier: 2}) * 3,
	[	<mekanism:transmitter>.withTag({tier: 1}), <mekanism:transmitter>.withTag({tier: 1}), <mekanism:transmitter>.withTag({tier: 1}),
		<ore:nuggetElectrum>,			<ore:alloyElite> ]);

recipes.remove(<mekanism:transmitter>.withTag({tier: 3}));
recipes.addShapeless("mekanism_universal_cable_3", <mekanism:transmitter>.withTag({tier: 3}) * 3,
	[	<mekanism:transmitter>.withTag({tier: 2}), <mekanism:transmitter>.withTag({tier: 2}), <mekanism:transmitter>.withTag({tier: 2}),
		<ore:nuggetSignalum>,			<ore:nuggetEnderium>,			<ore:alloyUltimate> ]);

// *** Gas pipes
// not applicable


// *** Mining
<ore:pumpBasic>.add(<mekanism:machineblock:12>);

// Mekanism Digital Miner
/* disabled for bypass
recipes.remove(<mekanism:machineblock:4>);
var eliteEnergyCube = <mekanism:energycube>.withTag({tier: 3});
var superiorLaserMedium = <warpdrive:laser_medium.superior>;
recipes.addShaped("mekanism_digital_miner", <mekanism:machineblock:4>,
	[	[<ore:circuitElite>,            <mekanism:atomicdisassembler>, <ore:circuitElite>],
		[superiorLaserMedium,           <mekanism:robit>,                superiorLaserMedium],
		[<warpdrive:mining_laser>,      eliteEnergyCube,                 <warpdrive:mining_laser>] ]);
*/

// *** Modular armor
// MPS Tinker Table from steel large plate, rare rods, Coralium Pearl (abyssalcraft), Transmutation Gem (abyssalcraft), advanced casing or signalum upgrade kit
recipes.remove(<powersuits:tinkertable>);
var ThoughRod = <tconstruct:tough_tool_rod>.withTag({Material: "tough"});
recipes.addShaped(<powersuits:tinkertable>,
	[	[<ore:materialCoraliumPearl>,   <abyssalcraft:transmutationgem>, <ore:materialCoraliumPearl>],
		[ThoughRod,           <thermalfoundation:upgrade:33>,  ThoughRod],
		[ThoughRod,           null,                            ThoughRod] ]);

// Wiring from gold and copper
recipes.remove(<powersuits:powerarmorcomponent:0>);
recipes.addShaped(<powersuits:powerarmorcomponent:0> * 6,
	[	[null,                          <ore:wireCopper>,                null],
		[<ore:wireGold>,                <minecraft:redstone>,            <ore:wireGold>],
		[null,                          <ore:wireCopper>,                null] ]);


// *** Radiation
// radiation lags the server and doesn't help the lore here, so we remove all related items
mods.nuclearcraft.manufactory.removeRecipeWithOutput([<nuclearcraft:part:6>]);
mods.nuclearcraft.infuser.removeRecipeWithOutput([<nuclearcraft:radaway_slow>]);
mods.nuclearcraft.infuser.removeRecipeWithOutput([<nuclearcraft:radaway>]);

mods.jei.JEI.removeAndHide(<nuclearcraft:part:6>);
mods.jei.JEI.removeAndHide(<nuclearcraft:geiger_counter>);
mods.jei.JEI.removeAndHide(<nuclearcraft:radaway>);
mods.jei.JEI.removeAndHide(<nuclearcraft:radaway_slow>);
mods.jei.JEI.removeAndHide(<nuclearcraft:rad_shielding:*>);
mods.jei.JEI.removeAndHide(<nuclearcraft:rad_x>);
mods.jei.JEI.removeAndHide(<nuclearcraft:radaway>);
mods.jei.JEI.removeAndHide(<nuclearcraft:helm_hazmat>);
mods.jei.JEI.removeAndHide(<nuclearcraft:chest_hazmat>);
mods.jei.JEI.removeAndHide(<nuclearcraft:legs_hazmat>);
mods.jei.JEI.removeAndHide(<nuclearcraft:boots_hazmat>);


// *** ThermalExpansion priority over Mekanism
// basic alloy to start Mekanism
recipes.remove(<mekanism:machineblock:8>);
recipes.addShaped("mekanism_MetallurgiInfuser", <mekanism:machineblock:8>,
	[	[<ore:plateInvar>,              <minecraft:furnace>,             <ore:plateInvar>],
		[<ore:dustRedstone>,            <ore:ingotOsmium>,               <ore:dustRedstone>],
		[<ore:plateInvar>,              <minecraft:furnace>,             <ore:plateInvar>] ]);

// advanced alloy to unlock Mekanism mining (Atomic disassembler & Robit)
recipes.remove(<mekanism:atomicdisassembler>);
recipes.addShaped("mekanism_AtomicDisassembler", <mekanism:atomicdisassembler>,
	[	[<mekanism:energytablet>, <mekanism:enrichedalloy>,                                    <mekanismtools:obsidianpaxel>],
		[null,                    <mekanism:atomicalloy>,                                      null],
		[null,                    <tconstruct:tough_tool_rod>.withTag({Material: "enderium"}), null] ]);

// add more diamonds to Robit, discourage spamming it
/*
recipes.remove(<mekanism:robit>);
recipes.addShaped("mekanism_robit", <mekanism:robit>,
	[	[null,                         <ore:gearEnderium>,               null],
		[<mekanism:energytablet>,      <ore:alloyUltimate>,              <mekanism:energytablet>],
		[<ore:ingotRefinedObsidian>,   <mekanism:machineblock:13>,       <ore:ingotRefinedObsidian>] ]);
*/

// Remove personal chest from Mekanism Chemical oxydizer
var mekanism_bin_basic = <mekanism:basicblock:6>.withTag({tier: 0});
recipes.remove(<mekanism:machineblock2:1>);
recipes.addShaped("mekanism_chemical_oxydizer", <mekanism:machineblock2:1>,
	[	[<ore:itemEnrichedAlloy>,      <ore:circuitBasic>,               <ore:itemEnrichedAlloy>],
		[mekanism_bin_basic,           <mekanism:basicblock:9>,          <mekanism:gastank:*>],
		[<ore:itemEnrichedAlloy>,      <ore:circuitBasic>,               <ore:itemEnrichedAlloy>] ]);


// *** Ore duplication
// Applied energistics 2 Quartz grindstone use oredictionary and requires flint
recipes.remove(<appliedenergistics2:grindstone>);
recipes.addShaped("appliedenergistics2_grindstone", <appliedenergistics2:grindstone>,
	[ [<ore:stone>,                    <ore:gearWood>,                   <ore:stone>],
	  [<appliedenergistics2:material>, <minecraft:flint>,                <appliedenergistics2:material>],
	  [<ore:cobblestone>,              <appliedenergistics2:material>,   <ore:cobblestone>] ]);


// *** Slag byproducts
// not applicable

print("progression done");
