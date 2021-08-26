import mods.techguns.GunStats;

// *** Explosives & Missiles
// remove ICBM battery and increase materials slightly
recipes.remove(<icbmclassic:emptower>);
recipes.addShaped("icbmclassic_emptower", <icbmclassic:emptower>,
	[	[<ore:plateSteel>,               <ore:wireGold>,                 <ore:plateSteel>],
		[<warpdrive:component:5>,        <ore:circuitElite>,             <warpdrive:component:5>],
		[<ore:plateSteel>,               <minecraft:redstone>,           <ore:plateSteel>]]);

// use Enriched uranium 235 for ICBM Nuclear explosive
recipes.remove(<icbmclassic:explosives:15>);
recipes.addShaped("icbmclassic_explosives_15", <icbmclassic:explosives:15>,
	[	[<icbmclassic:explosives:13>,    <ore:ingotUraniumEnriched>,     <icbmclassic:explosives:13>],
		[<ore:ingotUraniumEnriched>,     <ore:ingotUraniumEnriched>,     <ore:ingotUraniumEnriched>],
		[<icbmclassic:explosives:13>,    <ore:ingotUraniumEnriched>,     <icbmclassic:explosives:13>] ]);

// EMP explosive recipe missing
recipes.addShaped(<icbmclassic:explosives:16>,
	[	[<ore:blockRedstone>,            <icbmclassic:battery>,          <ore:blockRedstone>],
		[<icbmclassic:battery>,          <icbmclassic:explosives:6>,     <icbmclassic:battery>],
		[<ore:blockRedstone>,            <icbmclassic:battery>,          <ore:blockRedstone>] ]);
// ICBM battery with rubber and magnesium
recipes.remove(<icbmclassic:battery>);
recipes.addShaped(<icbmclassic:battery>,
	[	[<minecraft:redstone>, <ore:ingotCopper>,    <minecraft:redstone>],
		[<ore:itemRubber>,     <ore:paper>,          <ore:itemRubber>],
		[<ore:dustSulfur>,     <ore:ingotMagnesium>, <ore:dustSulfur>] ]);


// *** Traps
// double MineTraps recipe output
recipes.remove(<minetraps:barbed_wire>);
recipes.addShaped("minetrapsè_barbed_wire",<minetraps:barbed_wire> * 2,
	[	[<minetraps:nails>,              <minecraft:iron_ingot>,         <minetraps:nails>],
		[<minecraft:iron_ingot>,         <minetraps:nails>,              <minecraft:iron_ingot>],
		[<minetraps:nails>,              <minecraft:iron_ingot>,         <minetraps:nails>] ]);

recipes.remove(<minetraps:razor_wire>);
recipes.addShaped("minetraps_razor_wire",<minetraps:razor_wire> * 2,
	[	[null,<minetraps:razor_wire>,null],
		[<minetraps:razor_wire>,null,<minetraps:razor_wire>],
		[null,<minetraps:razor_wire>,null] ]);
 
recipes.remove(<minetraps:barbed_wire_fence>);
recipes.addShaped("minetraps_barbed_wire_fence", <minetraps:barbed_wire_fence> * 6,
	[	[null,null,null],
		[<minecraft:iron_ingot>,         <minetraps:barbed_wire>,        <minecraft:iron_ingot>],
		[<minecraft:iron_ingot>,         <minetraps:barbed_wire>,        <minecraft:iron_ingot>] ]);
  
recipes.remove(<minetraps:obstacle>);
recipes.addShaped("minetraps_obstacle", <minetraps:obstacle> * 2,
	[	[<minecraft:iron_ingot>,         null,                           <minecraft:iron_ingot>],
		[null,                           <minecraft:iron_ingot>,         null                  ],
		[<minecraft:iron_ingot>,         null,                           <minecraft:iron_ingot>] ]);

// *** TechGuns Gauss rifle
// adjust to be more sniper rifle
GunStats.setWeaponStat("gaussrifle", "DAMAGE", 80);
GunStats.setWeaponStat("gaussrifle", "DAMAGE_MIN", 80);
GunStats.setWeaponStat("gaussrifle", "BULLET_SPEED", 20);
GunStats.setWeaponStat("gaussrifle", "BULLET_DISTANCE", 512);

recipes.remove(<techguns:itemshared:128>);
recipes.addShaped("techguns_GaussRifleBarrel", <techguns:itemshared:128>,
	[	[<ore:plateDenseTitanium>,       <ore:blockElectromagnet1>,      <ore:blockElectromagnet1>],
		[<techguns:itemshared:129>,      <techguns:itemshared:40>,       <ore:alloyUltimate>],
		[<ore:plateDenseTitanium>,       <ore:blockElectromagnet1>,      <ore:blockElectromagnet1>]]);

