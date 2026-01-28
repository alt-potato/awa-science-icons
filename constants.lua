local constants = {}

constants.mod_name = "awa-science-icons"

---@alias IconOverrideType "tool"|"item"|"recipe"|"technology"|"default"

---@class ScienceIconOverrideEntry
---@field type IconOverrideType | IconOverrideType[] -- Type of game entity to override
---@field name string? -- Name of the entity to override, if different from the key in science_overrides
---@field icon string? -- Path to a single icon graphic (eg., "icons/icon.png")
---@field icons string[]? -- Array of paths to icon graphics for layered icons (or empty string to preserve old icons)
---@field icon_size number? -- Optional icon size, overrides default for icon (e.g., 64)

-- is this the best way to do this? no. does it work? probably.
--
-- default action:
--   searches for a matching tool, recipe, and technology to replace
--   assumes 256x256 icons in /technology for technology and 64x64 icons in /icons for everything else
---@type table<string, string|ScienceIconOverrideEntry[]>
constants.science_overrides = {
	-- base
	["automation-science-pack"] = {
		{ type = "default", icon = "autism.png" },

		-- cubium
		{
			type = "recipe",
			name = "automation-science-pack-cubic",
			icons = { "", "icons/autism.png" },
		},
	},
	["logistic-science-pack"] = {
		{ type = "default", icon = "glorp.png" },

		-- cubium
		{
			type = "recipe",
			name = "logistic-science-pack-cubic",
			icons = { "", "icons/glorp.png" },
		},
	},
	["military-science-pack"] = {
		{ type = "default", icon = "miku-pipe.png" },

		-- cubium
		{
			type = "recipe",
			name = "military-science-pack-cubic",
			icons = { "", "icons/miku-pipe.png" },
		},
	},
	["chemical-science-pack"] = {
		{ type = "default", icon = "bridget.png" },

		-- cubium
		{
			type = "recipe",
			name = "chemical-science-pack-cubic",
			icons = { "", "icons/bridget.png" },
		},
	},
	["production-science-pack"] = {
		{ type = "default", icon = "heavyblade.png" },

		-- cubium
		{
			type = "recipe",
			name = "production-science-pack-cubic",
			icons = { "", "icons/heavyblade.png" },
		},
	},
	["utility-science-pack"] = {
		{ type = "default", icon = "donqui.png" },

		-- cubium
		{
			type = "recipe",
			name = "utility-science-pack-cubic",
			icons = { "", "icons/donqui.png" },
		},

		-- rubia
		{
			type = "recipe",
			name = "rubia-bio-utility-science-pack",
			icon = "icons/donqui-sprout.png",
		},
		{
			type = "technology",
			name = "rubia-bio-utility-science-pack",
			icon = "technology/donqui-sprout.png",
		},
	},
	["space-science-pack"] = {
		{ type = "default", icon = "girlmilk.png" },

		-- muluna
		{
			type = "technology",
			name = "advanced-space-science-pack",
			icons = { "technology/girlmilk.png" },
		},

		-- cerys
		{
			type = "recipe",
			name = "cerys-space-science-pack-from-methane-ice",
			icons = { "icons/girlmilk.png" },
		},
		{
			type = "technology",
			name = "cerys-space-science-pack-from-methane-ice",
			icon = "technology/methane-girlmilk.png",
		},
	},

	-- space age
	["metallurgic-science-pack"] = {
		{ type = "default", icon = "vulpix.png" },

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
			icons = { "", "icons/vulpix.png" },
		},
	},
	["electromagnetic-science-pack"] = {
		{ type = "default", icon = "niko.png" },

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
			icons = { "", "icons/niko.png" },
		},
	},
	["agricultural-science-pack"] = {
		{ type = "default", icon = "bungus.png" },

		-- age of production
		{
			type = "recipe",
			name = "aop-hybridation-specialized-agricultural-science-pack",
			icon = "icons/wungus.png",
		},

		-- cubium
		{
			type = "recipe",
			name = "agricultural-science-pack-cubic",
			icons = { "", "icons/bungus.png" },
		},
	},
	["cryogenic-science-pack"] = {
		{ type = "default", icon = "cirno.png" },

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
			icons = { "", "icons/cirno.png" },
		},
	},
	["promethium-science-pack"] = {
		{ type = "default", icon = "estradiol.png" },

		-- cubium
		{
			type = "recipe",
			name = "promethium-science-pack-cubic",
			icons = { "", "icons/estradiol.png" },
		},

		-- rubia
		{
			type = "recipe",
			name = "rubia-biofusion-promethium-science-pack",
			icons = { "icons/estradiol.png" },
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
	["electrochemical-science-pack"] = "mc-chicken.png",

	-- maraxys
	["hydraulic-science-pack"] = "vaporeon.png",

	-- metal and stars
	["nanite-science-pack"] = "argemia.png",
	["anomaly-science-pack"] = {
		{ type = "default", icon = "amon.png" },
		{
			type = "recipe",
			name = "catalyzed-anomaly-science-pack",
			icon = "recipes/amon-antimatter.png",
		},
	},
	["inert-quantum-science-pack"] = {
		{ type = "item", icon = "icons/kanade-inert.png" },
		{ type = "recipe", name = "inert-science-pack-salvage", icons = { "", "icons/kanade-inert.png" } },
	},
	["unstable-quantum-science-pack"] = {
		{ type = "item", icon = "icons/mizuki-unstable.png" },
	},
	["volatile-quantum-science-pack"] = {
		{ type = { "item", "recipe" }, icon = "icons/mafuyu-volatile.png" },
	},
	["quantum-science-pack"] = "wonderhoy.png",
	["ring-science-pack"] = "funyun.png",

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
		{ type = { "tool", "recipe" }, icon = "icons/dirt-jar.png" },
		{
			type = "technology",
			icon = "technology/py-dirt-jar.png",
		},
	},
	["py-science-pack-2"] = {
		{ type = { "tool", "recipe" }, icon = "icons/choccy-milk.png" },
		{
			type = "technology",
			icon = "technology/py-choccy-milk.png",
		},
	},
	["py-science-pack-3"] = {
		{ type = { "tool", "recipe" }, icon = "icons/gougar.png" },
		{
			type = "technology",
			icon = "technology/py-gougar.png",
		},
	},
	["py-science-pack-4"] = {
		{ type = { "tool", "recipe" }, icon = "icons/breadto.png" },
		{
			type = "technology",
			icon = "technology/py-breadto.png",
		},
	},

	-- rubia
	["makeshift-biorecycling-science-pack"] = {
		{
			type = { "item", "recipe" },
			icon = "icons/meat.png",
		},
		{
			type = "technology",
			name = "rubia-progression-stage1B",
			icon = "technology/meat.png",
		},
	},
	["ghetto-biorecycling-science-pack"] = {
		{
			type = { "item", "recipe" },
			name = "ghetto-biorecycling-science-pack",
			icon = "icons/patty.png",
		},
		{
			type = "technology",
			name = "rubia-progression-stage2",
			icon = "technology/patty.png",
		},
	},
	["biorecycling-science-pack"] = {
		{ type = { "tool", "recipe" }, icon = "icons/borgar.png" },
	},
	["rubia-biofusion-science-pack"] = {
		{ type = "default", icon = "poo.png" },
		{
			type = "technology",
			name = "rubia-biofusion-science-pack",
			icon = "technology/poo.png",
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
	["ske_hea_science_pack"] = { { type = { "tool", "recipe" }, icon = "icons/cherry-wellcheers.png" } },
	["ske_hec_science_pack"] = { { type = { "tool", "recipe" }, icon = "icons/blue-wellcheers.png" } },
	["ske_hef_science_pack"] = { { type = { "tool", "recipe" }, icon = "icons/grape-wellcheers.png" } },
	["ske_heu_science_pack"] = { { type = { "tool", "recipe" }, icon = "icons/strawberry-wellcheers.png" } },
	["ske_hep_science_pack"] = { { type = { "tool", "recipe" }, icon = "icons/regular-wellcheers.png" } },
	["ske_antimatter_cell"] = {
		{ type = "tool", icon = "icons/antimatter-fuel.png" },
		{ type = "recipe", icon = "icons/antimatter-fuel.png" },
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
		{ type = { "tool", "recipe" }, icon = "icons/skyblock.png" },
		{
			type = "recipe",
			name = "s6xvc-void-science-pack",
			icons = { "icons/skyblock.png" },
		},
		{
			type = "technology",
			name = "s6x-void-science-pack",
			icon = "technology/skyblock.png",
		},
		{
			type = "technology",
			name = "s6x-void-science-pack-vc",
			icon = "technology/skyblock-vc.png",
		},
	},
	["esoteric-science-pack"] = {
		{ type = { "tool", "recipe" }, icon = "icons/coobie.png" },
		{
			type = "recipe",
			name = "s6xvc-esoteric-science-pack",
			icons = { "icons/coobie.png" },
		},
		{
			type = "technology",
			name = "s6x-esoteric-science-pack",
			icon = "technology/coobie.png",
		},
		{
			type = "technology",
			name = "s6x-esoteric-science-pack-vc",
			icon = "technology/coobie-vc.png",
		},
	},
	["celestial-science-pack"] = {
		{ type = { "tool", "recipe" }, icon = "icons/marisa.png" },
		{
			type = "recipe",
			name = "s6xvc-celestial-science-pack",
			icons = { "icons/marisa.png" },
		},
		{
			type = "technology",
			name = "s6x-celestial-science-pack",
			icon = "technology/marisa.png",
		},
		{
			type = "technology",
			name = "s6x-celestial-science-pack-vc",
			icon = "technology/marisa-vc.png",
		},
	},
}

--- @type IconOverrideType[]
constants.default_options = { "tool", "recipe", "technology" }

local default_data = {
	["tool"] = { target = data.raw.tool, graphics_path = "icons/", icon_size = 64 },
	["item"] = { target = data.raw.item, graphics_path = "icons/", icon_size = 64 },
	["recipe"] = { target = data.raw.recipe, graphics_path = "icons/", icon_size = 64 },
	["technology"] = { target = data.raw.technology, graphics_path = "technology/", icon_size = 256 },
}

-- Overwrite the icons for a specific key in the target.
---@param key string
---@param override_type IconOverrideType
---@param override ScienceIconOverrideEntry
---@param extrapolate_icons boolean
constants.overwrite_icons = function(key, override_type, override, extrapolate_icons)
	local default = default_data[override_type]
	local target = default.target
	key = override.name or key

	local graphics_path = "__" .. constants.mod_name .. "__/graphics/"
	if extrapolate_icons then
		graphics_path = graphics_path .. default.graphics_path
	end

	if target[key] then
		if override.icons then
			-- icons array (multiple icons overlaid on each other)
			for i, icon in ipairs(override.icons) do
				-- skip if empty (preserves old icons)
				if override.icons[i] and override.icons[i] ~= "" then
					target[key].icons[i].icon = graphics_path .. icon
					target[key].icons[i].icon_size = override.icon_size or default.icon_size
				end
			end
		elseif override.icon then
			-- single icon
			target[key].icon = graphics_path .. override.icon
			target[key].icon_size = override.icon_size or default.icon_size
		else
			log("No icons found for override " .. key .. " (" .. target .. ").")
		end
	else
		log("Key " .. key .. " for target " .. override_type .. " does not exist.")
	end
end

--- Applies an icon override to the
--- Overengineered? I 'ardly know 'er!
--- @param opt string|string[]
--- @param overrides table|nil
constants.apply_icon = function(opt, overrides)
	if type(opt) == "string" then
		opt = { opt }
	end

	if not overrides then
		overrides = constants.science_overrides
	end

	-- for each specified science pack...
	for key, science in pairs(overrides) do
		-- process shorthand as default with icon
		if type(science) == "string" then
			science = { { type = "default", icon = science } } ---@type ScienceIconOverrideEntry[]
		end
		assert(type(science) == "table")

		-- for each override specified for this science pack...
		for i, override in ipairs(science) do ---@type ScienceIconOverrideEntry
			assert(override.type, "Override for " .. key .. "(" .. i .. ") is missing type!")

			-- convert shorthand to array
			local enable_map = {} ---@type table<IconOverrideType, number>
			if type(override.type) == "string" then ---@type IconOverrideType
				override.type = { override.type } -- you're killing me here lua
			end

			for _, type_val in pairs(override.type) do
				if type_val == "default" then
					for _, default_type in ipairs(constants.default_options) do
						enable_map[default_type] = 2
					end
				else
					assert(type(type_val) == "string")
					enable_map[type_val] = 1
				end
			end

			assert(type(enable_map) == "table")
			for type_val, enabled in pairs(enable_map) do
				if enabled == 2 then
					-- extrapolate image path from type_val and given base
					constants.overwrite_icons(key, type_val, override, true)
				elseif enabled > 0 then
					constants.overwrite_icons(key, type_val, override)
				end
			end
		end
	end
end

return constants
