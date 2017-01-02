## Developer Environment

**Bash script**

```language-bash
# Manual steps
# Complete these after you run the script

# Manually install Xcode from Appstore
# Manually install Android Studio from website
# Generate new SSH key: ssh-keygen -t rsa -b 4096 -C "tyler@buchea.com"
# In ~/.zshrc set plugins variable: plugins=(git z)
# In ~/.dotfiles/.credentials change the git credentials to your own
# In ~/.zshrc and change the theme variable to ZSH_THEME="cobalt2"
# In ~/.hyperterm.js add Powerline font like so: fontFamily: '"Inconsolata for Powerline", Menlo, ...

# Official brew download & install command
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Git
brew install git
brew cask

# Install brew tools and stuff
brew install redis
brew install mongodb
brew install postgresql
brew install trash

# Install gui apps via brew cask
brew cask install alfred
brew cask install atom
brew cask install caffeine
brew cask install chrome
brew cask install docker
brew cask install filezilla
brew cask install hypercli
brew cask install mamp
brew cask install medis
brew cask install mongochef
brew cask install psequel
brew cask install sequel-pro
brew cask install skype
brew cask install slack
brew cask install spectacle

# Atom plugins
apm install badass-react-snippets
apm install linter-eslint
apm install highlight-selected
apm install vim-mode
apm install merge-conflicts
apm install docblockr
apm install pigments
apm install file-icons
apm install language-babel
apm install gruvbox-syntax
# autocomplete-modules

# Download and install `nvm` with latest version of node
cd ~
touch ~/.bash_profile
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash
cd ~/.nvm
git pull
source ~/.bash_profile
nvm install node

# Install Node packages
npm install -g pm2

# Download and install `rbenv` with latest version of ruby
cd ~
# brew install openssl
# brew link --force openssl
brew install rbenv ruby-build
latestruby=$(rbenv install -l | grep -v - | tail -1 | xargs)
rbenv install $latestruby
rbenv global $latestruby

# Install ruby gems
# gem install rails

# Install Zshell
cd ~
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
source ~/.zshrc

# Download and install dotfiles see repo README for more info
cd ~
git clone https://github.com/tylerbuchea/.dotfiles
echo "source ~/.dotfiles/.includes" >> ~/.zshrc
source ~/.zshrc

# Download and partially install theme
cd ~/Downloads
git clone https://github.com/wesbos/Cobalt2-iterm.git
git clone https://github.com/powerline/fonts.git
cp Cobalt2-iterm/cobalt2.zsh-theme ~/.oh-my-zsh/themes
cp fonts/Inconsolata/Inconsolata\ for\ Powerline.otf /Library/Fonts

# Create a dev folder
mkdir -p ~/dev

# Download and install developer credentials
cd ~/dev
git clone https://github.com/tylerbuchea/developer-credentials.git
```
