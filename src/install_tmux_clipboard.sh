#!/usr/bin/env sh

# connect tmux to the OS X clipboard service. - required by tmux-yank
brew install reattach-to-user-namespace


# if does not work by tmux pkg mngr (TPN), then do it manually
git clone https://github.com/tmux-plugins/tmux-yank ~/.tmux/plugins/tmux-yank
