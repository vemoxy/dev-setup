#!/usr/bin/env bash

# ~/zsh.sh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Update with my settings
sed -i 's/ZSH_THEME=".*"/ZSH_THEME="Blinks"/' ~/.zshrc

# Add utf8 settings to .zshrc
sed -i '/# export LANG=en_US.UTF-8/ r ./zsh/utf8_settings' ~/.zshrc

cat ./zsh/shortcuts >> ~/.zshrc

. ~/.zshrc

echo "------------------------------"
echo "Script completed."