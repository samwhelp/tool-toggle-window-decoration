
-- https://www.justingedge.com/linux/devilspie2-automatic-window-placement/

-- kmag rule to undecorate all existing and new windows

if (get_application_name() == "KMagnifier") then
	undecorate_window()
end
