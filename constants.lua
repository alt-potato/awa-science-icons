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
	["automation-science-pack"] = "autism.png",
	["logistic-science-pack"] = "glorp.png",
	["military-science-pack"] = "miku-pipe.png",
	["chemical-science-pack"] = "bridget.png",
	["production-science-pack"] = "heavyblade.png",
	["utility-science-pack"] = {
		{ type = "default", icon = "donqui.png" },

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
			type = "recipe",
			name = "space-science-pack-muluna",
			icon = "icons/girlmilk.png",
		},
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
	["metallurgic-science-pack"] = "vulpix.png",
	["electromagnetic-science-pack"] = "niko.png",
	["agricultural-science-pack"] = "bungus.png",
	["cryogenic-science-pack"] = "cirno.png",
	["promethium-science-pack"] = {
		{ type = "default", icon = "estradiol.png" },

		-- rubia
		{
			type = "recipe",
			name = "rubia-biofusion-promethium-science-pack",
			icons = { "icons/estradiol.png" },
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
			name = "interstellar-science-pack",
			icon = "technology/zulu.png",
		},
	},

	-- shattered planet
	["ske_hea_science_pack"] = "cherry-wellcheers.png",
	["ske_hec_science_pack"] = "blue-wellcheers.png",
	["ske_hef_science_pack"] = "grape-wellcheers.png",
	["ske_heu_science_pack"] = "strawberry-wellcheers.png",
	["ske_hep_science_pack"] = "regular-wellcheers.png",
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
		{ type = { "tool", "recipe" }, icon = "icon/bj-cotton-candy.png" },
		{ type = "technology", icon = "technology/bj-cotton-candy.png" },
	},

	-- void processing
	["voidp-void-science-pack"] = "progesterone.png",

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
		{ type = "default", icon = "borgar.png" },
	},
	["rubia-biofusion-science-pack"] = {
		{ type = "default", icon = "poo.png" },
		{
			type = "technology",
			name = "rubia-biofusion-science-pack",
			icon = "technology/poo.png",
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
