#!/usr/bin/env bash

brew install firefoxpwa


# ==> Caveats
# To use the browser extension, manually link the app manifest with:
#   sudo mkdir -p "/Library/Application Support/Mozilla/NativeMessagingHosts"
#   sudo ln -sf "/usr/local/opt/firefoxpwa/share/firefoxpwa.json" "/Library/Application Support/Mozilla/NativeMessagingHosts/firefoxpwa.json"
# 
# zsh completions have been installed to:
#   /usr/local/share/zsh/site-functions
# ==> Summary
# 🍺  /usr/local/Cellar/firefoxpwa/1.2.1: 28 files, 13.4MB
# ==> Running `brew cleanup firefoxpwa`...
# Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
# Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
