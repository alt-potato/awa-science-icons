local constants = require("lib.constants")

local lib = {}

---@alias IconOverrideType "tool"|"item"|"recipe"|"technology"

---@class Color
---@field r number
---@field g number
---@field b number
---@field a number

---@class Vector
---@field x number
---@field y number

---@class IconData
---@field icon string -- Path to the icon graphic
---@field icon_size number?
---@field tint Color?
---@field shift Vector?
---@field scale number?
---@field draw_background boolean?
---@field floating boolean?

---@class IconOverrideEntry
---@field type IconOverrideType[] -- Type of prototype to override
---@field name string? -- Name of the entity to override, if different from the key in science_overrides
---@field icon string? -- Path to a single icon graphic (eg., "icons/icon.png")
---@field icons IconData[]? -- Array of paths to icon graphics for layered icons (or empty string to preserve old icons)
---@field icon_size number? -- Optional icon size, overrides default for icon (e.g., 64)
---@field use_prefixes boolean? -- Whether to extrapolate image path from type_val and given base

local default_data = {
	["tool"] = { target = data.raw.tool, graphics_path = "icons/", icon_size = 64 },
	["item"] = { target = data.raw.item, graphics_path = "icons/", icon_size = 64 },
	["recipe"] = { target = data.raw.recipe, graphics_path = "icons/", icon_size = 64 },
	["technology"] = { target = data.raw.technology, graphics_path = "technology/", icon_size = 256 },
}

---Overwrite the icons for a specific key in the target.
---@param key string
---@param override_type IconOverrideType
---@param override IconOverrideEntry
lib.overwrite_icons = function(key, override_type, override)
	local default = default_data[override_type]
	local target = default.target
	key = override.name or key

	local graphics_path = constants.graphics_path
	if override.use_prefixes then
		graphics_path = graphics_path .. default.graphics_path
	end

	if not target[key] then
		log("Key " .. key .. " for target " .. override_type .. " does not exist.")
	end

	if override.icons then
		-- icons array (multiple icons overlaid on each other)
		if not target[key].icons then
			-- create if does not exist
			target[key].icons = {}

			-- copy old icon over (icons takes priority over icon)
			if target.icon then
				table.insert(target[key].icons, { icon = target.icon })
			end
		end

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
		log("WARNING: No icons found for override " .. key .. "[" .. target .. "].")
	end
end

--- Applies an icon override to the specified science pack(s)
--- Overengineered? I 'ardly know 'er!
--- @param types_to_override IconOverrideType|IconOverrideType[] -- unused?
--- @param overrides table?
lib.apply_icon = function(types_to_override, overrides)
	if type(types_to_override) == "string" then
		types_to_override = { types_to_override } ---@type IconOverrideType[] -- trust me bro
	end

	if not overrides then
		overrides = constants.science_overrides
	end

	-- for each specified prototype in override table...
	for key, prototype in pairs(overrides) do
		-- if shorthand, set to default with extrapolated icon
		if type(prototype) == "string" then
			prototype = { { type = constants.default_options, icon = prototype, use_prefixes = true } } ---@type IconOverrideEntry[]
		end
		assert(type(prototype) == "table")

		-- for each override specified for this prototype...
		for i, override in ipairs(prototype) do
			assert(override.type, "Override for " .. key .. "(" .. i .. ") is missing type!")

			local enable_map = {} ---@type table<IconOverrideType, number>

			-- mark which types should be overridden
			for _, type_val in pairs(types_to_override) do
				enable_map[type_val] = 1
			end

			for _, type_val in pairs(override.type) do
				assert(type(type_val) == "string")
				-- only set if specified in types_to_override
				if enable_map[type_val] == 1 then
					enable_map[type_val] = 2
				end
			end

			assert(type(enable_map) == "table")
			for type_val, enabled in pairs(enable_map) do
				if enabled == 2 then
					lib.overwrite_icons(key, type_val, override)
				end
			end
		end
	end
end

return lib
