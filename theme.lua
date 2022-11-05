---------------------------
-- Sark Awesome theme  --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.font = "Ubuntu 10"

-- Dark Gruvbox Colors {
theme.lightred    = "#fb4934"
theme.red         = "#cc241d"
theme.lightorange = "#fe8019"
theme.orange      = "#d65d0e"
theme.lightyellow = "#fabd2f"
theme.yellow      = "#d79921"
theme.lightgreen  = "#b8bb26"
theme.green       = "#98971a"
theme.lightaqua   = "#8ec07c"
theme.aqua        = "#689d6a"
theme.lightblue   = "#83a598"
theme.blue        = "#458588"
theme.lightpurple = "#d3869b"
theme.purple      = "#b16286"
theme.fg0         = "#fbf1c7"
theme.fg1         = "#ebdbb2"
theme.fg2         = "#d5c4a1"
theme.fg3         = "#bdae93"
theme.fg4         = "#a89984"
theme.gray        = "#928374"
theme.bg4         = "#7c6f64"
theme.bg3         = "#665c54"
theme.bg2         = "#504945"
theme.bg1         = "#32302f"
theme.bg0_s       = "#32302f"
theme.bg0         = "#282828"
theme.bg0_h       = "#1d2021"
-- End gruvbox colors }

-- Colors
theme.bg_normal  = theme.bg0_h
theme.bg_focus   = theme.bg1
theme.bg_urgent  = theme.bg0_h
theme.bg_systray = theme.bg0_h

theme.fg_normal  = theme.fg4
theme.fg_focus   = theme.fg1
theme.fg_urgent  = theme.lightorange

--  Borders
theme.useless_gap       = dpi(7)
theme.gap_single_client = true
theme.border_width      = dpi(3)
theme.border_normal     = theme.bg2
theme.border_focus      = theme.bg4
theme.border_marked     = theme.lightpurple

-- Titlebars
theme.titlebar_bg_focus  = theme.bg0_s
theme.titlebar_fg_focus  = theme.bg0_s
theme.titlebar_fg_normal = theme.bg0_s
theme.titlebar_bg_normal = theme.bg0_s

-- Taglist
theme.taglist_fg_empty    = theme.fg4
theme.taglist_fg_occupied = theme.fg0
theme.taglist_fg_focus    = theme.bg0
theme.taglist_fg_urgent   = theme.bg0
theme.taglist_fg_volatile = theme.bg0
theme.taglist_bg_focus    = theme.lightaqua
theme.taglist_bg_urgent   = theme.lightorange
theme.taglist_bg_occupied = theme.bg1
theme.taglist_bg_volatile = theme.lightpurple
theme.taglist_bg_empty    = theme.bg1
theme.taglist_bg_hover    = theme.bg2
theme.taglist_font        = theme.font

-- Menu
theme.menu_height       = dpi(16)
theme.menu_width        = dpi(140)
theme.menu_border_width = dpi(3)
theme.menu_fg_normal    = theme.fg1
theme.menu_bg_focus     = theme.bg2
theme.menu_border_color = theme.bg0_h

-- Menu of clients
theme.clientsmenu_width        = dpi(640)
theme.clientsmenu_border_color = theme.bg4

-- hotkeys popup
theme.hotkeys_border_color = theme.bg4

-- Menubar
theme.menubar_border_width = theme.border_width

-- Notifications
theme.notification_opacity = 0.75

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

theme.menu_submenu_icon = themes_path.."default/submenu.png"

theme.titlebar_close_button_normal = themes_path.."default/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path..
   "default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path..
   "default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path..
   "default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path..
   "default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path..
   "default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path..
   "default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path..
   "default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path..
   "default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path..
   "default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path..
   "default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path..
   "default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path..
   "default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path..
   "default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path..
   "default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path..
   "default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path..
   "default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path..
   "default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path..
   "default/titlebar/maximized_focus_active.png"

theme.wallpaper = "/home/ai/pic/gruvbox.png"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."default/layouts/fairhw.png"
theme.layout_fairv = themes_path.."default/layouts/fairvw.png"
theme.layout_floating  = themes_path.."default/layouts/floatingw.png"
theme.layout_magnifier = themes_path.."default/layouts/magnifierw.png"
theme.layout_max = themes_path.."default/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."default/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."default/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."default/layouts/tileleftw.png"
theme.layout_tile = themes_path.."default/layouts/tilew.png"
theme.layout_tiletop = themes_path.."default/layouts/tiletopw.png"
theme.layout_spiral  = themes_path.."default/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."default/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."default/layouts/cornernww.png"
theme.layout_cornerne = themes_path.."default/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."default/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."default/layouts/cornersew.png"

-- Generate Awesome icon:
awesome.set_preferred_icon_size(32) 
theme.awesome_icon = "/home/ai/.config/awesome/themes/sark/awesome32.png"
theme.icon_theme = nil
return theme
