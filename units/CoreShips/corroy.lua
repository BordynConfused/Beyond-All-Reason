return {
	corroy = {
		acceleration = 0.035,
		activatewhenbuilt = true,
		brakerate = 0.0035,
		buildangle = 16384,
		buildcostenergy = 6000,
		buildcostmetal = 1050,
		buildpic = "CORROY.DDS",
		buildtime = 13000,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON SHIP NOTSUB NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 -7 0",
		collisionvolumescales = "51 51 120",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Destroyer",
		energymake = 1.9,
		energyuse = 1.9,
		explodeas = "mediumexplosiongeneric",
		floater = true,
		footprintx = 3,
		footprintz = 3,
		icontype = "sea",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 2850,
		maxvelocity = 2.15,
		minwaterdepth = 12,
		movementclass = "BOAT4",
		name = "Enforcer",
		nochasecategory = "VTOL",
		objectname = "CORROY",
		seismicsignature = 0,
		selfdestructas = "mediumexplosiongeneric",
		sightdistance = 400,
		sonardistance = 350,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.80642,
		turnrate = 450,
		waterline = 3.5,
		customparams = {
			death_sounds = "generic",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.0580749511719 -0.062504465332 -0.201034545898",
				collisionvolumescales = "48.2652587891 30.5109710693 120.4415893555",
				collisionvolumetype = "Box",
				damage = 1680,
				description = "Enforcer Wreckage",
				energy = 0,
				featuredead = "HEAP",
				footprintx = 5,
				footprintz = 5,
				height = 4,
				hitdensity = 100,
				metal = 525,
				object = "CORROY_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 2016,
				description = "Enforcer Heap",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 267,
				object = "5X5D",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
			explosiongenerators = {
				[1] = "custom:barrelshot-medium",
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
				[1] = "shcormov",
			},
			select = {
				[1] = "shcorsel",
			},
		},
		weapondefs = {
			core_roy = {
				areaofeffect = 64,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-medium",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "MediumPlasmaCannon",
				noselfdamage = true,
				range = 700,
				reloadtime = 2.5,
				soundhit = "xplomed2",
				soundhitwet = "splssml",
				soundhitwetvolume = 0.5,
				soundstart = "cannhvy1",
				turret = true,
				sizedecay = 0,
				alphadecay = 0.5,
				separation = 1.0,
				nogap = false,
				stages = 20,
				weapontype = "Cannon",
				weaponvelocity = 320,
				damage = {
					bombers = 45,
					default = 450,
					fighters = 45,
					subs = 5,
					vtol = 45,
				},
			},
			depthcharge = {
				areaofeffect = 48,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.75,
				explosiongenerator = "custom:genericshellexplosion-medium",
				flighttime = 1.75,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "DEPTHCHARGE",
				name = "DepthCharge",
				noselfdamage = true,
				predictboost = 0,
				range = 400,
				reloadtime = 2.5,
				soundhit = "xplodep2",
				soundstart = "torpedo1",
				startvelocity = 140,
				tolerance = 1000,
				tracks = true,
				turnrate = 4000,
				turret = true,
				waterweapon = true,
				weaponacceleration = 25,
				weapontimer = 3,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 200,
				damage = {
					default = 190,
					heavysubmarines = 80,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "CORE_ROY",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				badtargetcategory = "NOTSUB",
				def = "DEPTHCHARGE",
				onlytargetcategory = "NOTHOVER",
			},
		},
	},
}
