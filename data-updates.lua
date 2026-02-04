-- always override base/space age sciences
-- fighting Krastorio2 et al. for modifications to the base sciences :|
if mods["base"] then
	require("lib.icon-manipulation").apply_icon({ "tool" }, nil, {
		"automation-science-pack",
		"logistic-science-pack",
		"military-science-pack",
		"chemical-science-pack",
		"production-science-pack",
		"utility-science-pack",
		"space-science-pack",
	})
end
if mods["space-age"] then
	require("lib.icon-manipulation").apply_icon({ "tool" }, nil, {
		"metallurgic-science-pack",
		"electromagnetic-science-pack",
		"agricultural-science-pack",
		"cryogenic-science-pack",
		"promethium-science-pack",
	})
end
