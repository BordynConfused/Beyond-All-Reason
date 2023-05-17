return {
	corllt = {
		acceleration = 0,
		brakerate = 0,
		buildangle = 32000,
		buildcostenergy = 700,
		buildcostmetal = 90,
		buildpic = "CORLLT.DDS",
		buildtime = 2724,
		canrepeat = false,
		cantbetransported = false,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 1 0",
		collisionvolumescales = "32 72 32",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "mediumBuildingExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		mass = 5100,
		maxdamage = 650,
		maxslope = 10,
		maxwaterdepth = 0,
		nochasecategory = "MOBILE",
		objectname = "Units/CORLLT.s3o",
		script = "Units/CORLLT.cob",
		seismicsignature = 0,
		selfdestructas = "mediumBuildingExplosionGenericSelfd",
		sightdistance = 494,
		yardmap = "oooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/corllt_aoplane.dds",
			buildinggrounddecalsizey = 4,
			buildinggrounddecalsizex = 4,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'weapon',
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			removewait = true,
			subfolder = "corbuildings/landdefenceoffence",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "32 72 32",
				collisionvolumetype = "CylY",
				damage = 351,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 55,
				object = "Units/corllt_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 176,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 22,
				object = "Units/cor2X2A.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			cloak = "kloak1",
			uncloak = "kloak1un",
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
				[1] = "lltok",
			},
			select = {
				[1] = "lltselect",
			},
		},
		weapondefs = {
			cor_lightlaser = {
				areaofeffect = 12,
				avoidfeature = false,
				beamtime = 0.12,
				corethickness = 0.175,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 20,
				explosiongenerator = "custom:laserhit-small-red",
				fastautoretargeting = 1,
				firestarter = 100,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 7,
				name = "Light g2g laser",
				noselfdamage = true,
				range = 435,
				reloadtime = 0.46667,
				rgbcolor = "1 0 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "lasrfir3",
				soundtrigger = 1,
				targetmoveerror = 0.1,
				thickness = 2,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 2250,
				damage = {
					bombers = 5,
					commanders = 140,
					default = 75,
					fighters = 5,
					vtol = 5,
				},
			},
		},
		weapons = {
			[1] = {
				def = "COR_LIGHTLASER",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
