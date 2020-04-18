# Faster keyboard repeat rate
defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 12

# Enable Audio Codec for better Bluetooth headphone performance
defaults write bluetoothaudiod "Enable AptX codec" -bool true
defaults write bluetoothaudiod "Enable AAC codec" -bool true

# Show Hidden files
defaults write com.apple.finder AppleShowAllFiles YES

# Open App from 3rd-party developer
defaults write /Library/Preferences/com.apple.security GKAutoRearm -bool NO

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Finder, Allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# No .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Restart computer
sudo reboot
