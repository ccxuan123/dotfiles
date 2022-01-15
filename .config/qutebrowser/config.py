#####################################################################
# qutebrowser config
#####################################################################
# load settings added with ui
# see <https://github.com/qutebrowser/qutebrowser/blob/master/doc/help/configuring.asciidoc#loading-autoconfigyml>
# to se all configuration type :set inside qutebrowser.

config.load_autoconfig()

# Enable dark mode
c.colors.webpage.preferred_color_scheme = "dark"

# Enable Brave browser adblocker
# Require `python-adblock` package
c.content.blocking.method = 'adblock'
c.content.blocking.adblock.lists = [
    "https://easylist.to/easylist/easylist.txt",
    "https://easylist.to/easylist/easyprivacy.txt",
    "https://easylist.to/easylist/fanboy-social.txt",
    "https://secure.fanboy.co.nz/fanboy-annoyance.txt",
    "https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt",
    #"https://gitlab.com/curben/urlhaus-filter/-/raw/master/urlhaus-filter.txt",
    "https://pgl.yoyo.org/adservers/serverlist.php?showintro=0;hostformat=hosts",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/legacy.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2020.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2021.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badware.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badlists.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/resource-abuse.txt",
    "https://www.i-dont-care-about-cookies.eu/abp/",
    "https://secure.fanboy.co.nz/fanboy-cookiemonster.txt",
    "https://github.com/uBlockOrigin/uAssets/raw/master/filters/unbreak.txt"
]

c.scrolling.smooth = True
c.qt.highdpi = True

# search engines
c.url.searchengines = {
        "DEFAULT": "https://duckduckgo.com/?q={}",
        "aw": "https://wiki.archlinux.org/?search={}",
        "gw": "https://wiki.gentoo.org/?search-{}",
        "yt": "https://youtube.com/results?search_query={}",
        "w": "https://en.wikipedia.org/?search={}",
        "g": "https://www.google.fi/search?q={}",
        "ddg": "https://duckduckgo.com/?q=!ddgi {}",
        "tw": "twitter.com/{}",
        "dick": "http://en.wiktionary.org/?search={}",
        "r": "https://reddit.com/r/{}",
        "gh": "https://github.com/search?q={}"
}

#####################################################################
# Key mappings 
#####################################################################
# Play youtube external on mpv with youtube-dl
config.bind(',m', 'spawn mpv {url}')
config.bind(',M', 'hint links spawn mpv {hint-url}')

#####################################################################
# Gruvbox Colour Scheme
#####################################################################
bg = "#1d2021"
fg = "#ebdbb2"
base01 = "#1d2021" # black
base02 = "#cc241d" # red
base03 = "#98971a" # green
base04 = "#d79921" # yellow
base05 = "#458588" # blue
base06 = "#b16286" # magenta
base07 = "#689d6a" # cyan
base08 = "#a89984" # white
base09 = "#928374" # black
base10 = "#fb4934" # red
base11 = "#b8bb26" # green
base12 = "#fabd2f" # yellow
base13 = "#83a598" # blue
base14 = "#d3869b" # magenta
base15 = "#8ec07c" # cyan
base16 = "#ebdbb2" # white

# context menu
c.colors.contextmenu.menu.bg = bg
c.colors.contextmenu.menu.fg = fg
c.colors.contextmenu.selected.bg = base05
c.colors.contextmenu.selected.fg = bg

# completion
c.colors.completion.category.bg = base01                   # background color of the completion widget category headers
c.colors.completion.category.border.bottom = base01        # bottom border color of the completion widget category headers
c.colors.completion.category.border.top = base01           # top border color of the completion widget category headers
c.colors.completion.category.fg = fg                       # foreground color of completion widget category headers
c.colors.completion.even.bg = bg                           # background color of the completion widget for even rows
c.colors.completion.odd.bg = bg                            # background color of the completion widget for odd rows
c.colors.completion.fg = fg                                # text color of the completion widget
c.colors.completion.item.selected.bg = base05              # background color of the selected completion item
c.colors.completion.item.selected.border.bottom = base09   # bottom border color of the selected completion item
c.colors.completion.item.selected.border.top = base09      # top border color of the completion widget category headers
c.colors.completion.item.selected.fg = base01              # foreground color of the selected completion item
c.colors.completion.match.fg = base11                      # foreground color of the matched text in the completion
c.colors.completion.scrollbar.bg = base01                  # color of the scrollbar in completion view
c.colors.completion.scrollbar.fg = base09                  # color of the scrollbar handle in completion view

# downloads
c.colors.downloads.bar.bg = bg                             # background color for the download bar
c.colors.downloads.start.bg = bg                           # background color for active download bar
c.colors.downloads.start.fg = base04                       # foreground color for active download bar
c.colors.downloads.error.bg = base02                       # background color for downloads with errors
c.colors.downloads.error.fg = base01                       # foreground color for downloads with errors
c.colors.downloads.stop.bg = bg                            # color gradient stop for download backgrounds
c.colors.downloads.stop.fg = base11                        # color gradient stop for download foregrounds
c.colors.downloads.system.bg = 'none'                      # color gradient interpolation system for download backgrounds

# hints
c.colors.hints.bg = bg                                     # background color for hints. use rgba value for transparency
c.colors.hints.fg = fg                                     # font color for hints
c.hints.border = '1px solid ' + base01                     # hints
c.colors.hints.match.fg = base11                           # font color for the matched part of hints
c.colors.keyhint.bg = bg                                   # background color of the keyhint widget
c.colors.keyhint.fg = fg                                   # text color for the keyhint widget
c.colors.keyhint.suffix.fg = fg                            # highlight color for keys to complete the current keychain

# info and error messages
c.colors.messages.error.bg = base02                        # background color of an error message
c.colors.messages.error.border = base10                    # border color of an error message
c.colors.messages.error.fg = base16                        # foreground color of an error message
c.colors.messages.info.bg = base01                         # background color of an info message
c.colors.messages.info.border = base01                     # border color of an info message
c.colors.messages.info.fg = base16                         # foreground color an info message
c.colors.messages.warning.bg = base06                      # background color of a warning message
c.colors.messages.warning.border = base12                  # border color of a warning message
c.colors.messages.warning.fg = base16                      # foreground color a warning message

# prompt
c.colors.prompts.bg = base09                               # background color for prompts
c.colors.prompts.border = '1px solid ' + base01            # border used around UI elements in prompts
c.colors.prompts.fg = fg                                   # foreground color for prompts
c.colors.prompts.selected.bg = bg                          # background color for the selected item in filename prompts

# caret
c.colors.statusbar.caret.bg = bg                           # background color of the statusbar in caret mode
c.colors.statusbar.caret.fg = fg                           # foreground color of the statusbar in caret mode
c.colors.statusbar.caret.selection.bg = bg                 # background color of the statusbar in caret mode with a selection
c.colors.statusbar.caret.selection.fg = fg                 # foreground color of the statusbar in caret mode with a selection

# statusbar
c.colors.statusbar.command.bg = base01                     # background color of the statusbar in command mode
c.colors.statusbar.command.fg = fg                         # foreground color of the statusbar in command mode
c.colors.statusbar.command.private.bg = bg                 # background color of the statusbar in private browsing + command mode
c.colors.statusbar.command.private.fg = fg                 # foreground color of the statusbar in private browsing + command mode
c.colors.statusbar.insert.bg = base11                      # background color of the statusbar in insert mode
c.colors.statusbar.insert.fg = bg                          # foreground color of the statusbar in insert mode
c.colors.statusbar.normal.bg = bg                          # background color of the statusbar
c.colors.statusbar.normal.fg = fg                          # foreground color of the statusbar
c.colors.statusbar.passthrough.bg = base05                 # background color of the statusbar in passthrough mode
c.colors.statusbar.passthrough.fg = base16                 # foreground color of the statusbar in passthrough mode
c.colors.statusbar.private.bg = bg                         # background color of the statusbar in private browsing mode
c.colors.statusbar.private.fg = fg                         # foreground color of the statusbar in private browsing mode
c.colors.statusbar.progress.bg = base16                    # background color of the progress bar
c.colors.statusbar.url.error.fg = base06                   # foreground color of the URL in the statusbar on error
c.colors.statusbar.url.fg = base16                         # default foreground color of the URL in the statusbar
c.colors.statusbar.url.hover.fg = base09                   # foreground color of the URL in the statusbar for hovered links
c.colors.statusbar.url.success.http.fg = base11            # foreground color of the URL in the statusbar on successful load
c.colors.statusbar.url.success.https.fg = base11           # foreground color of the URL in the statusbar on successful load
c.colors.statusbar.url.warn.fg = base04                    # foreground color of the URL in the statusbar when there's a warning

# status bar padding
c.statusbar.padding = {
    "top": 5,
    "right": 5,
    "bottom": 5,
    "left": 5,
}

# tabs
c.colors.tabs.bar.bg = bg                                  # background color of the tab bar
c.colors.tabs.even.bg = bg                                 # background color of unselected even tabs
c.colors.tabs.even.fg = base16                             # Foreground color of unselected even tabs
c.colors.tabs.indicator.error = base02                     # color for the tab indicator on errors
c.colors.tabs.indicator.start = base05                     # color gradient start for the tab indicator
c.colors.tabs.indicator.stop = base11                      # color gradient end for the tab indicator
c.colors.tabs.indicator.system = 'none'                    # color gradient interpolation system for the tab indicator
c.colors.tabs.odd.bg = bg                                  # background color of unselected odd tabs
c.colors.tabs.odd.fg = base16                              # foreground color of unselected odd tabs
c.colors.tabs.selected.even.bg = bg                        # background color of selected even tabs
c.colors.tabs.selected.even.fg = base11                    # foreground color of selected even tabs
c.colors.tabs.selected.odd.bg = bg                         # background color of selected odd tabs
c.colors.tabs.selected.odd.fg = base11                     # foreground color of selected odd tabs

# tab padding
c.tabs.padding = {
    "top": 5,
    "right": 5,
    "bottom": 5,
    "left": 5,
}

c.tabs.indicator.width = 1
c.tabs.favicons.scale = 1

