#!/bin/sh

config_macos_settings() {
    echo "Configuring OS"

    #Enable Trackpad touch to click
    defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

    #Enable Trackpad three finger drag
    defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

    #Use current directory as default search scope in Finder
    defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

    #Show Path bar in Finder
    defaults write com.apple.finder ShowPathbar -bool true

    #Show Status bar in Finder
    defaults write com.apple.finder ShowStatusBar -bool true

    #Show indicator lights for open applications in the Dock
    defaults write com.apple.dock show-process-indicators -bool true

    #Show recent items stack
    defaults write com.apple.dock persistent-others -array-add '{"tile-data" = {"list-type" = 1;}; "tile-type" = "recents-tile";}'

    #Enable AirDrop over Ethernet and on unsupported Macs running Lion
    defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

    #Enable Safari’s debug menu
    defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

    #Add a context menu item for showing the Web Inspector in web views
    defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

    #Show the ~/Library folder
    chflags nohidden ~/Library

    #Show battery percentage in menu bar
    defaults write com.apple.menuextra.battery ShowPercent -string "YES"

    #Show date in in menu bar
    defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM h:mm a"
     
    # Dock magnification
    defaults write com.apple.dock magnification -bool true

    # Icon size of Dock items
    defaults write com.apple.dock tilesize -int 40

    # Icon size of magnified Dock items
    defaults write com.apple.dock largesize -int 75

    # Automatically hide and show the Dock
    defaults write com.apple.dock autohide -bool true
}
