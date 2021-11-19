import glob
import os.path
import dracula.draw

# Load existing settings made via :set
config.load_autoconfig()

dracula.draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})

c.content.javascript.enabled = True
c.auto_save.session = True

c.completion.shrink = True
c.completion.scrollbar.width = 0
c.completion.scrollbar.padding = 0

## Apperance
c.hints.auto_follow = 'always'
c.hints.auto_follow_timeout = 400
c.hints.mode = 'number'

c.tabs.background = True
c.tabs.favicons.scale = 0.9
c.tabs.last_close = 'close'
c.tabs.padding = {'bottom': 3, 'left': 5, 'right': 5, 'top': 2}
c.tabs.mode_on_change = 'restore'
c.tabs.show = 'multiple'
c.tabs.indicator.width = 0

## Search Engine
c.url.searchengines = {
    'DEFAULT': 'https://www.google.com/search?q={}',
    'wi': 'https://en.wikipedia.org/wiki/Special:Search?search={}',
    'yt': 'https://youtube.com/results?search_query={}',
}

## Start Page
c.url.start_pages = "https://google.com/"
c.url.default_page = "about:blank"

## Enconding
c.editor.encoding = 'utf-8'

## Set Font
c.fonts.hints = "bold 13px 'DejaVu Sans Mono'"
mono = '12pt Hack Nerd Font'
small_mono = '10pt Hack Nerd Font'
c.fonts.completion.entry = mono
c.fonts.completion.category = 'bold ' + mono
c.fonts.debug_console = mono
c.fonts.downloads = mono
c.fonts.hints = 'bold 11pt monospace'
c.fonts.keyhint = small_mono
c.fonts.messages.error = small_mono
c.fonts.messages.info = small_mono
c.fonts.messages.warning = small_mono
c.fonts.statusbar = mono

## Bind Keys
# Ports
config.bind('po3', 'open -t http://localhost:3000')
config.bind('po4', 'open -t http://localhost:4200')
config.bind('po8', 'open -t http://localhost:8000')
config.bind('<shift+j>', 'tab-prev')
config.bind('<shift+k>', 'tab-next')

# Daily
config.bind('yt', 'open -t https://youtube.com')
config.bind('cc', 'open -t https://netflix.com')
config.bind('14', 'open -t https://kenh14.vn')
config.bind('gm', 'open -t https://gmail.com')
config.bind('ct', 'open -t https://www.youtube.com/watch?v=v-wm4xQnWQE&list=PLB5OyPOzUS5r6E7L1IhcM0dw1aEDbZEBk')

# Work
config.bind('wgh', 'open -t http://github.com')
config.bind('wtl', 'open -t https://trello.com')
config.bind('wjr', 'open -t https://oivan.atlassian.net/jira/software/c/projects/ALE/issues/?jql=assignee%20IN%20(currentUser())%20AND%20statusCategory%20in%20(%22New%22%2C%20%22In%20Progress%22)%20ORDER%20BY%20created%20DESC')
config.bind('wat', 'open -t https://airtable.com')

# Social
config.bind('scm', 'open -t https://messenger.com')
config.bind('scf', 'open -t https://facebook.com')
config.bind('scr', 'open -t https://reddit.com')

# Browser handler
config.bind('<ctrl+d>', 'wq')
