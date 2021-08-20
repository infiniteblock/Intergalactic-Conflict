

// *** Portable storage
// @TODO update cost of basic satchel?
// progression of material storage

// *** Advanced storage
// * presses from Mob drops as an alternative to exploration
// calculation press
/*
recipes.addShapeless("appliedenergistics2_calculation_press", <appliedenergistics2:material:13>,
	[	<appliedenergistics2:smooth_sky_stone_chest>,
		<ore:blockIron>,
		<ore:crystalPureFluix>,
		<appliedenergistics2:material:10>,
		<xreliquary:mob_ingredient:14> ]);

// engineering press
recipes.addShapeless("appliedenergistics2_engineering_press", <appliedenergistics2:material:14>,
	[	<appliedenergistics2:smooth_sky_stone_chest>,
		<ore:blockIron>,
		<ore:crystalPureFluix>,
		<ore:blockDiamond>,
		<xreliquary:mob_ingredient:10> ]);

// logic press
recipes.addShapeless("appliedenergistics2_logic_press", <appliedenergistics2:material:15>,
	[	<appliedenergistics2:smooth_sky_stone_chest>,
		<ore:blockIron>,
		<ore:crystalPureFluix>,
		<ore:blockGold>,
		<xreliquary:mob_ingredient:7> ]);

// silicon press
recipes.addShapeless("appliedenergistics2_silicon_press", <appliedenergistics2:material:19>,
	[	<appliedenergistics2:smooth_sky_stone_chest>,
		<ore:blockIron>,
		<ore:crystalPureFluix>,
		<appliedenergistics2:material:5>,
		<xreliquary:mob_ingredient:3> ]);
*/
// note: block/panels use circuits to integrate with other mods, while presses remains for storage cells
// * machines & cables from overworld & betweenlands ore, encourage hull autocrafting, add a touch of gold
// ME Interface
recipes.remove(<appliedenergistics2:interface>);
recipes.addShaped("appliedenergistics2_me_interface", <appliedenergistics2:interface>,
	[	[<thebetweenlands:green_middle_gem>,      <ore:blockHull2_glass>,              <thebetweenlands:green_middle_gem>],
		[<appliedenergistics2:material:44>, 	  null,         					   <appliedenergistics2:material:43>],
		[<thebetweenlands:aqua_middle_gem>,       <ore:blockHull2_glass>,              <thebetweenlands:aqua_middle_gem>] ]);

// ME Controller
recipes.remove(<appliedenergistics2:controller>);
recipes.addShaped("appliedenergistics2_me_controller", <appliedenergistics2:controller>,
	[	[<thebetweenlands:crimson_middle_gem>,  <ore:circuitElite>,           		 <thebetweenlands:crimson_middle_gem>],
		[<ore:circuitElite>,                	<appliedenergistics2:material:45>,   <ore:circuitElite>],
		[<ore:blockHull2_plain>,           	    <ore:circuitElite>,                  <ore:blockHull2_plain>] ]);

// Quartz fiber
recipes.remove(<appliedenergistics2:part:140>);
recipes.addShaped(<appliedenergistics2:part:140> * 3,
	[	[<ore:blockHull1_glass>,            <ore:blockHull1_glass>,              <ore:blockHull1_glass>],
		[<ore:dustCertusQuartz>,            <ore:dustCertusQuartz>,              <ore:dustCertusQuartz>],
		[<ore:nuggetGold>,                  <ore:nuggetGold>,                    <ore:nuggetGold>] ]);
recipes.addShaped(<appliedenergistics2:part:140> * 3,
	[	[<ore:blockHull1_glass>,            <ore:blockHull1_glass>,              <ore:blockHull1_glass>],
		[<ore:dustNetherQuartz>,            <ore:dustNetherQuartz>,              <ore:dustNetherQuartz>],
		[<ore:nuggetGold>,                  <ore:nuggetGold>,                    <ore:nuggetGold>] ]);

// ME Glass cable
recipes.remove(<appliedenergistics2:part:16>);
recipes.addShaped(<appliedenergistics2:part:16> * 4,
	[	[null,                              <thebetweenlands:green_middle_gem>,                 null],
		[<appliedenergistics2:material:8>,  <appliedenergistics2:part:140>,      <appliedenergistics2:material:8>],
		[null,                              <thebetweenlands:crimson_middle_gem>,               null] ]);

// * Autocrafting requires to reach Tropics
// Molecular assembler
recipes.remove(<appliedenergistics2:molecular_assembler>);
recipes.addShaped(<appliedenergistics2:molecular_assembler>,
	[	[<tropicraft:zircon>,       		<ore:blockHull3_glass>,              <tropicraft:zircon>],
		[<appliedenergistics2:material:44>, <thermalfoundation:upgrade:3>,       <appliedenergistics2:material:43>],
		[<tropicraft:zircon>,       		<ore:blockHull3_glass>,              <tropicraft:zircon>] ]);

// Crafting unit
recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.addShaped(<appliedenergistics2:crafting_unit>,
	[	[<tropicraft:zircon>,      		 	<ore:circuitElite>,                  <tropicraft:zircon>],
		[<appliedenergistics2:part:76>,     null,                                <appliedenergistics2:part:76>],
		[<tropicraft:zircon>,       		<ore:circuitElite>,                  <tropicraft:zircon>] ]);

// Blank pattern
recipes.remove(<appliedenergistics2:material:52>);
recipes.addShaped(<appliedenergistics2:material:52>,
	[	[<ore:blockHull2_omnipanel>,        <ore:dustFluix>,                     <ore:blockHull2_omnipanel>],
		[<ore:dustFluix>,                   <appliedenergistics2:material:1>,    <ore:dustFluix>],
		[<tropicraft:eudialyte>,       		<tropicraft:zircon>,        	 	 <tropicraft:eudialyte>] ]);

// * base components progression
// Illuminated panel requires redstone "chip" and Syrmorite (Betweenlands)
recipes.remove(<appliedenergistics2:part:180>);
recipes.addShaped(<appliedenergistics2:part:180> *3,
	[	[null,                              <minecraft:glowstone_dust>,          <ore:blockHull1_omnipanel>],
		[<thebetweenlands:items_misc:11>,   <ore:itemCompressedRedstone>,        <ore:blockHull1_omnipanel>],
		[null,                              <minecraft:glowstone_dust>,          <ore:blockHull1_omnipanel>] ]);

// ME Terminal doesn't need gold
recipes.remove(<appliedenergistics2:part:380>);
recipes.addShapeless(<appliedenergistics2:part:380>,
	[	<appliedenergistics2:material:44>,  <appliedenergistics2:material:43>,
		<appliedenergistics2:part:16>,      <ore:itemIlluminatedPanel>]);

// ME Chest requires skystone which was removed from the ME controller
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>,
	[	[<ore:blockHull1_omnipanel>,        <appliedenergistics2:part:380>,               <ore:blockHull1_omnipanel>],
		[<appliedenergistics2:part:16>,     <appliedenergistics2:smooth_sky_stone_chest>, <appliedenergistics2:part:16>],
		[<tropicraft:zircon>,               <ore:circuitAdvanced>,                        <tropicraft:zircon>] ]);

// ME Drive is an upgrade ME Chest
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive>,
	[	[<nuclearcraft:alloy:6>,               <ore:circuitElite>,                  <nuclearcraft:alloy:6>],
		[<appliedenergistics2:part:16>,        <appliedenergistics2:chest>,         <appliedenergistics2:part:16>],
		[<nuclearcraft:alloy:6>,               <ore:circuitElite>,                  <nuclearcraft:alloy:6>] ]);

// Cell workbench
recipes.remove(<appliedenergistics2:cell_workbench>);
recipes.addShaped(<appliedenergistics2:cell_workbench>,
	[	[<ore:blockHull1_plain>,               <appliedenergistics2:material:23>,               <ore:blockHull1_plain>],
		[<nuclearcraft:alloy:6>,               <appliedenergistics2:smooth_sky_stone_chest>,    <nuclearcraft:alloy:6>],
		[<nuclearcraft:alloy:6>,               <nuclearcraft:alloy:6>,                          <nuclearcraft:alloy:6>] ]);

// IO port
recipes.remove(<appliedenergistics2:io_port>);
recipes.addShaped(<appliedenergistics2:io_port>,
	[	[<ore:blockHull2_glass>,            <ore:blockHull2_glass>,              <ore:blockHull2_glass>],
		[<appliedenergistics2:drive>,       <appliedenergistics2:part:16>,       <appliedenergistics2:drive>],
		[<nuclearcraft:alloy:6>,            <appliedenergistics2:material:22>,   <nuclearcraft:alloy:6>] ]);
 
// * storage cells
// Cell housing from gold/money for good connectivity
recipes.remove(<appliedenergistics2:material:39>);
recipes.addShaped(<appliedenergistics2:material:39>,
	[	[<ore:blockHull2_glass>,            	 <ore:dustElectrum>,                  <ore:blockHull2_glass>],
		[<ore:dustElectrum>,       	        	 null,                                <ore:dustElectrum>],
		[<techguns:itemshared:85>,               <techguns:itemshared:85>,            <techguns:itemshared:85>] ]);

recipes.remove(<appliedenergistics2:storage_cell_1k>);
recipes.addShaped(<appliedenergistics2:storage_cell_1k>,
	[	[<ore:blockHull2_glass>,            	 <ore:dustElectrum>,                <ore:blockHull2_glass>],
		[<ore:dustElectrum>,               		 <appliedenergistics2:material:35>, <ore:dustElectrum>],
		[<techguns:itemshared:85>,               <techguns:itemshared:85>,          <techguns:itemshared:85>] ]);
recipes.addShapeless(<appliedenergistics2:storage_cell_1k>,
	[	<appliedenergistics2:material:35>, <appliedenergistics2:material:39> ]);

recipes.remove(<appliedenergistics2:storage_cell_4k>);
recipes.addShaped(<appliedenergistics2:storage_cell_4k>,
	[	[<ore:blockHull2_glass>,            	 <ore:dustElectrum>,                <ore:blockHull2_glass>],
		[<ore:dustElectrum>,               		 <appliedenergistics2:material:36>, <ore:dustElectrum>],
		[<techguns:itemshared:85>,               <techguns:itemshared:85>,          <techguns:itemshared:85>] ]);
recipes.addShapeless(<appliedenergistics2:storage_cell_4k>,
	[	<appliedenergistics2:material:36>, <appliedenergistics2:material:39> ]);

recipes.remove(<appliedenergistics2:storage_cell_16k>);
recipes.addShaped(<appliedenergistics2:storage_cell_16k>,
	[	[<ore:blockHull2_glass>,            	 <ore:dustElectrum>,                <ore:blockHull2_glass>],
		[<ore:dustElectrum>,              		 <appliedenergistics2:material:37>, <ore:dustElectrum>],
		[<techguns:itemshared:85>,               <techguns:itemshared:85>,          <techguns:itemshared:85>] ]);
recipes.addShapeless(<appliedenergistics2:storage_cell_16k>,
	[	<appliedenergistics2:material:37>, <appliedenergistics2:material:39>]);

recipes.remove(<appliedenergistics2:storage_cell_64k>);
recipes.addShaped(<appliedenergistics2:storage_cell_64k>,
	[	[<ore:blockHull2_glass>,           		 <ore:dustElectrum>,                <ore:blockHull2_glass>],
		[<ore:dustElectrum>,              		 <appliedenergistics2:material:38>, <ore:dustElectrum>],
		[<techguns:itemshared:85>,               <techguns:itemshared:85>,          <techguns:itemshared:85>] ]);
recipes.addShapeless(<appliedenergistics2:storage_cell_64k>,
	[	<appliedenergistics2:material:38>, <appliedenergistics2:material:39>]);
