# dev-env

My standard MacOS Development Environment: `bash install.sh`

You need to restart before some/all OSX changes take effect

You might need to install xcode and CLTools for macOS before running the script,
otherwise the `$git ...` commands might not work. 

### Manual steps needed:
- lastpass chrome extension
- authy chrome extension
- ? .kube/config
- ? Change "Move focus to next window" shortcut to option+tab
- Install LockDown App 
- setup OneDrive locally AFTER mac is registered with intune
- ? add `setenv('GNUTERM','qt')
graphics_toolkit("gnuplot")` to ~/.octave file

### Fixes:
- clock should be 24 hour (is AM/PM)
- font in terminal

### Knwon Issues
- brew install mssql-tools does not work
- brew cask install iterm2 does not give a working exe - install manually
- after installing VS Code you need to go to the Applications folder and sec-click > Open
to run the program, there is an issue with the signature of the current app
- ran into an issue when running the script the first time due to some permission error
when installing oh-my-zsh. Needed to implemented the stated workaround and run the script again.

- font smoothing needs to be enabled when not working on 4K monitor, try:
```
defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO
defaults -currentHost write -globalDomain AppleFontSmoothing -int 2
```
