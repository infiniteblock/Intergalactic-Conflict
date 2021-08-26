
// *** Open Modular Turrets

// ** IO bus requires more gold
// gets 2 from 4x signalum nuggets and 3x gold ingots
val omt_io_bus = <openmodularturrets:intermediate_regular>;
recipes.remove(omt_io_bus);
recipes.addShaped(omt_io_bus * 2,
	[	[<ore:nuggetSignalum>,       null,                                       <ore:nuggetSignalum>],
		[<ore:ingotGold>,            <ore:ingotGold>,                            <ore:ingotGold>],
		[<ore:nuggetSignalum>,       null,                                       <ore:nuggetSignalum>] ]);


// ** Sensors are generally cheaper
// gets 1 from previous tier, without IO buses, more vibration and more of a diamond shape

// Sensor tier 1 is 4x redstone dust or enriched alloy, 1x daylight sensor
recipes.remove(<openmodularturrets:intermediate_tiered:0>);
recipes.addShaped(<openmodularturrets:intermediate_tiered:0>,
	[	[null,                       <ore:itemEnrichedAlloy>,                    null],
		[<ore:itemEnrichedAlloy>,    <minecraft:daylight_detector>,              <ore:itemEnrichedAlloy>],
		[null,                       <ore:itemEnrichedAlloy>,                    null] ]);

// Sensor tier 2 is 3x electrical steel or constantan ingot, 1x redstone alloy or repeater or basic circuit, 1x sensor tier 1
recipes.remove(<openmodularturrets:intermediate_tiered:1>);
recipes.addShaped(<openmodularturrets:intermediate_tiered:1>,
	[	[null,                       <ore:ingotConstantan>,                      null],
		[<ore:ingotConstantan>,      <openmodularturrets:intermediate_tiered:0>, <ore:ingotConstantan>],
		[null,                       <ore:circuitBasic>,                         null] ]);

// Sensor tier 3 is 3x darksteel or steel, 1x pulsating iron or comparator or advanced circuit, 1x sensor tier 2
recipes.remove(<openmodularturrets:intermediate_tiered:2>);
recipes.addShaped(<openmodularturrets:intermediate_tiered:2>,
	[	[null,                       <ore:ingotSteel>,                           null],
		[<ore:ingotSteel>,           <openmodularturrets:intermediate_tiered:1>, <ore:ingotSteel>],
		[null,                       <ore:circuitAdvanced>,                      null] ]);

// Sensor tier 4 is 3x soularium or iron ingot + soul sand, 1x pulsating crystal or basic/elite circuit, 1x sensor tier 3
recipes.remove(<openmodularturrets:intermediate_tiered:3>);
recipes.addShaped(<openmodularturrets:intermediate_tiered:3>,
	[	[<minecraft:soul_sand>,      <ore:ingotSteel>,                           <minecraft:soul_sand>],
		[<ore:ingotSteel>,           <openmodularturrets:intermediate_tiered:2>, <ore:ingotSteel>],
		[<minecraft:soul_sand>,      <ore:circuitElite>,                         <minecraft:soul_sand>] ]);

// Sensor tier 5 is 2x obsidian or refined obsidian, 1x Fluix crystal, 1x vibrant crystal or advanced/ultimate circuit, 1x sensor tier 4
recipes.remove(<openmodularturrets:intermediate_tiered:4>);
recipes.addShaped(<openmodularturrets:intermediate_tiered:4>,
	[	[null,                       <ore:pearlFluix>,                           null],
		[<ore:ingotRefinedObsidian>, <openmodularturrets:intermediate_tiered:3>, <ore:ingotRefinedObsidian>],
		[null,                       <ore:circuitUltimate>,                      null] ]);


// ** Addons

// Redstone reactor addon from 4x EnderIO electrical steel or Steel plate, 4x Manasteel, 1x Ender eye
recipes.remove(<openmodularturrets:addon_meta:4>);
recipes.addShaped(<openmodularturrets:addon_meta:4>,
	[	[<ore:plateSteel>,           <ore:ingotManasteel>,                       <ore:plateSteel>],
		[<ore:ingotManasteel>,       <minecraft:ender_eye>,                      omt_io_bus],
		[<ore:plateSteel>,           <ore:ingotManasteel>,                       <ore:plateSteel>] ]);

// Damage boost addon from Vulcanite and Sanguinite / Titanium and Elementium
recipes.remove(<openmodularturrets:addon_meta:1>);

recipes.addShaped(<openmodularturrets:addon_meta:1>,
	[	[<minecraft:gold_nugget>,    <ore:ingotElvenElementium>,                  <minecraft:gold_nugget>],
		[<ore:plateTitanium>,        null,                                        <ore:plateTitanium>],
		[<minecraft:gold_nugget>,    <ore:ingotElvenElementium>,                  <minecraft:gold_nugget>] ]);

// Recycler addon from 4x manasteel, 3x Magma cream, 1x ender chest
recipes.remove(<openmodularturrets:addon_meta:3>);
recipes.addShaped(<openmodularturrets:addon_meta:3>,
	[	[<ore:ingotManasteel>,       <minecraft:magma_cream>,                     <ore:ingotManasteel>],
		[<minecraft:magma_cream>,    <minecraft:ender_chest>,                     omt_io_bus],
		[<ore:ingotManasteel>,       <minecraft:magma_cream>,                     <ore:ingotManasteel>] ]);

// Concealer addon from 3x Fluix crystals, 4x Manasteel ingot, 1x Eye of ender or Eye of the ancient
recipes.remove(<openmodularturrets:addon_meta:0>);
recipes.addShaped(<openmodularturrets:addon_meta:0>,
	[	[<ore:ingotManasteel>,       <ore:crystalFluix>,                          <ore:ingotManasteel>],
		[<ore:crystalFluix>,         <botania:foresteye>,                         omt_io_bus],
		[<ore:ingotManasteel>,       <ore:crystalFluix>,                          <ore:ingotManasteel>] ]);

// Solar panel addon from EnderIO/IC2 Solar panel
val solarPanel = <mekanismgenerators:generator:1>; // <AdvancedSolarPanel:BlockAdvSolarPanel>
recipes.remove(<openmodularturrets:addon_meta:6>);
recipes.addShaped(<openmodularturrets:addon_meta:6>,
	[	[<minecraft:glass_pane>,     <minecraft:glass_pane>,                      <minecraft:glass_pane>],
		[<ore:dustRedstone>,         solarPanel,                                  <ore:dustRedstone>],
		[<minecraft:iron_ingot>,     omt_io_bus,                                  <minecraft:iron_ingot>] ]);


// ** Upgrades are more expensive

// Accuraccy/Precision from 4x Manasteel ingot, 7x Gold ingot
val gold2ingots = <ore:gearElectrum>; // <thermalfoundation:tool.shears_gold>;
recipes.remove(<openmodularturrets:upgrade_meta:0>);
recipes.addShaped(<openmodularturrets:upgrade_meta:0>,
	[	[<ore:ingotManasteel>,       gold2ingots,                                <ore:ingotManasteel>],
		[gold2ingots,                <minecraft:gold_ingot>,                     gold2ingots],
		[<ore:ingotManasteel>,       omt_io_bus,                                 <ore:ingotManasteel>] ]);

// Efficiency from 1x gold block, 1x ender pearl
val largePlateElectrum = <tconstruct:large_plate>.withTag({Material: "electrum"}); // <thermalfoundation:tool.bow_gold>
val enderCoilCrystal = <warpdrive:component:6>;
recipes.remove(<openmodularturrets:upgrade_meta:1>);
recipes.addShaped(<openmodularturrets:upgrade_meta:1>,
	[	[<ore:ingotManasteel>,       enderCoilCrystal,                           <ore:ingotManasteel>],
		[largePlateElectrum,         enderCoilCrystal,                           largePlateElectrum],
		[<ore:ingotManasteel>,       omt_io_bus,                                 <ore:ingotManasteel>] ]);

// Fire rate from swiftness II potion, gold and emerald
val potionSwiftnessII = <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"});
recipes.remove(<openmodularturrets:upgrade_meta:2>);
recipes.addShaped(<openmodularturrets:upgrade_meta:2>,
	[	[<ore:ingotManasteel>,       potionSwiftnessII,                          <ore:ingotManasteel>],
		[largePlateElectrum,         potionSwiftnessII,                          largePlateElectrum],
		[<ore:ingotManasteel>,       omt_io_bus,                                 <ore:ingotManasteel>] ]);

// Range from terrasteel, Mana Diamond, Mana Infused String
val diamondTunedCrystal = <warpdrive:component:2>;
val goldPromiseAcceptor = <botania:manaresource:2>;
recipes.remove(<openmodularturrets:upgrade_meta:3>);
recipes.addShaped(<openmodularturrets:upgrade_meta:3>,
	[	[<ore:ingotTerrasteel>,      goldPromiseAcceptor,                        <ore:ingotTerrasteel>],
		[<ore:manaString>,		     diamondTunedCrystal,                        <ore:manaString>],
		[<ore:ingotTerrasteel>,      <minecraft:ender_eye>,                      <ore:ingotTerrasteel>] ]);

// Scatter shot from 2x manasteel tough rod or many ender pearls, 2x titanium plate, 2x strength II potion, 2x Invar gear or Nickel gear
val toughRodManaSteel = <tconstruct:tough_tool_rod>.withTag({Material: "manasteel"});
val potionStrengthII = <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"});
recipes.remove(<openmodularturrets:upgrade_meta:4>);
recipes.addShaped(<openmodularturrets:upgrade_meta:4>,
	[	[toughRodManaSteel,           potionStrengthII,                          toughRodManaSteel],
		[<ore:plateTitanium>,      potionStrengthII,                             <ore:plateTitanium>],
		[<ore:gearInvar>,            omt_io_bus,                                 <ore:gearInvar>] ]);


// *** Ammo
// Blazing clay remains unchanged

// Bullets from 2x lead ingot, 1x Gunpowder, 1x redstone, gives 32
recipes.remove(<openmodularturrets:ammo_meta:1>);
recipes.addShaped(<openmodularturrets:ammo_meta:1> * 32,
	[	[null,                       <ore:ingotLead>,                             null],
		[<minecraft:gunpowder>,      <minecraft:redstone>,                        null],
		[null,                       <ore:ingotLead>,                             null] ]);

// Ferro-Magnetic slug from 1x lead ingot, 2x Steel nugget, 3x redstone, 1x Flint, gives 16
recipes.remove(<openmodularturrets:ammo_meta:2>);
recipes.addShaped(<openmodularturrets:ammo_meta:2> * 16,
	[	[null,                       <minecraft:redstone>,                        null],
		[<minecraft:redstone>,       <minecraft:flint>,                           <minecraft:redstone>],
		[<ore:nuggetSteel>,          <ore:ingotLead>,                             <ore:nuggetSteel>] ]);

// Grenade from 1x tiny TNT, 3x Iron plate, 1x Redstone chipset or Basic circuit
recipes.remove(<openmodularturrets:ammo_meta:3>);
recipes.addShaped(<openmodularturrets:ammo_meta:3> * 24,
	[	[null,                       <ore:circuitBasic>,                          null],
		[<ore:plateIron>,            <appliedenergistics2:tiny_tnt>,              <ore:plateIron>],
		[null,                       <ore:plateIron>,                             null] ]);

// Rocket from 5x Steel plate, 1x Gunpowder, 1x Redstone chipset or Basic circuit
recipes.remove(<openmodularturrets:ammo_meta:4>);
recipes.addShaped(<openmodularturrets:ammo_meta:4> * 16,
	[	[null,                       <ore:plateSteel>,                            null],
		[<ore:plateSteel>,           <minecraft:gunpowder>,                       <ore:plateSteel>],
		[<ore:plateSteel>,           <ore:circuitBasic>,                          <ore:plateSteel>] ]);