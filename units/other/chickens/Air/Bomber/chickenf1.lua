local unitName = Spring.I18N('units.names.chickenf1')

return {
	chickenf1 = {
		acceleration = 0.8,
		airhoverfactor = 0,
		attackrunlength = 32,
		bmcode = "1",
		brakerate = 0.4,
		buildcostenergy = 4550,
		buildcostmetal = 212,
		builder = false,
		buildpic = "chickens/chickenf1.PNG",
		buildtime = 9375,
		canattack = true,
		canfly = true,
		canguard = true,
		canland = true,
		canmove = true,
		canpatrol = true,
		canstop = "1",
		cansubmerge = true,
		category = "ALL MOBILE WEAPON NOTLAND VTOL NOTSUB NOTSHIP NOTHOVER CHICKEN",
		collide = false,
		collisionvolumeoffsets = "0 8 -2",
		collisionvolumescales = "70 14 48",
		collisionvolumetype = "box",
		-- handled gadget side -- corpse = "chicken_egg_l_pink",
		cruisealt = 240,
		defaultmissiontype = "Standby",
		description = Spring.I18N('units.descriptions.chickenf1'),
		explodeas = "TALON_DEATH",
		footprintx = 3,
		footprintz = 3,
		hidedamage = 1,
		idleautoheal = 5,
		idletime = 0,
		maneuverleashlength = "20000",
		mass = 227.5,
		maxacc = 0.4325,
		maxaileron = 0.01718,
		maxbank = 0.8,
		maxdamage = 1350,
		maxelevator = 0.01343,
		maxpitch = 0.625,
		maxrudder = 0.00893,
		maxvelocity = 6.2,
		moverate1 = "32",
		name = unitName,
		noautofire = false,
		nochasecategory = "VTOL",
		objectname = "Chickens/chickenf.s3o",
		script = "Chickens/chickenf1.cob",
		seismicsignature = 0,
		selfdestructas = "TALON_DEATH",
		side = "THUNDERBIRDS",
		sightdistance = 1000,
		smoothanim = true,
		speedtofront = 0.07,
		steeringmode = "2",
		tedclass = "VTOL",
		turninplace = true,
		turnradius = 64,
		turnrate = 1600,
		unitname = "chickenf1",
		usesmoothmesh = true,
		wingangle = 0.06593,
		wingdrag = 0.835,
		workertime = 0,
		customparams = {
			subfolder = "other/chickens",
      model_author = "KDR_11k, Beherith",
			normalmaps = "yes",
			normaltex = "unittextures/chicken_l_normals.png",
		},
		featuredefs = {
			dead = {},
			heap = {},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:blood_spray",
				[2] = "custom:blood_explode",
				[3] = "custom:dirt",
			},
			pieceexplosiongenerators = {
				[1] = "blood_spray",
				[2] = "blood_spray",
				[3] = "blood_spray",
			},
		},
		weapondefs = {
			weapon = {
				accuracy = 1000,
				areaofeffect = 128,
				avoidfeature = false,
				avoidfriendly = false,
				burst = 8,
				burstrate = 0.23333,
				collidefriendly = false,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.45,
				explosiongenerator = "custom:genericshellexplosion-large-bomb",
				impulseboost = 1,
				impulsefactor = 1,
				interceptedbyshieldtype = 0,
				model = "Chickens/chickeneggyellow.s3o",
				name = "GooBombs",
				noselfdamage = true,
				range = 800,
				reloadtime = 7,
				soundhit = "xplomed2",
				sprayangle = 2000,
				weapontype = "AircraftBomb",
				damage = {
					default = 310,
				},
			},
		},
		weapons = {
			[1] = {
				def = "WEAPON",
			},
		},
	},
}
