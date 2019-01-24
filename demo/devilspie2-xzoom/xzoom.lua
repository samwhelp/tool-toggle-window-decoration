
-- https://www.justingedge.com/linux/devilspie2-automatic-window-placement/

-- xzoom rule to undecorate all existing and new windows


-- for [$ xzoom]
-- for [$ xzoom -mag 2]
if (get_application_name() == "xzoom x2") then
	undecorate_window()
end


-- File: [/usr/share/applications/xzoom.desktop]
-- Content: [Exec=xzoom -mag 3 -geometry 320x240]
-- for [$ xzoom -mag 3]
if (get_application_name() == "xzoom x3") then
	undecorate_window()
end


-- for [$ xzoom -mag 4]
if (get_application_name() == "xzoom x4") then
	undecorate_window()
end


-- for [$ xzoom -mag 5]
if (get_application_name() == "xzoom x5") then
	undecorate_window()
end


-- for [$ xzoom -mag 10]
if (get_application_name() == "xzoom x10") then
	undecorate_window()
end
