#!/opt/homebrew/bin/zsh
defaults write -g com.apple.trackpad.scaling 3
defaults write -g com.apple.mouse.scaling 1.5
defaults write -g NSWindowResizeTime -float 0.001
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
defaults write -g AppleShowAllExtensions -bool true
defaults write -g NSInitialToolTipDelay -integer 0
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain com.apple.springing.enabled -bool true

defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
defaults write com.apple.finder AppleShowAllFiles -bool YES
defaults write com.apple.finder _FXSortFoldersFirst -bool true
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder QLEnableTextSelection -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowTabView -bool true
defaults write com.apple.finder WarnOnEmptyTrash -bool false
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true
defaults write -g PMPrintingExpandedStateForPrint -bool true
defaults write com.apple.finder AutoStopWhenSelectionChanges -bool false
defaults write com.apple.finder AutoStopWhenScrollingOffBounds -bool false
defaults write com.apple.finder QLInlinePreviewMinimumSupportedSize -int 0
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool yes
defaults write com.apple.NetworkBrowser EnableODiskBrowsing -bool true
defaults write com.apple.NetworkBrowser ODSSupported -bool true
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write com.apple.finder ProhibitBurn -bool true
defaults write com.apple.finder ProhibitEject -bool true
defaults write com.apple.finder ProhibitGoToFolder -bool true
defaults write com.apple.helpviewer DevMode -bool true
defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'
defaults write com.apple.dock workspaces-edge-delay -float 0.2
#defaults write com.apple.dock springboard-show-duration -int 0
#defaults write com.apple.dock springboard-hide-duration -int 0
defaults write -g NSInitialToolTipDelay -integer 0
defaults write com.apple.finder AnimateWindowZoom -bool false
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false

defaults write com.apple.CrashReporter DialogType -string "none"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
defaults write com.apple.Safari ShowStatusBar -bool true
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.terminal StringEncodings -array 4
defaults write com.apple.screencapture location ~/Pictures/Screenshots
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"
defaults write com.apple.appleseed.FeedbackAssistant "Autogather" -bool "false" 
defaults write com.apple.TimeMachine "DoNotOfferNewDisksForBackup" -bool "true"
defaults write com.apple.Music "userWantsPlaybackNotifications" -bool "true"
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
defaults write com.apple.dock "autohide-time-modifier" -float "0.1"
defaults write com.apple.dock "autohide-delay" -float "0"
defaults write com.apple.appstore WebKitDeveloperExtras -bool true
defaults write com.apple.appstore ShowDebugMenu -bool true
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1
defaults write com.apple.SoftwareUpdate ConfigDataInstall -int 1
defaults write com.apple.commerce AutoUpdate -bool true
defaults write com.apple.commerce AutoUpdateRestartRequired -bool true
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome DisablePrintPreview -bool true
defaults write com.google.Chrome.canary DisablePrintPreview -bool true
defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool true
defaults write com.google.Chrome.canary PMPrintingExpandedStateForPrint2 -bool true

sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
chflags nohidden ~/Library
sudo chflags nohidden /Volumes
sudo nvram SystemAudioVolume=" "
#sudo systemsetup -setrestartfreeze on
