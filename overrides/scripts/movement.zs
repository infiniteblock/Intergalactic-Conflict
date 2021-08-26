// progression of movement including flight and teleportation @TODO

// *** Flight
// Materials to consider:
// - <minecraft:elytra>, <minecraft:dragon_breath>, <ore:shulkerShell>
// - bats' wings
// - SimplyJetpacks, Wings, etc.
// var potion_strong_leaping = <minecraft:potion>.withTag({Potion: "minecraft:strong_leaping"}); // includes <minecraft:rabbit_foot>
// var enchanted_book_feather_falling_IV = <minecraft:enchanted_book>.withTag({ench: [{lvl: 4 as short, id: 2}]});

// Mekanism Jetpack uses advanced materials
var steelToolRod = <tconstruct:tool_rod>.withTag({Material: "steel"});
recipes.remove(<mekanism:jetpack>);
recipes.addShaped("mekanism_jetpack", <mekanism:jetpack>,
	[	[steelToolRod,            <ore:circuitAdvanced>,                 steelToolRod],
		[<ore:plateTin>,          <mekanism:gastank>.withTag({tier: 3}), <ore:plateTin>],
		[null,                    <ore:plateTin>,                        null] ]);

// Botania tyara
var thermal_morb_withChicken = <thermalexpansion:morb>.withTag({id: "minecraft:chicken"});
var thermal_energizedGlowstone = <forge:bucketfilled>.withTag({FluidName: "glowstone", Amount: 1000});
// recipes.removeShaped(<botania:flighttiara:*>);
// recipes.addShaped("botania_tiara", <botania:flighttiara>,
// 	[	[<botania:manaresource:5>,  <botania:manaresource:5>,     <botania:manaresource:5>],
// 	 	[<botania:manaresource:7>,  thermal_energizedGlowstone,   <botania:manaresource:7>],
// 	 	[<botania:manaresource:15>, thermal_morb_withChicken,     <botania:manaresource:15>] ]);


// *** Stargate
// advanced but not end game either

recipes.removeByRegex("sgcraft:naquadahingot");
recipes.addShaped("sgcraft_naquadahingot", <sgcraft:naquadahingot>,
	[	[<ore:plateCarbon>,           <ore:plateTitanium>,            <ore:plateCarbon>],
		[<ore:plateGold>,             <ore:naquadah>,                 <ore:plateGold>],
		[<ore:plateCarbon>,           <ore:plateTitanium>,            <ore:plateCarbon>] ]);

recipes.remove(<sgcraft:stargatering>);
recipes.addShaped("sgcraft_stargatering", <sgcraft:stargatering>,
	[	[<ore:ingotNaquadahAlloy>,    <ore:ingotNaquadahAlloy>,       <ore:ingotNaquadahAlloy>],
		[null,                        <thermalfoundation:upgrade:2>,  null],
		[<ore:plateDiamond>,          <ore:plateDiamond>,             <ore:plateDiamond>] ]);

recipes.remove(<sgcraft:stargatering:1>);
recipes.addShaped("sgcraft_stargatering_1", <sgcraft:stargatering:1>,
	[	[null,                        <ore:blockRefinedGlowstone>,    null],
		[null,                        <sgcraft:stargatering>,         null],
		[null,                        <warpdrive:component:6>,        null] ]);

recipes.remove(<sgcraft:stargatebase>);
var proton500 = <warpdrive:electromagnetic_cell.basic:12>.withTag({particle: {amount: 500, name: "proton"}});
recipes.addShaped("sgcraft_stargatebase", <sgcraft:stargatebase>,
	[	[null,                        <sgcraft:sgcorecrystal>,        null],
		[proton500,                   <sgcraft:stargatering>,         proton500],
		[null,                        <warpdrive:component:21>,       null] ]);

recipes.remove(<sgcraft:stargatecontroller>);
recipes.addShaped("sgcraft_stargatecontroller", <sgcraft:stargatecontroller>,
	[	[<minecraft:stone_button>,    <sgcraft:sgcontrollercrystal>,  <minecraft:stone_button>],
		[<ore:ingotNaquadahAlloy>,    <thermalfoundation:upgrade:2>,  <ore:ingotNaquadahAlloy>],
		[<ore:ingotNaquadahAlloy>,    <warpdrive:component:5>,        <ore:ingotNaquadahAlloy>] ]);

var strange1000 = <warpdrive:electromagnetic_cell.advanced:24>.withTag({particle: {amount: 1000, name: "strange_matter"}});
recipes.remove(<sgcraft:sgchevronupgrade>);
recipes.addShaped("sgcraft_sgchevronupgrade", <sgcraft:sgchevronupgrade>,
	[	[<ore:blockRefinedGlowstone>, null,                           <ore:blockRefinedGlowstone>],
		[<ore:ingotNaquadahAlloy>,    strange1000,                    <ore:ingotNaquadahAlloy>],
		[<warpdrive:component:6>,     null,                           <warpdrive:component:6>] ]);

recipes.remove(<sgcraft:sgirisblade>);
recipes.addShaped("sgcraft_sgirisblade", <sgcraft:sgirisblade>,
	[	[null,                        <ore:plateTitanium>,            <ore:plateTitanium>],
		[<ore:plateTitanium>,         <ore:plateTitanium>,            null],
		[<ore:plateTitanium>,         null,                           null] ]);

recipes.remove(<sgcraft:ccinterface>);
recipes.addShaped("sgcraft_ccinterface", <sgcraft:ccinterface>,
	[	[<ore:stone>,                 <warpdrive:component:8>,        <ore:stone>],
	 	[<ore:stone>,                 <ore:plateTitanium>,            <ore:stone>],
	 	[<ore:stone>,                 <ore:ingotNaquadahAlloy>,       <ore:stone>] ]);

recipes.remove(<sgcraft:pegasus_upgrade>);
recipes.addShaped("sgcraft_pegasus_upgrade", <sgcraft:pegasus_upgrade>,
	[	[<ore:circuitUltimate>,       <ore:ingotNaquadahAlloy>,       <ore:circuitUltimate>],
		[<sgcraft:sgcorecrystal>,     <ore:elvenDragonstone>,         <sgcraft:sgcorecrystal>],
		[<ore:circuitUltimate>,       <ore:ingotNaquadahAlloy>,       <ore:circuitUltimate>] ]);

recipes.remove(<sgcraft:gdo>);
recipes.addShaped("sgcraft_gdo", <sgcraft:gdo>,
	[	[<ore:plateCarbon>,           <minecraft:clock:*>,            <ore:plateCarbon>],
		[<ore:ingotNaquadahAlloy>,    <ore:circuitAdvanced>,          <ore:ingotNaquadahAlloy>],
		[<ore:plateCarbon>,           <sgcraft:sgcontrollercrystal>,  <ore:plateCarbon>] ]);

recipes.remove(<sgcraft:pdd>);
recipes.addShaped("sgcraft_pdd", <sgcraft:pdd>,
	[	[<ore:plateCarbon>,           <minecraft:compass:*>,          <ore:plateCarbon>],
		[<ore:ingotNaquadahAlloy>,    <sgcraft:sgcontrollercrystal>,  <ore:ingotNaquadahAlloy>],
		[<ore:ingotNaquadahAlloy>,    <warpdrive:component:1>,        <ore:ingotNaquadahAlloy>] ]);


// *** Mekanism's teleportation
// core using Techguns Rad emitters, AppliedEnergistics Singularity
var singularity = <appliedenergistics2:material:47>;
recipes.remove(<mekanism:teleportationcore>);
recipes.addShaped("mekanism_teleportationcore", <mekanism:teleportationcore>,
	[	[<ore:ingotNaquadahAlloy>,    <ore:blockElectromagnet3>,      <ore:ingotNaquadahAlloy>],
		[<ore:blockElectromagnet3>,   singularity,                    <ore:blockElectromagnet3>],
		[<ore:ingotNaquadahAlloy>,    <techguns:itemshared:73>,       <ore:ingotNaquadahAlloy>] ]);

// teleporter using ions
var steelcasing = <mekanism:basicblock:8>;
recipes.remove(<mekanism:machineblock:11>);
recipes.addShaped("mekanism_teleporter", <mekanism:machineblock:11>,
	[	[<ore:circuitAdvanced>,       <sgcraft:sgcontrollercrystal>,  <ore:circuitAdvanced>],
		[steelcasing,                 <mekanism:teleportationcore>,   steelcasing],
		[<ore:circuitAdvanced>,       <warpdrive:component:21>,       <ore:circuitAdvanced>] ]);

recipes.remove(<mekanism:basicblock:7>);
recipes.addShaped("mekanism_teleporterframe", <mekanism:basicblock:7> * 3,
	[	[<ore:ingotRefinedObsidian>,  <ore:ingotRefinedObsidian>,     <ore:ingotRefinedObsidian>],
		[<ore:ingotRefinedObsidian>,  <ore:circuitAdvanced>,          <ore:ingotRefinedObsidian>],
		[<sgcraft:stargatering>,      <sgcraft:stargatering:1>,       <sgcraft:stargatering>] ]);
