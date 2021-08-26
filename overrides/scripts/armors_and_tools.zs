// armors and tools


// *** Bronze armors and tools
// Thermal foundation to the right
recipes.removeShaped(<thermalfoundation:armor.boots_bronze>);
recipes.removeShaped(<thermalfoundation:armor.legs_bronze>);
recipes.removeShaped(<thermalfoundation:armor.plate_bronze>);
recipes.removeShaped(<thermalfoundation:armor.helmet_bronze>);
recipes.addShaped("thermalfoundation_armor.boots_bronze", <thermalfoundation:armor.boots_bronze>,
	[	[null,              	 <ore:ingotBronze>,      <ore:ingotBronze>],
		[null,              	 null,                   null],
		[null,              	 <ore:ingotBronze>,      <ore:ingotBronze>] ]);
recipes.addShaped("thermalfoundation_armor.legs_bronze", <thermalfoundation:armor.legs_bronze>,
	[	[<ore:ingotBronze>,      <ore:ingotBronze>,      <ore:ingotBronze>],
		[null,                   null,                   <ore:ingotBronze>],
		[<ore:ingotBronze>,      <ore:ingotBronze>,      <ore:ingotBronze>] ]);
recipes.addShaped("thermalfoundation_armor.plate_bronze", <thermalfoundation:armor.plate_bronze>,
	[	[<ore:ingotBronze>,      <ore:ingotBronze>,      <ore:ingotBronze>],
		[<ore:ingotBronze>,      <ore:ingotBronze>,      null],
		[<ore:ingotBronze>,      <ore:ingotBronze>,      <ore:ingotBronze>] ]);
recipes.addShaped("thermalfoundation_armor.helmet_bronze", <thermalfoundation:armor.helmet_bronze>,
	[	[<ore:ingotBronze>,      <ore:ingotBronze>],
		[null,                   <ore:ingotBronze>],
		[<ore:ingotBronze>,      <ore:ingotBronze>] ]);

recipes.removeShaped(<thermalfoundation:tool.axe_bronze>);
recipes.removeShaped(<thermalfoundation:tool.hoe_bronze>);
recipes.removeShaped(<thermalfoundation:tool.pickaxe_bronze>);
recipes.removeShaped(<thermalfoundation:tool.shovel_bronze>);
recipes.removeShaped(<thermalfoundation:tool.sword_bronze>);
recipes.addShaped("thermalfoundation_tool.axe_bronze", <thermalfoundation:tool.axe_bronze>,
	[	[null,                   <ore:ingotBronze>,      <ore:ingotBronze>],
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotBronze>] ]);
recipes.addShaped("thermalfoundation_tool.hoe_bronze", <thermalfoundation:tool.hoe_bronze>,
	[	[null,                   null,                   <ore:ingotBronze>],
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotBronze>] ]);
recipes.addShaped("thermalfoundation_tool.pickaxe_bronze", <thermalfoundation:tool.pickaxe_bronze>,
	[	[null, null, <ore:ingotBronze>],
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotBronze>],
		[null, null, <ore:ingotBronze>] ]);
recipes.addShaped("thermalfoundation_tool.shovel_bronze", <thermalfoundation:tool.shovel_bronze>,
	[	[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotBronze>] ]);
recipes.addShaped("thermalfoundation_tool.sword_bronze", <thermalfoundation:tool.sword_bronze>,
	[	[<minecraft:iron_ingot>, <ore:ingotBronze>,      <ore:ingotBronze>] ]);


// Bronze paxel using any mod
<ore:axeBronze>.add(<mekanismtools:bronzeaxe>);
<ore:pickaxeBronze>.add(<mekanismtools:bronzepickaxe>);
<ore:shovelBronze>.add(<mekanismtools:bronzeshovel>);

<ore:axeBronze>.add(<thermalfoundation:tool.axe_bronze>);
<ore:pickaxeBronze>.add(<thermalfoundation:tool.pickaxe_bronze>);
<ore:shovelBronze>.add(<thermalfoundation:tool.shovel_bronze>);

recipes.remove(<mekanismtools:bronzepaxel>);
recipes.addShaped("mekanism_BronzePaxel", <mekanismtools:bronzepaxel>,
	[	[<ore:axeBronze>,        <ore:pickaxeBronze>,    <ore:shovelBronze>],
		[null,                   <ore:stickWood>,        null],
		[null,                   <ore:stickWood>,        null] ]);


// *** Chainmail armor
// recurrent bypasses, just remove
recipes.remove(<minecraft:chainmail_helmet>);
recipes.remove(<minecraft:chainmail_chestplate>);
recipes.remove(<minecraft:chainmail_leggings>);
recipes.remove(<minecraft:chainmail_boots>);


// *** Copper armors and tools
// Thermal foundation to the right
recipes.removeShaped(<thermalfoundation:armor.boots_copper>);
recipes.removeShaped(<thermalfoundation:armor.legs_copper>);
recipes.removeShaped(<thermalfoundation:armor.plate_copper>);
recipes.removeShaped(<thermalfoundation:armor.helmet_copper>);
recipes.addShaped("thermalfoundation_armor.boots_copper", <thermalfoundation:armor.boots_copper>,
	[	[null,                   <ore:ingotCopper>,      <ore:ingotCopper>],
		[null,                   null,                   null],
		[null,                   <ore:ingotCopper>,      <ore:ingotCopper>] ]);
recipes.addShaped("thermalfoundation_armor.legs_copper", <thermalfoundation:armor.legs_copper>,
	[	[<ore:ingotCopper>,      <ore:ingotCopper>,      <ore:ingotCopper>],
		[null,                   null,                   <ore:ingotCopper>],
		[<ore:ingotCopper>,      <ore:ingotCopper>,      <ore:ingotCopper>] ]);
recipes.addShaped("thermalfoundation_armor.plate_copper", <thermalfoundation:armor.plate_copper>,
	[	[<ore:ingotCopper>,      <ore:ingotCopper>,      <ore:ingotCopper>],
		[<ore:ingotCopper>,      <ore:ingotCopper>,      null],
		[<ore:ingotCopper>,      <ore:ingotCopper>,      <ore:ingotCopper>] ]);
recipes.addShaped("thermalfoundation_armor.helmet_copper", <thermalfoundation:armor.helmet_copper>,
	[	[<ore:ingotCopper>,      <ore:ingotCopper>],
		[null,                   <ore:ingotCopper>],
		[<ore:ingotCopper>,      <ore:ingotCopper>] ]);

recipes.removeShaped(<thermalfoundation:tool.axe_copper>);
recipes.removeShaped(<thermalfoundation:tool.hoe_copper>);
recipes.removeShaped(<thermalfoundation:tool.pickaxe_copper>);
recipes.removeShaped(<thermalfoundation:tool.shovel_copper>);
recipes.removeShaped(<thermalfoundation:tool.sword_copper>);
recipes.addShaped("thermalfoundation_tool.axe_copper", <thermalfoundation:tool.axe_copper>,
	[	[null,                   <ore:ingotCopper>,      <ore:ingotCopper>],
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotCopper>] ]);
recipes.addShaped("thermalfoundation_tool.hoe_copper", <thermalfoundation:tool.hoe_copper>,
	[	[null,                   null,                   <ore:ingotCopper>],
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotCopper>] ]);
recipes.addShaped("thermalfoundation_tool.pickaxe_copper", <thermalfoundation:tool.pickaxe_copper>,
	[	[null,                   null,                   <ore:ingotCopper>],
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotCopper>],
		[null,                   null,                   <ore:ingotCopper>] ]);
recipes.addShaped("thermalfoundation_tool.shovel_copper", <thermalfoundation:tool.shovel_copper>,
	[	[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotCopper>] ]);
recipes.addShaped("thermalfoundation_tool.sword_copper", <thermalfoundation:tool.sword_copper>,
	[	[<minecraft:iron_ingot>, <ore:ingotCopper>,      <ore:ingotCopper>] ]);


// *** Electrum armors and tools
// Thermal foundation to the right
recipes.removeShaped(<thermalfoundation:armor.boots_electrum>);
recipes.removeShaped(<thermalfoundation:armor.legs_electrum>);
recipes.removeShaped(<thermalfoundation:armor.plate_electrum>);
recipes.removeShaped(<thermalfoundation:armor.helmet_electrum>);
recipes.addShaped("thermalfoundation_armor.boots_electrum", <thermalfoundation:armor.boots_electrum>,
	[	[null,                   <ore:ingotElectrum>,    <ore:ingotElectrum>],
		[null,                   null,                   null],
		[null,                   <ore:ingotElectrum>,    <ore:ingotElectrum>] ]);
recipes.addShaped("thermalfoundation_armor.legs_electrum", <thermalfoundation:armor.legs_electrum>,
	[	[<ore:ingotElectrum>,    <ore:ingotElectrum>,    <ore:ingotElectrum>],
		[null,                   null,                   <ore:ingotElectrum>],
		[<ore:ingotElectrum>,    <ore:ingotElectrum>,    <ore:ingotElectrum>] ]);
recipes.addShaped("thermalfoundation_armor.plate_electrum", <thermalfoundation:armor.plate_electrum>,
	[	[<ore:ingotElectrum>,    <ore:ingotElectrum>,    <ore:ingotElectrum>],
		[<ore:ingotElectrum>,    <ore:ingotElectrum>,    null],
		[<ore:ingotElectrum>,    <ore:ingotElectrum>,    <ore:ingotElectrum>] ]);
recipes.addShaped("thermalfoundation_armor.helmet_electrum", <thermalfoundation:armor.helmet_electrum>,
	[	[<ore:ingotElectrum>,    <ore:ingotElectrum>],
		[null,                   <ore:ingotElectrum>],
		[<ore:ingotElectrum>,    <ore:ingotElectrum>] ]);

recipes.removeShaped(<thermalfoundation:tool.axe_electrum>);
recipes.removeShaped(<thermalfoundation:tool.hoe_electrum>);
recipes.removeShaped(<thermalfoundation:tool.pickaxe_electrum>);
recipes.removeShaped(<thermalfoundation:tool.shovel_electrum>);
recipes.removeShaped(<thermalfoundation:tool.sword_electrum>);
recipes.addShaped("thermalfoundation_tool.axe_electrum", <thermalfoundation:tool.axe_electrum>,
	[	[null,                   <ore:ingotElectrum>,    <ore:ingotElectrum>],
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotElectrum>] ]);
recipes.addShaped("thermalfoundation_tool.hoe_electrum", <thermalfoundation:tool.hoe_electrum>,
	[	[null,                   null,                   <ore:ingotElectrum>],
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotElectrum>] ]);
recipes.addShaped("thermalfoundation_tool.pickaxe_electrum", <thermalfoundation:tool.pickaxe_electrum>,
	[	[null,                   null,                   <ore:ingotElectrum>],
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotElectrum>],
		[null,                   null,                   <ore:ingotElectrum>] ]);
recipes.addShaped("thermalfoundation_tool.shovel_electrum", <thermalfoundation:tool.shovel_electrum>,
	[	[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotElectrum>] ]);
recipes.addShaped("thermalfoundation_tool.sword_electrum", <thermalfoundation:tool.sword_electrum>,
	[	[<minecraft:iron_ingot>, <ore:ingotElectrum>,    <ore:ingotElectrum>] ]);


// *** Platinum armors and tools
// Thermal foundation to the right
recipes.removeShaped(<thermalfoundation:armor.boots_platinum>);
recipes.removeShaped(<thermalfoundation:armor.legs_platinum>);
recipes.removeShaped(<thermalfoundation:armor.plate_platinum>);
recipes.removeShaped(<thermalfoundation:armor.helmet_platinum>);
recipes.addShaped("thermalfoundation_armor.boots_platinum", <thermalfoundation:armor.boots_platinum>,
	[	[null,                   <ore:ingotPlatinum>,    <ore:ingotPlatinum>],
		[null,                   null,                   null],
		[null,                   <ore:ingotPlatinum>,    <ore:ingotPlatinum>] ]);
recipes.addShaped("thermalfoundation_armor.legs_platinum", <thermalfoundation:armor.legs_platinum>,
	[	[<ore:ingotPlatinum>,    <ore:ingotPlatinum>,    <ore:ingotPlatinum>],
		[null,                   null,                   <ore:ingotPlatinum>],
		[<ore:ingotPlatinum>,    <ore:ingotPlatinum>,    <ore:ingotPlatinum>] ]);
recipes.addShaped("thermalfoundation_armor.plate_platinum", <thermalfoundation:armor.plate_platinum>,
	[	[<ore:ingotPlatinum>,    <ore:ingotPlatinum>,    <ore:ingotPlatinum>],
		[<ore:ingotPlatinum>,    <ore:ingotPlatinum>,    null],
		[<ore:ingotPlatinum>,    <ore:ingotPlatinum>,    <ore:ingotPlatinum>] ]);
recipes.addShaped("thermalfoundation_armor.helmet_platinum", <thermalfoundation:armor.helmet_platinum>,
	[	[<ore:ingotPlatinum>,    <ore:ingotPlatinum>],
		[null,                   <ore:ingotPlatinum>],
		[<ore:ingotPlatinum>,    <ore:ingotPlatinum>] ]);

recipes.removeShaped(<thermalfoundation:tool.axe_platinum>);
recipes.removeShaped(<thermalfoundation:tool.hoe_platinum>);
recipes.removeShaped(<thermalfoundation:tool.pickaxe_platinum>);
recipes.removeShaped(<thermalfoundation:tool.shovel_platinum>);
recipes.removeShaped(<thermalfoundation:tool.sword_platinum>);
recipes.addShaped("thermalfoundation_tool.axe_platinum", <thermalfoundation:tool.axe_platinum>,
	[	[null,                   <ore:ingotPlatinum>,    <ore:ingotPlatinum>],
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotPlatinum>] ]);
recipes.addShaped("thermalfoundation_tool.hoe_platinum", <thermalfoundation:tool.hoe_platinum>,
	[	[null,                   null,                   <ore:ingotPlatinum>],
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotPlatinum>] ]);
recipes.addShaped("thermalfoundation_tool.pickaxe_platinum", <thermalfoundation:tool.pickaxe_platinum>,
	[	[null,                   null,                   <ore:ingotPlatinum>],
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotPlatinum>],
		[null,                   null,                   <ore:ingotPlatinum>] ]);
recipes.addShaped("thermalfoundation_tool.shovel_platinum", <thermalfoundation:tool.shovel_platinum>,
	[	[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotPlatinum>] ]);
recipes.addShaped("thermalfoundation_tool.sword_platinum", <thermalfoundation:tool.sword_platinum>,
	[	[<minecraft:iron_ingot>, <ore:ingotPlatinum>,    <ore:ingotPlatinum>] ]);


// *** Silver armors and tools
// Thermal foundation to the right
recipes.removeShaped(<thermalfoundation:armor.boots_silver>);
recipes.removeShaped(<thermalfoundation:armor.legs_silver>);
recipes.removeShaped(<thermalfoundation:armor.plate_silver>);
recipes.removeShaped(<thermalfoundation:armor.helmet_silver>);
recipes.addShaped("thermalfoundation_armor.boots_silver", <thermalfoundation:armor.boots_silver>,
	[	[null,                   <ore:ingotSilver>,      <ore:ingotSilver>],
		[null,                   null,                   null],
		[null,                   <ore:ingotSilver>,      <ore:ingotSilver>] ]);
recipes.addShaped("thermalfoundation_armor.legs_silver", <thermalfoundation:armor.legs_silver>,
	[	[<ore:ingotSilver>,      <ore:ingotSilver>,      <ore:ingotSilver>],
		[null,                   null,                   <ore:ingotSilver>],
		[<ore:ingotSilver>,      <ore:ingotSilver>,      <ore:ingotSilver>] ]);
recipes.addShaped("thermalfoundation_armor.plate_silver", <thermalfoundation:armor.plate_silver>,
	[	[<ore:ingotSilver>,      <ore:ingotSilver>,      <ore:ingotSilver>],
		[<ore:ingotSilver>,      <ore:ingotSilver>,      null],
		[<ore:ingotSilver>,      <ore:ingotSilver>,      <ore:ingotSilver>] ]);
recipes.addShaped("thermalfoundation_armor.helmet_silver", <thermalfoundation:armor.helmet_silver>,
	[	[<ore:ingotSilver>,      <ore:ingotSilver>],
		[null,                   <ore:ingotSilver>],
		[<ore:ingotSilver>,      <ore:ingotSilver>] ]);

recipes.removeShaped(<thermalfoundation:tool.axe_silver>);
recipes.removeShaped(<thermalfoundation:tool.hoe_silver>);
recipes.removeShaped(<thermalfoundation:tool.pickaxe_silver>);
recipes.removeShaped(<thermalfoundation:tool.shovel_silver>);
recipes.removeShaped(<thermalfoundation:tool.sword_silver>);
recipes.addShaped("thermalfoundation_tool.axe_silver", <thermalfoundation:tool.axe_silver>,
	[	[null,                   <ore:ingotSilver>,      <ore:ingotSilver>],
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotSilver>] ]);
recipes.addShaped("thermalfoundation_tool.hoe_silver", <thermalfoundation:tool.hoe_silver>,
	[	[null,                   null,                   <ore:ingotSilver>],
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotSilver>] ]);
recipes.addShaped("thermalfoundation_tool.pickaxe_silver", <thermalfoundation:tool.pickaxe_silver>,
	[	[null,                   null,                   <ore:ingotSilver>],
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotSilver>],
		[null,                   null,                   <ore:ingotSilver>] ]);
recipes.addShaped("thermalfoundation_tool.shovel_silver", <thermalfoundation:tool.shovel_silver>,
	[	[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotSilver>] ]);
recipes.addShaped("thermalfoundation_tool.sword_silver", <thermalfoundation:tool.sword_silver>,
	[	[<minecraft:iron_ingot>, <ore:ingotSilver>,      <ore:ingotSilver>] ]);


// *** Steel armors and tools
// Thermal foundation to the right
recipes.removeShaped(<thermalfoundation:armor.boots_steel>);
recipes.removeShaped(<thermalfoundation:armor.legs_steel>);
recipes.removeShaped(<thermalfoundation:armor.plate_steel>);
recipes.removeShaped(<thermalfoundation:armor.helmet_steel>);
recipes.addShaped("thermalfoundation_armor.boots_steel", <thermalfoundation:armor.boots_steel>,
	[	[null,                   <ore:ingotSteel>,       <ore:ingotSteel>],
		[null,                   null,                   null],
		[null,                   <ore:ingotSteel>,       <ore:ingotSteel>] ]);
recipes.addShaped("thermalfoundation_armor.legs_steel", <thermalfoundation:armor.legs_steel>,
	[	[<ore:ingotSteel>,       <ore:ingotSteel>,       <ore:ingotSteel>],
		[null,                   null,                   <ore:ingotSteel>],
		[<ore:ingotSteel>,       <ore:ingotSteel>,       <ore:ingotSteel>] ]);
recipes.addShaped("thermalfoundation_armor.plate_steel", <thermalfoundation:armor.plate_steel>,
	[	[<ore:ingotSteel>,       <ore:ingotSteel>,       <ore:ingotSteel>],
		[<ore:ingotSteel>,       <ore:ingotSteel>,       null],
		[<ore:ingotSteel>,       <ore:ingotSteel>,       <ore:ingotSteel>] ]);
recipes.addShaped("thermalfoundation_armor.helmet_steel", <thermalfoundation:armor.helmet_steel>,
	[	[<ore:ingotSteel>,       <ore:ingotSteel>],
		[null,                   <ore:ingotSteel>],
		[<ore:ingotSteel>,       <ore:ingotSteel>] ]);

recipes.removeShaped(<thermalfoundation:tool.axe_steel>);
recipes.removeShaped(<thermalfoundation:tool.hoe_steel>);
recipes.removeShaped(<thermalfoundation:tool.pickaxe_steel>);
recipes.removeShaped(<thermalfoundation:tool.shovel_steel>);
recipes.removeShaped(<thermalfoundation:tool.sword_steel>);
recipes.addShaped("thermalfoundation_tool.axe_steel", <thermalfoundation:tool.axe_steel>,
	[	[null,                   <ore:ingotSteel>,       <ore:ingotSteel>],
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotSteel>] ]);
recipes.addShaped("thermalfoundation_tool.hoe_steel", <thermalfoundation:tool.hoe_steel>,
	[	[null,                   null,                   <ore:ingotSteel>],
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotSteel>] ]);
recipes.addShaped("thermalfoundation_tool.pickaxe_steel", <thermalfoundation:tool.pickaxe_steel>,
	[	[null,                   null,                   <ore:ingotSteel>],
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotSteel>],
		[null,                   null,                   <ore:ingotSteel>] ]);
recipes.addShaped("thermalfoundation_tool.shovel_steel", <thermalfoundation:tool.shovel_steel>,
	[	[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotSteel>] ]);
recipes.addShaped("thermalfoundation_tool.sword_steel", <thermalfoundation:tool.sword_steel>,
	[	[<minecraft:iron_ingot>, <ore:ingotSteel>,       <ore:ingotSteel>] ]);

// Steel paxel using any mod
<ore:axeSteel>.add(<mekanismtools:steelaxe>);
<ore:pickaxeSteel>.add(<mekanismtools:steelpickaxe>);
<ore:shovelSteel>.add(<mekanismtools:steelshovel>);

<ore:axeSteel>.add(<thermalfoundation:tool.axe_steel>);
<ore:pickaxeSteel>.add(<thermalfoundation:tool.pickaxe_steel>);
<ore:shovelSteel>.add(<thermalfoundation:tool.shovel_steel>);

recipes.remove(<mekanismtools:steelpaxel>);
recipes.addShaped("mekanism_steelpaxel", <mekanismtools:steelpaxel>,
	[	[<ore:axeSteel>, <ore:pickaxeSteel>, <ore:shovelSteel>],
		[null,           <ore:stickWood>,    null],
		[null,           <ore:stickWood>,    null] ]);


// *** Mekanism Jetpack
recipes.remove(<mekanism:armoredjetpack>);
recipes.addShaped("<mekanism_armoredjetpack>", <mekanism:armoredjetpack>, 
	[	[<ore:componentPlatingIron>,   null,                              <ore:componentPlatingIron>],
		[<techguns:itemshared:67>,     <mekanism:jetpack>.marked("mark"), <techguns:itemshared:67>],
		[<ore:itemCompressedObsidian>, <techguns:itemshared:67>,          <ore:itemCompressedObsidian>] ],
	function(out, ins, cInfo) {
		return out.withTag(ins.mark.tag);
	}, null
);


// *** Mekanism Obsidian Armour
recipes.remove(<mekanismtools:obsidianhelmet>);
recipes.remove(<mekanismtools:obsidianchestplate>);
recipes.remove(<mekanismtools:obsidianleggings>);
recipes.remove(<mekanismtools:obsidianboots>);

recipes.addShaped("mekanismtools_obsidianhelmet", <mekanismtools:obsidianhelmet>,
	[	[<ore:ingotRefinedObsidian>,   <ore:ingotRefinedObsidian>,               <ore:ingotRefinedObsidian>],
		[<ore:ingotRefinedObsidian>,   <warpdrive:warp_armor.superior.helmet>,   <ore:ingotRefinedObsidian>],
		[null,                         null,                                     null] ]);

recipes.addShaped("mekanismtools_obsidianchestplate", <mekanismtools:obsidianchestplate>,
	[	[<ore:ingotRefinedObsidian>, <warpdrive:warp_armor.superior.chestplate>, <ore:ingotRefinedObsidian>],
		[<ore:ingotRefinedObsidian>, <ore:ingotRefinedObsidian>,                 <ore:ingotRefinedObsidian>],
		[<ore:ingotRefinedObsidian>, <ore:ingotRefinedObsidian>,                 <ore:ingotRefinedObsidian>] ]);

recipes.addShaped("mekanismtools_obsidianleggings", <mekanismtools:obsidianleggings>,
	[	[<ore:ingotRefinedObsidian>, <ore:ingotRefinedObsidian>,                 <ore:ingotRefinedObsidian>],
		[<ore:ingotRefinedObsidian>, <warpdrive:warp_armor.superior.leggings>,   <ore:ingotRefinedObsidian>],
		[<ore:ingotRefinedObsidian>, null,                                       <ore:ingotRefinedObsidian>] ]);

recipes.addShaped("mekanismtools_obsidianboots", <mekanismtools:obsidianboots>,
	[	[null,                       null,                                       null],
		[<ore:ingotRefinedObsidian>, null,                                       <ore:ingotRefinedObsidian>],
		[<ore:ingotRefinedObsidian>, <warpdrive:warp_armor.superior.boots>,      <ore:ingotRefinedObsidian>] ]);


// *** Modular Power Suits
// use WarpDrive helmet as base ingredient for breathing
recipes.remove(<powersuits:powerarmor_head>);
recipes.addShaped("powersuits_powerarmor_head", <powersuits:powerarmor_head>,
	[	[<ore:ingotElectrum>,          <ore:ingotElectrum>,                      <ore:ingotElectrum>],
		[<ore:componentWiring>,        <warpdrive:warp_armor.superior.helmet>,   <ore:componentWiring>],
		[null,                         null,                                     null] ]);

