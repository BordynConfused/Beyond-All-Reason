return {
	armanac = {
		acceleration = 0.083999998867512,
		brakerate = 0.11200000345707,
		buildcostenergy = 2444,
		buildcostmetal = 269,
		buildpic = "ARMANAC.DDS",
		buildtime = 3194,
		canhover = true,
		canmove = true,
		category = "ALL HOVER MOBILE WEAPON NOTSUB NOTSHIP NOTAIR",
		corpse = "DEAD",
		description = "Hovertank",
		energymake = 2.5999999046326,
		energyuse = 2.5999999046326,
		explodeas = "BIG_UNITEX",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1377,
		maxslope = 16,
		maxvelocity = 2.5299999713898,
		maxwaterdepth = 0,
		movementclass = "HOVER3",
		name = "Anaconda",
		nochasecategory = "VTOL",
		objectname = "ARMANAC",
		seismicsignature = 0,
		selfdestructas = "BIG_UNIT",
		sightdistance = 509,
		turnrate = 525,
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				damage = 826,
				description = "Anaconda Wreckage",
				energy = 0,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 175,
				object = "ARMANAC_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 413,
				description = "Anaconda Heap",
				energy = 0,
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 70,
				object = "3X3D",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "hovmdok1",
			},
			select = {
				[1] = "hovmdsl1",
			},
		},
		weapondefs = {
			armanac_weapon = {
				areaofeffect = 32,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH2",
				gravityaffected = "true",
				impulseboost = 0.12300000339746,
				impulsefactor = 0.12300000339746,
				name = "MediumPlasmaCannon",
				noselfdamage = true,
				range = 320,
				reloadtime = 1.3999999761581,
				soundhit = "xplosml3",
				soundstart = "canlite3",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 260,
				damage = {
					default = 98,
					hgunships = 29,
					l1bombers = 29,
					l1subs = 5,
					l2fighters = 29,
					vtol = 29,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "ARMANAC_WEAPON",
			},
		},
	},
}
