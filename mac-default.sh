#!/opt/homebrew/bin/zsh

# Global
defaults write -g com.apple.trackpad.scaling 3 #トラックパッドの軌跡の速さを最大
defaults write -g com.apple.mouse.scaling 1.5 #マウスの軌跡の速さを最大
defaults write -g com.apple.springing.enabled -bool true
defaults write -g NSWindowResizeTime -float 0.001
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
defaults write -g AppleShowAllExtensions -bool true #全ての拡張子を表示
defaults write -g NSInitialToolTipDelay -integer 0
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true #保存ダイアログを詳細表示
defaults write -g PMPrintingExpandedStateForPrint -bool true #印刷ダイアログを詳細表示
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
defaults write -g NSAutomaticCapitalizationEnabled -bool false
defaults write -g AppleKeyboardUIMode -int 3
defaults write -g KeyRepeat -int 2 #リピート速度(60分の1秒単位)
defaults write -g InitialKeyRepeat -int 30 #リピート開始までの時間(60分の1秒単位)
defaults write -g "NSDocumentSaveNewDocumentsToCloud" -bool "false"
defaults write -g WebKitDeveloperExtras -bool true

# Finder
defaults write com.apple.finder AppleShowAllFiles -bool true #隠しファイル 
defaults write com.apple.finder _FXSortFoldersFirst -bool true
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder FXPreferredViewStyle -string "clmv" #カラムビューをデフォルトに
defaults write com.apple.finder QLEnableTextSelection -bool true
defaults write com.apple.finder ShowPathbar -bool true #パスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true #ステータスバーを表示
defaults write com.apple.finder ShowTabView -bool true
defaults write com.apple.finder ShowRecentTags 0 #最近使ったタグを非表示
defaults write com.apple.finder WarnOnEmptyTrash -bool false
defaults write com.apple.finder AutoStopWhenSelectionChanges -bool false
defaults write com.apple.finder AutoStopWhenScrollingOffBounds -bool false
defaults write com.apple.finder QLInlinePreviewMinimumSupportedSize -int 0
defaults write com.apple.finder ProhibitBurn -bool true
defaults write com.apple.finder ProhibitEject -bool true
defaults write com.apple.finder ProhibitGoToFolder -bool true
defaults write com.apple.finder AnimateWindowZoom -bool false
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/" #デフォルトでホームディレクトリを開く

# Safari
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool yes
defaults write com.apple.NetworkBrowser EnableODiskBrowsing -bool true
defaults write com.apple.NetworkBrowser ODSSupported -bool true
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true #URLを完全表示
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
defaults write com.apple.Safari ShowStatusBar -bool true
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true #拡張機能を自動更新

# Deck
defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'
defaults write com.apple.dock workspaces-edge-delay -float 0.2
defaults write com.apple.dock "autohide-time-modifier" -float "0.1"
defaults write com.apple.dock "autohide-delay" -float "0"
#defaults write com.apple.dock springboard-show-duration -int 0
#defaults write com.apple.dock springboard-hide-duration -int 0

# Chrome
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome DisablePrintPreview -bool true
defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool true
defaults write com.google.Chrome.canary AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary DisablePrintPreview -bool true
defaults write com.google.Chrome.canary PMPrintingExpandedStateForPrint2 -bool true

# Other
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
defaults write com.apple.terminal StringEncodings -array 4
defaults write com.apple.screencapture location ~/Pictures/Screenshots #スクショの場所
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true #ネットワークストアに.DS_Storeを作成しない
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true #USBデバイスに.DS_Storeを作成しない
defaults write com.apple.appleseed.FeedbackAssistant "Autogather" -bool "false" 
defaults write com.apple.TimeMachine "DoNotOfferNewDisksForBackup" -bool "true"
defaults write com.apple.Music "userWantsPlaybackNotifications" -bool "true"
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
defaults write com.apple.appstore WebKitDeveloperExtras -bool true
defaults write com.apple.appstore ShowDebugMenu -bool true
defaults write com.apple.commerce AutoUpdate -bool true
defaults write com.apple.commerce AutoUpdateRestartRequired -bool true
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1
# defaults write com.apple.SoftwareUpdate ConfigDataInstall -int 1 #他のMacで購入したアプリを自動インストール
defaults write com.apple.CrashReporter DialogType -string "none" #クラッシュレポーターを無効化
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
defaults write com.apple.helpviewer DevMode -bool true
defaults write com.apple.QuickTimePlayerX MGPlayMovieOnOpen -bool true #QuickTime Playerを開いた時に動画自動再生
defaults write com.apple.LaunchServices LSQuarantine -bool false #未確認のアプリのダイアログを無効
defaults write com.apple.TextEdit RichText -int 0

sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
chflags nohidden ~/Library #LibraryをFinderに表示
sudo chflags nohidden /Volumes #Volumesを常に表示
sudo nvram SystemAudioVolume=" " #起動音を消音
#sudo systemsetup -setrestartfreeze on
