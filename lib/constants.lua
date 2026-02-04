local constants = {}

constants.mod_name = "awa-science-icons"
constants.graphics_path = "__" .. constants.mod_name .. "__/graphics/"

---@type IconOverrideType[]
constants.default_options = { "tool", "recipe", "technology" }

local krastorio2_pictures = function(filename)
	return {
		layers = {
			{
				filename = constants.graphics_path .. "icons/krastorio2/" .. filename,
				size = 64,
				scale = 0.5,
			},
			{
				filename = constants.graphics_path .. "icons/krastorio2/floppy-light.png",
				size = 64,
				scale = 0.5,
				draw_as_light = true,
			},
		},
	}
end

-- is this the best way to do this? no. does it work? probably.
--
-- default action:
--   searches for a matching tool, recipe, and technology to replace
--   assumes 256x256 icons in /technology for technology and 64x64 icons in /icons for everything else
---@type table<string, string|IconOverrideEntry[]>
constants.science_overrides = {
	-- base
	["automation-science-pack"] = {
		{ icon = "base/autism.png" },

		-- cubium
		{
			type = "recipe",
			name = "automation-science-pack-cubic",
			icons = { "", "icons/base/autism.png" },
		},

		-- krastorio2
		{
			type = { "tool", "recipe" },
			icon = "icons/krastorio2/floppy-autism.png",
			pictures = krastorio2_pictures("floppy-autism.png"),
			priority = 1,
			mods = { "Krastorio2", "Krastorio2-spaced-out" },
		},
	},
	["logistic-science-pack"] = {
		{ icon = "base/glorp.png" },

		-- cubium
		{
			type = "recipe",
			name = "logistic-science-pack-cubic",
			icons = { "", "icons/base/glorp.png" },
		},

		-- krastorio2
		{
			mods = { "Krastorio2", "Krastorio2-spaced-out" },
			priority = 1,
			type = { "tool", "recipe" },
			icon = "icons/krastorio2/floppy-glorp.png",
			pictures = krastorio2_pictures("floppy-glorp.png"),
		},
	},
	["military-science-pack"] = {
		{ icon = "base/miku-pipe.png" },

		-- cubium
		{
			type = "recipe",
			name = "military-science-pack-cubic",
			icons = { "", "icons/base/miku-pipe.png" },
		},

		-- krastorio2
		{
			mods = { "Krastorio2", "Krastorio2-spaced-out" },
			priority = 1,
			type = { "tool", "recipe" },
			icon = "icons/krastorio2/floppy-miku-pipe.png",
			pictures = krastorio2_pictures("floppy-miku-pipe.png"),
		},
	},
	["chemical-science-pack"] = {
		{ icon = "base/bridget.png" },

		-- cubium
		{
			type = "recipe",
			name = "chemical-science-pack-cubic",
			icons = { "", "icons/base/bridget.png" },
		},

		-- krastorio2
		{
			mods = { "Krastorio2", "Krastorio2-spaced-out" },
			priority = 1,
			type = { "tool", "recipe" },
			icon = "icons/krastorio2/floppy-bridget.png",
			pictures = krastorio2_pictures("floppy-bridget.png"),
		},
	},
	["production-science-pack"] = {
		{ icon = "base/heavyblade.png" },

		-- cubium
		{
			type = "recipe",
			name = "production-science-pack-cubic",
			icons = { "", "icons/base/heavyblade.png" },
		},

		-- krastorio2
		{
			mods = { "Krastorio2", "Krastorio2-spaced-out" },
			priority = 1,
			type = { "tool", "recipe" },
			icon = "icons/krastorio2/floppy-heavyblade.png",
			pictures = krastorio2_pictures("floppy-heavyblade.png"),
		},
		{
			mods = { "Krastorio2", "Krastorio2-spaced-out" },
			priority = 1,
			type = { "recipe" },
			name = "production-science-pack-cooling",
			icons = { "icons/krastorio2/floppy-heavyblade.png" },
		},
	},
	["utility-science-pack"] = {
		{ icon = "base/donqui.png" },

		-- cubium
		{
			type = "recipe",
			name = "utility-science-pack-cubic",
			icons = { "", "icons/base/donqui.png" },
		},

		-- krastorio2
		{
			mods = { "Krastorio2", "Krastorio2-spaced-out" },
			priority = 1,
			type = { "tool", "recipe" },
			icon = "icons/krastorio2/floppy-donqui.png",
			pictures = krastorio2_pictures("floppy-donqui.png"),
		},
		{
			mods = { "Krastorio2", "Krastorio2-spaced-out" },
			priority = 1,
			type = { "recipe" },
			name = "utility-science-pack-cooling",
			icons = { "icons/krastorio2/floppy-donqui.png" },
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
		{ icon = "base/girlmilk.png" },

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

		-- krastorio2
		{
			mods = { "Krastorio2", "Krastorio2-spaced-out" },
			priority = 1,
			type = { "tool", "recipe" },
			icon = "icons/krastorio2/floppy-girlmilk.png",
			pictures = krastorio2_pictures("floppy-girlmilk.png"),
		},
		{
			mods = { "Krastorio2", "Krastorio2-spaced-out" },
			priority = 1,
			type = { "recipe" },
			name = "space-science-pack-cooling",
			icons = { "icons/krastorio2/floppy-girlmilk.png" },
		},

		-- muluna
		{
			type = "technology",
			name = "advanced-space-science-pack",
			icons = { "technology/base/girlmilk.png" },
		},
	},

	-- space age
	["metallurgic-science-pack"] = {
		{ icon = "space-age/vulpix.png" },

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

		-- krastorio2 spaced out
		{
			mods = { "Krastorio2-spaced-out" },
			priority = 1,
			type = { "tool", "recipe" },
			icon = "icons/krastorio2/floppy-vulpix.png",
			pictures = krastorio2_pictures("floppy-vulpix.png"),
		},
		{
			mods = { "Krastorio2-spaced-out" },
			priority = 1,
			type = { "recipe" },
			name = "metallurgic-science-pack-cooling",
			icons = { "icons/krastorio2/floppy-vulpix.png" },
		},
	},
	["electromagnetic-science-pack"] = {
		{ icon = "space-age/niko.png" },

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

		-- krastorio2 spaced out
		{
			mods = { "Krastorio2-spaced-out" },
			priority = 1,
			type = { "tool", "recipe" },
			icon = "icons/krastorio2/floppy-niko.png",
			pictures = krastorio2_pictures("floppy-niko.png"),
		},
		{
			mods = { "Krastorio2-spaced-out" },
			priority = 1,
			type = { "recipe" },
			name = "electromagnetic-science-pack-cooling",
			icons = { "icons/krastorio2/floppy-niko.png" },
		},
	},
	["agricultural-science-pack"] = {
		{ icon = "space-age/bungus.png" },

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

		-- krastorio2 spaced out
		{
			mods = { "Krastorio2-spaced-out" },
			priority = 1,
			type = { "tool", "recipe" },
			icon = "icons/krastorio2/floppy-bungus.png",
			pictures = krastorio2_pictures("floppy-bungus.png"),
		},
		{
			mods = { "Krastorio2-spaced-out" },
			priority = 1,
			type = { "recipe" },
			name = "agricultural-science-pack-cooling",
			icons = { "icons/krastorio2/floppy-bungus.png" },
		},
	},
	["cryogenic-science-pack"] = {
		{ icon = "space-age/cirno.png" },

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

		-- krastorio2 spaced out
		{
			mods = { "Krastorio2-spaced-out" },
			priority = 1,
			type = { "tool", "recipe" },
			icon = "icons/krastorio2/floppy-cirno.png",
			pictures = krastorio2_pictures("floppy-cirno.png"),
		},
		{
			mods = { "Krastorio2-spaced-out" },
			priority = 1,
			type = { "recipe" },
			name = "cryogenic-science-pack-cooling",
			icons = { "icons/krastorio2/floppy-cirno.png" },
		},
	},
	["promethium-science-pack"] = {
		{ icon = "space-age/estradiol.png" },

		-- cubium
		{
			type = "recipe",
			name = "promethium-science-pack-cubic",
			icons = { "", "icons/space-age/estradiol.png" },
		},

		-- krastorio2 spaced out
		{
			mods = { "Krastorio2-spaced-out" },
			priority = 1,
			type = { "tool", "recipe" },
			icon = "icons/krastorio2/floppy-estradiol.png",
			pictures = krastorio2_pictures("floppy-estradiol.png"),
		},
		{
			mods = { "Krastorio2-spaced-out" },
			priority = 1,
			type = { "recipe" },
			name = "promethium-science-pack-cooling",
			icons = { "icons/krastorio2/floppy-estradiol.png" },
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
		{ icon = "mc-chicken.png" },

		-- cubium
		{
			type = "recipe",
			name = "electrochemical-science-pack-cubic",
			icons = { "", "icons/mc-chicken.png" },
		},
	},

	-- krastorio2 spaced out
	["kr-blank-tech-card"] = {
		{
			type = { "item", "recipe" },
			icon = "icons/krastorio2/floppy-blank.png",
			pictures = krastorio2_pictures("floppy-blank.png"),
		},
	},
	["kr-biter-research-data"] = {
		{
			type = { "item", "recipe" },
			icon = "icons/krastorio2/tape-gregor.png",
		},
	},
	["kr-space-research-data"] = {
		{
			type = { "item", "recipe" },
			icon = "icons/krastorio2/tape-girlmilk.png",
		},
	},
	["kr-metallurgic-research-data"] = {
		{
			type = { "item", "recipe" },
			icon = "icons/krastorio2/tape-fox.png",
		},
	},
	["kr-agricultural-research-data"] = {
		{
			type = { "item", "recipe" },
			icon = "icons/krastorio2/tape-healing-chest.png",
		},
	},
	["kr-electromagnetic-research-data"] = {
		{
			type = { "item", "recipe" },
			icon = "icons/krastorio2/tape-niko.png",
		},
	},
	["kr-cryogenic-research-data"] = {
		{
			type = { "item", "recipe" },
			icon = "icons/krastorio2/tape-cirno.png",
		},
	},
	["kr-promethium-research-data"] = {
		{
			type = { "item", "recipe" },
			icon = "icons/krastorio2/tape-estradiol.png",
		},
	},
	["kr-advanced-tech-card"] = {
		{
			type = { "tool", "recipe" },
			icon = "icons/krastorio2/floppy-jelly.png",
			pictures = krastorio2_pictures("floppy-jelly.png"),
		},
		{
			type = "technology",
			icon = "technology/krastorio2/floppy-jelly-straight.png",
		}
	},
	["kr-matter-research-data"] = {
		{
			type = { "item", "recipe" },
			icon = "icons/krastorio2/tape-fma.png",
		},
	},
	["kr-matter-tech-card"] = {
		{
			type = { "tool", "recipe" },
			icon = "icons/krastorio2/floppy-fma.png",
			pictures = krastorio2_pictures("floppy-fma.png"),
		},
		{
			type = "technology",
			icon = "technology/krastorio2/floppy-fma-straight.png",
		},
	},
	["kr-singularity-tech-card"] = {
		{
			type = { "tool", "recipe" },
			icon = "icons/krastorio2/floppy-end.png",
			pictures = krastorio2_pictures("floppy-end.png"),
		},
		{
			type = "technology",
			icon = "technology/krastorio2/floppy-end-straight.png",
		},
	},

	-- maraxys
	["hydraulic-science-pack"] = "vaporeon.png",

	-- metal and stars
	["nanite-science-pack"] = "metal-and-stars/argemia.png",
	["anomaly-science-pack"] = {
		{ icon = "metal-and-stars/amon.png" },
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
		{ icon = "rubia/poo.png" },
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
