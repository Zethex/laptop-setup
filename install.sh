#!/bin/bash

# Update
pacman -Syu

# Install AUR Pacman and remove shitty octopi.  Removed xterm lol?
pacman -Syyu paman-cli
pacman -Rs octopi # Onlyif in KDE land

# Install packages from distro
pacman -Syy vim chromium terminator htop python-pip docker go libsmbios remmina freerdp fwupd

# Build from AUR
pamac build visual-studio-code-bin
pamac build google-chrome
pamac build nvm
pamac build zoom
pamac build lenovo-throttling-fix-git
pamac build postman-bin

# Flatpak stuff (Good for proprietry stuff apparently)
flatpak install com.spotify.Client
flatpak install com.slack.Slack

# Pip stuff
pip install awscli ansible magic-wormhole

# Post NVM stuff
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
nvm install 8.10 # for lambda
nvm install stable # for everything else
nvm use stable
npm install -g serverless

# Post Docker stuff
usermod -aG docker $USER # Requires reboot afterwords to take effect apparently.

# Enable services
systemctl enable --now lenovo_fix.service
systemctl enable --now docker.service

# Battery power saving stuff
echo "options i915 enable_psr=2 enable_rc6=7 enable_fbc=1 semaphores=1 lvds_downclock=1 enable_guc_loading=1 enable_guc_submission=1" > /etc/modprobe.d/i915.conf

# VSCode stuff
code --install-extension mads-hartmann.bash-ide-vscode
code --install-extension rogalmic.bash-debug
code --install-extension pranaygp.vscode-css-peek
code --install-extension Zignd.html-css-class-completion
code --install-extension shinnn.stylelint
code --install-extension mrmlnc.vscode-autoprefixer
code --install-extension ms-vscode.Go
code --install-extension truman.autocomplate-shell
code --install-extension mgmcdermott.vscode-language-babel
code --install-extension ms-vscode.vscode-typescript-tslint-plugin
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension rbbit.typescript-hero
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension yzhang.markdown-all-in-one
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension felixfbecker.php-debug
code --install-extension ikappas.composer
code --install-extension junstyle.php-cs-fixer
code --install-extension ms-python.python
code --install-extension mauve.terraform
code --install-extension orepor.color-tabs-vscode-ext
code --install-extension eamodio.gitlens
code --install-extension christian-kohler.npm-intellisense
code --install-extension christian-kohler.path-intellisense
code --install-extension Gruntfuggly.todo-tree
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension lukasz-wronski.ftp-sync
