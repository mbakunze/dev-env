#!/bin/bash

_setup_config() {
    SOURCE=$1
    DEST=$2
    SOURCE_FOLDER=configs
    echo "Setting up dotconfig: $DEST"

    cp -f "$SOURCE_FOLDER/$SOURCE" "$DEST"
}

install_configs() {
    echo "Setting up configuration"
    mkdir -p ~/.ssh

    _setup_config custom.vimrc ~/.vimrc
    _setup_config custom.zshrc ~/.zshrc
    _setup_config custom.p10k.zsh ~/.p10k.zsh
    _setup_config custom.ssh.config ~/.ssh/config
    _setup_config custom.gitconfig ~/.gitconfig
    _setup_config custom.gitignore_global ~/.gitignore_global
    _setup_config custom.spectacle.Shortcuts.json ~/Library/Application\ Support/Spectacle/Shortcuts.json
}
