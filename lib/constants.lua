local constants = {}

constants.mod_name = "awa-science-icons"
constants.graphics_path = "__" .. constants.mod_name .. "__/graphics/"

---@type IconOverrideType[]
local default = { "tool", "recipe", "technology" }
constants.default_options = default

-- is this the best way to do this? no. does it work? probably.
--
-- default action:
--   searches for a matching tool, recipe, and technology to replace
--   assumes 256x256 icons in /technology for technology and 64x64 icons in /icons for everything else
---@type table<string, string|IconOverrideEntry[]>
constants.science_overrides = {
	-- base
	["automation-science-pack"] = {
		{ type = default, icon = "base/autism.png" },

		-- cubium
		{
			type = "recipe",
			name = "automation-science-pack-cubic",
			icons = { "", "icons/base/autism.png" },
		},
	},
	["logistic-science-pack"] = {
		{ type = default, icon = "base/glorp.png" },

		-- cubium
		{
			type = "recipe",
			name = "logistic-science-pack-cubic",
			icons = { "", "icons/base/glorp.png" },
		},
	},
	["military-science-pack"] = {
		{ type = default, icon = "base/miku-pipe.png" },

		-- cubium
		{
			type = "recipe",
			name = "military-science-pack-cubic",
			icons = { "", "icons/base/miku-pipe.png" },
		},
	},
	["chemical-science-pack"] = {
		{ type = default, icon = "base/bridget.png" },

		-- cubium
		{
			type = "recipe",
			name = "chemical-science-pack-cubic",
			icons = { "", "icons/base/bridget.png" },
		},
	},
	["production-science-pack"] = {
		{ type = default, icon = "base/heavyblade.png" },

		-- cubium
		{
			type = "recipe",
			name = "production-science-pack-cubic",
			icons = { "", "icons/base/heavyblade.png" },
		},
	},
	["utility-science-pack"] = {
		{ type = default, icon = "base/donqui.png" },

		-- cubium
		{
			type = "recipe",
			name = "utility-science-pack-cubic",
			icons = { "", "icons/base/donqui.png" },
		},

		-- rubia
		{
			type = "recipe",
			name = "rubia-bio-utility-science-pack",
			icon = "icons/base/donqui-sprout.png",
		},
		{
			type = "technology",
			name = "rubia-bio-utility-science-pack",
			icon = "technology/base/donqui-sprout.png",
		},
	},
	["space-science-pack"] = {
		{ type = default, icon = "base/girlmilk.png" },

		-- muluna
		{
			type = "technology",
			name = "advanced-space-science-pack",
			icons = { "technology/base/girlmilk.png" },
		},

		-- cerys
		{
			type = "recipe",
			name = "cerys-space-science-pack-from-methane-ice",
			icons = { "icons/base/girlmilk.png" },
		},
		{
			type = "technology",
			name = "cerys-space-science-pack-from-methane-ice",
			icon = "technology/methane-girlmilk.png",
		},
	},

	-- space age
	["metallurgic-science-pack"] = {
		{ type = default, icon = "space-age/vulpix.png" },

		-- age of production
		{
			type = "recipe",
			name = "aop-military-specialized-metallurgic-science-pack",
			icon = "icons/military-vulpix.png",
		},
		{
			type = "technology",
			name = "aop-specialized-science",
			icon = "technology/blender.png",
		},

		-- cubium
		{
			type = "recipe",
			name = "metallurgic-science-pack-cubic",
			icons = { "", "icons/space-age/vulpix.png" },
		},
	},
	["electromagnetic-science-pack"] = {
		{ type = default, icon = "space-age/niko.png" },

		-- age of production
		{
			type = "recipe",
			name = "aop-petrochemistry-specialized-electromagnetic-science-pack",
			icon = "icons/niko-oil.png",
		},

		-- cubium
		{
			type = "recipe",
			name = "electromagnetic-science-pack-cubic",
			icons = { "", "icons/space-age/niko.png" },
		},
	},
	["agricultural-science-pack"] = {
		{ type = default, icon = "space-age/bungus.png" },

		-- age of production
		{
			type = "recipe",
			name = "aop-hybridation-specialized-agricultural-science-pack",
			icon = "icons/space-age/wungus.png",
		},

		-- cubium
		{
			type = "recipe",
			name = "agricultural-science-pack-cubic",
			icons = { "", "icons/bungus.png" },
		},
	},
	["cryogenic-science-pack"] = {
		{ type = default, icon = "space-age/cirno.png" },

		-- age of production
		{
			type = "recipe",
			name = "aop-hydraulics-specialized-cryogenic-science-pack",
			icon = "icons/hydraulic-cirno.png",
		},

		-- cubium
		{
			type = "recipe",
			name = "cryogenic-science-pack-cubic",
			icons = { "", "icons/space-age/cirno.png" },
		},
	},
	["promethium-science-pack"] = {
		{ type = default, icon = "space-age/estradiol.png" },

		-- cubium
		{
			type = "recipe",
			name = "promethium-science-pack-cubic",
			icons = { "", "icons/space-age/estradiol.png" },
		},

		-- rubia
		{
			type = "recipe",
			name = "rubia-biofusion-promethium-science-pack",
			icons = { "icons/space-age/estradiol.png" },
		},
		{
			type = "technology",
			name = "rubia-biofusion-promethium-science-pack",
			icon = "technology/soy-milk.png",
		},
	},

	-- castra
	["battlefield-science-pack"] = "smolbinah.png",

	-- cerys
	["cerysian-science-pack"] = "ralsei.png",

	-- corrundum
	["electrochemical-science-pack"] = {
		{ type = default, icon = "mc-chicken.png" },

		-- cubium
		{
			type = "recipe",
			name = "electrochemical-science-pack-cubic",
			icons = { "", "icons/mc-chicken.png" },
		},
	},

	-- maraxys
	["hydraulic-science-pack"] = "vaporeon.png",

	-- metal and stars
	["nanite-science-pack"] = "metal-and-stars/argemia.png",
	["anomaly-science-pack"] = {
		{ type = default, icon = "metal-and-stars/amon.png" },
		{
			type = "recipe",
			name = "catalyzed-anomaly-science-pack",
			icon = "recipes/metal-and-stars/amon-antimatter.png",
		},
	},
	["inert-quantum-science-pack"] = {
		{ type = "item", icon = "icons/metal-and-stars/kanade-inert.png" },
		{
			type = "recipe",
			name = "inert-science-pack-salvage",
			icons = { "", "icons/metal-and-stars/kanade-inert.png" },
		},
	},
	["unstable-quantum-science-pack"] = {
		{ type = "item", icon = "icons/metal-and-stars/mizuki-unstable.png" },
	},
	["volatile-quantum-science-pack"] = {
		{ type = { "item", "recipe" }, icon = "icons/metal-and-stars/mafuyu-volatile.png" },
	},
	["quantum-science-pack"] = "metal-and-stars/wonderhoy.png",
	["ring-science-pack"] = "metal-and-stars/funyun.png",

	-- muluna
	["interstellar-science-pack"] = {
		{
			type = { "tool", "recipe" },
			icon = "icons/floof-ball.png",
		},
		{
			type = "technology",
			icon = "technology/zulu.png",
		},
	},

	-- outer rim
	["outer-rim-cryochemical-science-pack"] = {
		{ type = { "tool", "recipe" }, icon = "icons/weed-cirno.png" },
		{
			type = "technology",
			icon = "technology/weed-cirno.png",
		},
	},
	["outer-rim-insulation-science-pack"] = {
		{ type = { "tool", "recipe" }, icon = "icons/bnuuy-box-small.png" },
		{
			type = "technology",
			icon = "technology/bnuuy-box-large.png",
		},
	},
	["outer-rim-thermodynamic-science-pack"] = {
		{ type = { "tool", "recipe" }, icon = "icons/glaceon-flower.png" },
		{
			type = "technology",
			icon = "technology/glaceon-flower.png",
		},
	},
	["outer-rim-spacecraft-science-pack"] = {
		{ type = { "tool", "recipe" }, icon = "icons/the-wandering-earth.png" },
		{
			type = "technology",
			icon = "technology/the-wandering-earth.png",
		},
	},

	-- paracelsin (outer rim)
	["galvanization-science-pack"] = {
		{ type = { "tool", "recipe" }, icon = "icons/galv-square-steel.png" },
		{
			type = "technology",
			icon = "technology/galv-square-steels.png",
		},
	},

	-- pyalienlife
	["py-science-pack-1"] = {
		{ type = { "tool", "recipe" }, icon = "icons/pyalienlife/dirt-jar.png" },
		{
			type = "technology",
			icon = "technology/pyalienlife/py-dirt-jar.png",
		},
	},
	["py-science-pack-2"] = {
		{ type = { "tool", "recipe" }, icon = "icons/pyalienlife/choccy-milk.png" },
		{
			type = "technology",
			icon = "technology/pyalienlife/py-choccy-milk.png",
		},
	},
	["py-science-pack-3"] = {
		{ type = { "tool", "recipe" }, icon = "icons/pyalienlife/gougar.png" },
		{
			type = "technology",
			icon = "technology/pyalienlife/py-gougar.png",
		},
	},
	["py-science-pack-4"] = {
		{ type = { "tool", "recipe" }, icon = "icons/pyalienlife/breadto.png" },
		{
			type = "technology",
			icon = "technology/pyalienlife/py-breadto.png",
		},
	},

	-- rubia
	["makeshift-biorecycling-science-pack"] = {
		{
			type = { "item", "recipe" },
			icon = "icons/rubia/meat.png",
		},
		{
			type = "technology",
			name = "rubia-progression-stage1B",
			icon = "technology/rubia/meat.png",
		},
	},
	["ghetto-biorecycling-science-pack"] = {
		{
			type = { "item", "recipe" },
			name = "ghetto-biorecycling-science-pack",
			icon = "icons/rubia/patty.png",
		},
		{
			type = "technology",
			name = "rubia-progression-stage2",
			icon = "technology/rubia/patty.png",
		},
	},
	["biorecycling-science-pack"] = {
		{ type = { "tool", "recipe" }, icon = "icons/rubia/borgar.png" },
	},
	["rubia-biofusion-science-pack"] = {
		{ type = default, icon = "rubia/poo.png" },
		{
			type = "technology",
			name = "rubia-biofusion-science-pack",
			icon = "technology/rubia/poo.png",
		},
	},

	-- secretas + frozeta (outer rim)
	["golden-science-pack"] = {
		{ type = { "tool", "recipe" }, icon = "icons/gapple.png" },
		{
			type = "technology",
			icon = "technology/gapple-recipe.png",
		},

		-- cubium
		{
			type = "recipe",
			name = "golden-science-pack-cubic",
			icons = { "", "icons/gapple.png" },
		},
	},

	-- shattered planet
	["ske_hea_science_pack"] = {
		{ type = { "tool", "recipe" }, icon = "icons/shattered-planet/cherry-wellcheers.png" },
	},
	["ske_hec_science_pack"] = { { type = { "tool", "recipe" }, icon = "icons/shattered-planet/blue-wellcheers.png" } },
	["ske_hef_science_pack"] = { { type = { "tool", "recipe" }, icon = "icons/shattered-planet/grape-wellcheers.png" } },
	["ske_heu_science_pack"] = {
		{ type = { "tool", "recipe" }, icon = "icons/shattered-planet/strawberry-wellcheers.png" },
	},
	["ske_hep_science_pack"] = {
		{ type = { "tool", "recipe" }, icon = "icons/shattered-planet/regular-wellcheers.png" },
	},
	["ske_antimatter_cell"] = {
		{ type = "tool", icon = "icons/shattered-planet/antimatter-fuel.png" },
		{ type = "recipe", icon = "icons/shattered-planet/antimatter-fuel.png" },
	},

	-- tenebris prime
	["bioluminescent-science-pack"] = "lumpfish.png",

	-- tiberium
	["tiberium-science"] = {
		{
			type = "tool",
			icon = "icons/kane.png",
		},
		{
			type = "recipe",
			name = "tiberium-science-mechanical",
			icons = { "icons/kane.png" },
		},
		{
			type = "recipe",
			name = "tiberium-science-thermal",
			icons = { "icons/kane.png" },
		},
		{
			type = "recipe",
			name = "tiberium-science-thru-thermal",
			icons = { "icons/kane.png" },
		},
		{
			type = "recipe",
			name = "tiberium-science-chemical",
			icons = { "icons/kane.png" },
		},
		{
			type = "recipe",
			name = "tiberium-science-thru-chemical",
			icons = { "icons/kane.png" },
		},
		{
			type = "recipe",
			name = "tiberium-science-nuclear",
			icons = { "icons/kane.png" },
		},
		{
			type = "recipe",
			name = "tiberium-science-thru-nuclear",
			icons = { "icons/kane.png" },
		},
		{
			type = "recipe",
			name = "tiberium-science-EM",
			icons = { "icons/kane.png" },
		},
		{
			type = "recipe",
			name = "tiberium-science-thru-EM",
			icons = { "icons/kane.png" },
		},
	},

	-- vesta
	["gas-manipulation-science-pack"] = {
		{ type = { "tool", "recipe" }, icon = "icons/bj-cotton-candy.png" },
		{
			type = "technology",
			name = "s1_gas_manipulation_science_pack",
			icon = "technology/bj-cotton-candy.png",
		},
	},

	-- void processing
	["voidp-void-science-pack"] = "progesterone.png",

	-- voidcraft
	["void-science-pack"] = {
		{ type = { "tool", "recipe" }, icon = "icons/voidcraft/skyblock.png" },
		{
			type = "recipe",
			name = "s6xvc-void-science-pack",
			icons = { "icons/voidcraft/skyblock.png" },
		},
		{
			type = "technology",
			name = "s6x-void-science-pack",
			icon = "technology/voidcraft/skyblock.png",
		},
		{
			type = "technology",
			name = "s6x-void-science-pack-vc",
			icon = "technology/voidcraft/skyblock-vc.png",
		},
	},
	["esoteric-science-pack"] = {
		{ type = { "tool", "recipe" }, icon = "icons/voidcraft/coobie.png" },
		{
			type = "recipe",
			name = "s6xvc-esoteric-science-pack",
			icons = { "icons/voidcraft/coobie.png" },
		},
		{
			type = "technology",
			name = "s6x-esoteric-science-pack",
			icon = "technology/voidcraft/coobie.png",
		},
		{
			type = "technology",
			name = "s6x-esoteric-science-pack-vc",
			icon = "technology/voidcraft/coobie-vc.png",
		},
	},
	["celestial-science-pack"] = {
		{ type = { "tool", "recipe" }, icon = "icons/voidcraft/marisa.png" },
		{
			type = "recipe",
			name = "s6xvc-celestial-science-pack",
			icons = { "icons/voidcraft/marisa.png" },
		},
		{
			type = "technology",
			name = "s6x-celestial-science-pack",
			icon = "technology/voidcraft/marisa.png",
		},
		{
			type = "technology",
			name = "s6x-celestial-science-pack-vc",
			icon = "technology/voidcraft/marisa-vc.png",
		},
	},
}

return constants
