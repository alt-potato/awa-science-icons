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

---@class Sprite
---@field layers Sprite[]? -- i love recursion wahoo
---@field filename string?
---@field size number?
---@field scale number?
---@field draw_as_shadow boolean?
---@field draw_as_glow boolean?
---@field draw_as_light boolean?
---@field occludes_light boolean?

---@class IconOverrideEntry
---@field type IconOverrideType|IconOverrideType[]? -- Type of prototype to override, defaults to constants.default_options
---@field name string? -- Name of the entity to override, if different from the key in science_overrides
---@field icon string? -- Path to a single icon graphic (eg., "icons/icon.png")
---@field icons (string|IconData)[]? -- Array of paths to icon graphics for layered icons (or empty string to preserve old icons)
---@field icon_size number? -- Optional icon size, overrides default for icon (e.g., 64)
---@field pictures Sprite[]?
---@field use_prefixes boolean? -- Whether to extrapolate image path from type_val and given base
---@field priority number? -- Priority of the override, defaults to 0 (bigger is higher priority)
local default_data = {
	["tool"] = { graphics_path = "icons/", icon_size = 64 },
	["item"] = { graphics_path = "icons/", icon_size = 64 },
	["recipe"] = { graphics_path = "icons/", icon_size = 64 },
	["technology"] = { graphics_path = "technology/", icon_size = 256 },
}

---Overwrite the icons for a specific key in the target.
---@param key string
---@param override_type IconOverrideType
---@param override IconOverrideEntry
lib.overwrite_icons = function(key, override_type, override)
	local default = default_data[override_type]
	local target = data.raw[override_type]
	key = override.name or key

	local graphics_path = constants.graphics_path
	if override.use_prefixes then
		graphics_path = graphics_path .. default.graphics_path
	end

	if not target[key] then
		log(override_type .. '["' .. key .. '"] does not exist.')
		return
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

			-- overwrite with new icons
			for i, icon in pairs(override.icons) do
				-- shorthand
				if type(icon) == "string" then
					icon = { icon = icon } ---@type IconData
				end

				-- skip if empty (preserves old icons)
				if override.icons[i] and override.icons[i] ~= "" then
					target[key].icons[i].icon = graphics_path .. icon.icon
					target[key].icons[i].icon_size = icon.icon_size or override.icon_size or default.icon_size
					target[key].icons[i].tint = icon.tint
					target[key].icons[i].shift = icon.shift
					target[key].icons[i].scale = icon.scale
					target[key].icons[i].draw_background = icon.draw_background
					target[key].icons[i].floating = icon.floating
				end
			end
		end
	elseif override.icon then
		assert(type(override.icon) == "string")

		-- single icon
		target[key].icon = graphics_path .. override.icon
		target[key].icon_size = override.icon_size or default.icon_size
	else
		log("WARNING: No icons found for override " .. key .. "[" .. target .. "].")
	end

	if override.pictures then
		-- i'm gonna be real honest with you ok i do not have the mental fortitude to make a parser for this
		target[key].pictures = override.pictures
	end
end

--- Applies an icon override to the specified science pack(s)
--- Overengineered? I 'ardly know 'er!
--- @param types_to_override IconOverrideType|IconOverrideType[]
--- @param overrides? table<string, string|IconOverrideEntry[]>
lib.apply_icon = function(types_to_override, overrides)
	if type(types_to_override) == "string" then
		types_to_override = { types_to_override } ---@type IconOverrideType[] -- trust me bro
	end

	if not overrides then
		overrides = constants.science_overrides
	end

	---@type table<integer, {key: string, type_val: IconOverrideType, override: IconOverrideEntry}[]>
	local delayed = {}

	-- for each specified prototype in override table...
	for key, prototype in pairs(overrides) do
		-- if shorthand, set to default with extrapolated icons
		if type(prototype) == "string" then
			prototype = { { type = constants.default_options, icon = prototype, use_prefixes = true } } ---@type IconOverrideEntry[]
		end
		assert(type(prototype) == "table")

		-- for each override specified for this prototype...
		for _, override in ipairs(prototype) do
			-- if no type specified, use default
			local override_types = override.type or constants.default_options
			if not override.type then
				override.use_prefixes = true
			end

			-- normalize override.type to always be an array
			if type(override_types) == "string" then
				override_types = { override_types } ---@type IconOverrideType[]
			end

			-- mark which types should be overridden
			local enable_map = {} ---@type table<IconOverrideType, number>
			for _, type_val in pairs(types_to_override) do
				enable_map[type_val] = 1
			end

			for _, type_val in pairs(override_types) do
				assert(type(type_val) == "string")
				-- only set if specified in types_to_override
				if enable_map[type_val] == 1 then
					if override.priority then
						if not delayed[override.priority] then
							delayed[override.priority] = {}
						end
						table.insert(
							delayed[override.priority],
							{ key = key, type_val = type_val, override = override }
						)
					else
						enable_map[type_val] = 2
					end
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

	-- execute delayed
	for _, priority_overrides in pairs(delayed) do
		for _, override in pairs(priority_overrides) do
			lib.overwrite_icons(override.key, override.type_val, override.override)
		end
	end
end

return lib
