// shaping raw materials for storage and parts: nugget, ingot, block, plate, wire, rod/stick, gear, dust


// *** Gears crafted with extra resources, encouraging techs
// only use the ThermalFoundation Wood gear
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:40>);
<ore:gearWood>.remove(<appliedenergistics2:material:40>);

// use a single recipe for Wood gear
recipes.remove(<thermalfoundation:material:22>);
recipes.addShaped("thermalfoundation_gearWood", <thermalfoundation:material:22>,
	[ [null,            <ore:stickWood>, null],
	  [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>],
	  [null,            <ore:stickWood>, null] ]);

// stone gear from wood gear
recipes.remove(<thermalfoundation:material:23>);
recipes.addShaped("thermalfoundation_gearStone", <thermalfoundation:material:23>,
	[ [null,        <ore:stone>,    null],
	  [<ore:stone>, <ore:gearWood>, <ore:stone>],
	  [null,        <ore:stone>,    null] ]);
// iron gear from stone gear
recipes.remove(<thermalfoundation:material:24>);
recipes.addShaped("thermalfoundation_gearIron", <thermalfoundation:material:24>,
	[ [null,            <ore:ingotIron>, null],
	  [<ore:ingotIron>, <ore:gearStone>, <ore:ingotIron>],
	  [null,            <ore:ingotIron>, null] ]);
// gold gear with iron axis
recipes.remove(<thermalfoundation:material:25>);
recipes.addShaped("thermalfoundation_gearGold", <thermalfoundation:material:25>,
	[ [null,            <ore:ingotGold>, null],
	  [<ore:ingotGold>, <ore:ingotIron>, <ore:ingotGold>],
	  [null,            <ore:ingotGold>, null] ]);
// diamond gear with steel axis
recipes.remove(<thermalfoundation:material:26>);
recipes.addShaped("thermalfoundation_gearDiamond", <thermalfoundation:material:26>,
	[ [null,             <ore:gemDiamond>, null],
	  [<ore:gemDiamond>, <ore:ingotSteel>, <ore:gemDiamond>],
	  [null,             <ore:gemDiamond>, null] ]);
// emerald gear with steel axis
recipes.remove(<thermalfoundation:material:27>);
recipes.addShaped("thermalfoundation_gearEmerald", <thermalfoundation:material:27>,
	[ [null,             <ore:gemEmerald>, null],
	  [<ore:gemEmerald>, <ore:ingotSteel>, <ore:gemEmerald>],
	  [null,             <ore:gemEmerald>, null] ]);

// aluminium gear with stone gear axis
recipes.remove(<thermalfoundation:material:260>);
recipes.addShaped("thermalfoundation_gearAluminium", <thermalfoundation:material:260>,
	[ [null,                 <ore:ingotAluminium>, null],
	  [<ore:ingotAluminium>, <ore:gearStone>,      <ore:ingotAluminium>],
	  [null,                 <ore:ingotAluminium>, null] ]);
// copper gear with iron axis
recipes.remove(<thermalfoundation:material:256>);
recipes.addShaped("thermalfoundation_gearCopper", <thermalfoundation:material:256>,
	[ [null,              <ore:ingotCopper>, null],
	  [<ore:ingotCopper>, <ore:ingotIron>,   <ore:ingotCopper>],
	  [null,              <ore:ingotCopper>, null] ]);
// lead gear with iron axis
recipes.remove(<thermalfoundation:material:259>);
recipes.addShaped("thermalfoundation_gearLead", <thermalfoundation:material:259>,
	[ [null,            <ore:ingotLead>, null],
	  [<ore:ingotLead>, <ore:ingotIron>, <ore:ingotLead>],
	  [null,            <ore:ingotLead>, null] ]);
// nickel gear with iron axis
recipes.remove(<thermalfoundation:material:261>);
recipes.addShaped("thermalfoundation_gearNickel", <thermalfoundation:material:261>,
	[ [null,              <ore:ingotNickel>, null],
	  [<ore:ingotNickel>, <ore:ingotIron>,   <ore:ingotNickel>],
	  [null,              <ore:ingotNickel>, null] ]);
// silver gear with iron axis
recipes.remove(<thermalfoundation:material:258>);
recipes.addShaped("thermalfoundation_gearSilver", <thermalfoundation:material:258>,
	[ [null,              <ore:ingotSilver>, null],
	  [<ore:ingotSilver>, <ore:ingotIron>,   <ore:ingotSilver>],
	  [null,              <ore:ingotSilver>, null] ]);
// tin gear with iron axis
recipes.remove(<thermalfoundation:material:257>);
recipes.addShaped("thermalfoundation_gearTin", <thermalfoundation:material:257>,
	[ [null,           <ore:ingotTin>,  null],
	  [<ore:ingotTin>, <ore:ingotIron>, <ore:ingotTin>],
	  [null,           <ore:ingotTin>,  null] ]);

// steel gear with iron axis
recipes.remove(<thermalfoundation:material:288>);
recipes.addShaped("thermalfoundation_gearSteel", <thermalfoundation:material:288>,
	[ [null,             <ore:ingotSteel>, null],
	  [<ore:ingotSteel>, <ore:ingotIron>,  <ore:ingotSteel>],
	  [null,             <ore:ingotSteel>, null] ]);
// Mekanism Boiler casing overlapping recipe with Steel gear
recipes.removeByRecipeName("mekanism:basicblock2_7");
recipes.addShaped("mekanism_boiler_casing", <mekanism:basicblock2:7> * 4,
	[ [null,             <ore:plateSteel>, null],
	  [<ore:ingotSteel>, <ore:ingotIron>, <ore:plateSteel>],
	  [null,             <ore:plateSteel>, null] ]);

// electrum gear with stone gear axis
recipes.remove(<thermalfoundation:material:289>);
recipes.addShaped("thermalfoundation_gearElectrum", <thermalfoundation:material:289>,
	[ [null,                <ore:ingotElectrum>, null],
	  [<ore:ingotElectrum>, <ore:gearStone>,     <ore:ingotElectrum>],
	  [null,                <ore:ingotElectrum>, null] ]);
// invar gear with stone gear axis
recipes.remove(<thermalfoundation:material:290>);
recipes.addShaped("thermalfoundation_gearInvar", <thermalfoundation:material:290>,
	[ [null,             <ore:ingotInvar>, null],
	  [<ore:ingotInvar>, <ore:gearStone>,  <ore:ingotInvar>],
	  [null,             <ore:ingotInvar>, null] ]);
// bronze gear with stone gear axis
recipes.remove(<thermalfoundation:material:291>);
recipes.addShaped("thermalfoundation_gearBronze", <thermalfoundation:material:291>,
	[ [null,              <ore:ingotBronze>, null],
	  [<ore:ingotBronze>, <ore:gearStone>,   <ore:ingotBronze>],
	  [null,              <ore:ingotBronze>, null] ]);
// constantan gear with iron axis
recipes.remove(<thermalfoundation:material:292>);
recipes.addShaped("thermalfoundation_gearConstantan", <thermalfoundation:material:292>,
	[ [null,                  <ore:ingotConstantan>, null],
	  [<ore:ingotConstantan>, <ore:ingotIron>,       <ore:ingotConstantan>],
	  [null,                  <ore:ingotConstantan>, null] ]);


// platinum, iridium & mithril gears can't be crafted without machines
recipes.remove(<thermalfoundation:material:262>);
recipes.remove(<thermalfoundation:material:263>);
recipes.remove(<thermalfoundation:material:264>);
// fluxed electrum, signalum, lumium, enderium gears can't be crafted without machines
recipes.remove(<thermalfoundation:material:293>);
recipes.remove(<thermalfoundation:material:294>);
recipes.remove(<thermalfoundation:material:295>);


// *** Nugget, Ingot, Block
// we favor ThermalFoundation recipes

// Chisel bronze, copper, platinum, silver, steel & tin block to ingot
recipes.removeByRecipeName("chisel:uncraft_blockbronze");
recipes.removeByRecipeName("chisel:uncraft_blockcopper");
recipes.removeByRecipeName("chisel:uncraft_blockplatinum");
recipes.removeByRecipeName("chisel:uncraft_blocksilver");
recipes.removeByRecipeName("chisel:uncraft_blocksteel");
recipes.removeByRecipeName("chisel:uncraft_blocktin");

// Mekanism bronze, copper, steel & tin ingot to/from nuggets
recipes.removeByRecipeName("mekanism:nugget_2");
recipes.removeByRecipeName("mekanism:nugget_4");
recipes.removeByRecipeName("mekanism:nugget_5");
recipes.removeByRecipeName("mekanism:nugget_6");
recipes.removeByRecipeName("mekanism:ingot_2_alt");
recipes.removeByRecipeName("mekanism:ingot_4_alt");
recipes.removeByRecipeName("mekanism:ingot_5_alt");
recipes.removeByRecipeName("mekanism:ingot_6_alt");

// Mekanism bronze, copper, steel & tin block to/from ingots
recipes.removeByRecipeName("mekanism:basicblock_1");
recipes.removeByRecipeName("mekanism:basicblock_3");
recipes.removeByRecipeName("mekanism:basicblock_5");
recipes.removeByRecipeName("mekanism:basicblock_12");
recipes.removeByRecipeName("mekanism:basicblock_13");
recipes.removeByRecipeName("mekanism:ingot_2");
recipes.removeByRecipeName("mekanism:coal_1");
recipes.removeByRecipeName("mekanism:ingot_4");
recipes.removeByRecipeName("mekanism:ingot_5");
recipes.removeByRecipeName("mekanism:ingot_6");

// TechGuns copper, lead & steel are redundant with ThermalFoundation (obsidian steel has no nugget, titanium is covered by JAOPCA)
recipes.removeByRegex("techguns:itemshared_.*_nugget.*");
recipes.removeByRegex("techguns:itemshared_.*_ingot.*");


// *** Plates
// craft with hammer cost 2 ingots per plate, machines reduce to 1 ingot per plate (IC2 style)
// (there's no hammer, all plates are made from machines)


// *** Sticks and rods
// Tinker's Construct smeltery 1 ingot into 1 tool rod (not rod) - no change
// craft 3 ingots in 1 rod - change to encourage machine usage

// crafting is 1 for 1, tech to double, except for stone which has no loss in crafting
recipes.remove(<ore:rodStone>);
recipes.addShaped("tconstruct_stone_stick", <tconstruct:stone_stick> * 4,
	[ [<ore:cobblestone>],
	  [<ore:cobblestone>] ]);

// *** Wires
// Copper wire is needed to make first tiers of machines, we use TechGuns 
// TechGuns is 5 nuggets into 1 wire - no change

// TechGuns gold wire is left unchanged?

