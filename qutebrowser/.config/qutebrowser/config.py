config.load_autoconfig()
config.set("content.blocking.enabled", True)
config.set("content.pdfjs", True)

# Keybindings
config.bind('M', 'hint links spawn mpv {hint-url}')
#config.bind('S', 'hint links spawn seminarworkflow {hint-url}')
config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')
