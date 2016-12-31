## Developer Environment

**Bash Script**

```language-bash
# Manually install Xcode from Appstore
# Manually install Android Studio from website
# Additional manual steps required for Cobalt2 theme https://github.com/wesbos/Cobalt2-iterm https://github.com/zeit/hyper/issues/464

# Official brew download & install command
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Git
brew install git
brew cask

# Install gui apps via brew cask
brew cask install alfred
brew cask install atom
brew cask install caffeine
brew cask install chrome
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

# Download and install `nvm` with latest version of node
cd ~
touch ~/.bash_profile
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash
cd ~/.nvm
git pull
source ~/.bash_profile
nvm install node

# Download and install `rbenv` with latest version of ruby
cd ~
# brew install openssl
# brew link --force openssl
brew install rbenv ruby-build
latestruby=$(rbenv install -l | grep -v - | tail -1 | xargs)
rbenv install $latestruby
rbenv global $latestruby

# Install Zshell
cd ~
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
source ~/.zshrc

# Download and install dotfiles see repo README for more info
cd ~
git clone https://github.com/tylerbuchea/.dotfiles
echo '' > ~/.dotfiles/.credentials
echo "source ~/.dotfiles/.includes" >> ~/.zshrc
source ~/.zshrc
# Manually add plugins to ~/.zshrc
  # plugins=(git rupaz)
# In ~/.dotfiles/.credentials manually add the lines below with your own git info (without the hashtags):
  # export GIT_AUTHOR_NAME="Tyler Buchea"
  # export GIT_AUTHOR_EMAIL=tyler@buchea.com
  # export GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
  # export GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"

# Download and partially install theme
cd ~/Downloads
git clone https://github.com/wesbos/Cobalt2-iterm.git
git clone https://github.com/powerline/fonts.git
cp Cobalt2-iterm/cobalt2.zsh-theme ~/.oh-my-zsh/themes
cp fonts/Inconsolata/Inconsolata\ for\ Powerline.otf /Library/Fonts
# Open up your ZSH preferences at ~/.zshrc and change the theme variable to ZSH_THEME="cobalt2"
# Open your hyperterm preferences ~/.hyperterm.js and add Powerline to begining of the fontFamily list like so: fontFamily: '"Inconsolata for Powerline", Menlo, ...

# Create a dev folder
mkdir -p ~/dev

# Download and install developer credentials
cd ~/dev
git clone https://github.com/tylerbuchea/developer-credentials.git
```
