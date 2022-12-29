#####################################################################
# qutebrowser config
#####################################################################
# load settings added with ui
# see <https://github.com/qutebrowser/qutebrowser/blob/master/doc/help/configuring.asciidoc#loading-autoconfigyml>
# to se all configuration type :set inside qutebrowser.

import catppuccin
config.load_autoconfig()

# Enable dark mode
c.colors.webpage.preferred_color_scheme = "dark"
#c.colors.webpage.darkmode.enabled = True

# Enable Brave browser adblocker
# Require `python-adblock` package
c.content.blocking.method = 'both'
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
c.zoom.default = 125
c.fonts.default_size = "12pt"

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
# Themes
#####################################################################
# set the flavour you'd like to use
# set catppuccin flavour ('mocha', 'macchiato', 'frappe', 'latte')
catppuccin.setup(c, 'macchiato')
