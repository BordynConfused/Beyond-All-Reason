return {
	corsb = {
		acceleration = 0.28,
		brakerate = 0.015,
		buildcostenergy = 30000,
		buildcostmetal = 260,
		buildpic = "CORSB.DDS",
		buildtime = 25022,
		canfly = true,
		canmove = true,
		cansubmerge = true,
		category = "ALL NOTLAND MOBILE WEAPON VTOL ANTIFLAME ANTIEMG ANTILASER NOTSUB NOTSHIP NOTHOVER",
		collide = true,
		cruisealt = 150,
		description = "Seaplane Bomber",
		energymake = 0.9,
		energyuse = 0.9,
		explodeas = "mediumExplosionGeneric",
		footprintx = 3,
		footprintz = 3,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1260,
		maxslope = 10,
		maxvelocity = 8,
		maxwaterdepth = 255,
		name = "Dam Buster",
		noautofire = true,
		nochasecategory = "VTOL",
		objectname = "CORSB",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 455,
		turnrate = 750,
		blocking = false,
		customparams = {
			
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			repair = "repair1",
			underattack = "warning1",
			working = "reclaim1",
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
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "seapsel2",
			},
		},
		weapondefs = {
			core_seaadvbomb = {
				areaofeffect = 100,
				avoidfeature = false,
				bounceexplosiongenerator = "custom:genericshellexplosion-small",
				bouncerebound = 0.15,
				bounceslip = 0.75,
				burst = 3,
				burstrate = 0.15,
				collidefriendly = false,
				commandfire = false,
				craterareaofeffect = 100,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.5,
				explosiongenerator = "custom:genericshellexplosion-small-dirty",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				intensity = 0.01,
				mygravity = 0.4,
				name = "CoreSeaAdvancedBombs",
				noselfdamage = true,
				numbounce = 3,
				projectiles = 8,
				range = 1280,
				reloadtime = 8,
				rgbcolor = "0.8 0.8 0.25",
				size = 8,
				soundhitdry = "xplomed2",
				soundhitwet = "splsmed",
				soundhitwetvolume = 0.5,
				soundstart = "bombrel",
				sprayangle = 6000,
				waterbounce = true,
				weapontype = "AircraftBomb",
				damage = {
					bombers = 5,
					default = 50,
					ship = 100,
					subs = 70,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "CORE_SEAADVBOMB",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
