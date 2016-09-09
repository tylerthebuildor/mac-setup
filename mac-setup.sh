# Manually install Xcode from Appstore
# Manually install Android Studio from website
# Manually install Git from website
# Manually install HyperTerminal

# Install Zshell
cd ~
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Download and install `nvm` with latest version of node
cd ~
touch ~/.bash_profile
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash
cd ~/.nvm
git pull
source ~/bash_profile
nvm install node

# Download and install `rbenv` with latest version of ruby
cd ~
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# brew install openssl
# brew link --force openssl
brew install rbenv ruby-build
latestruby=$(rbenv install -l | grep -v - | tail -1 | xargs)
rbenv install $latestruby
rbenv global $latestruby

# Download and install phpbrew
curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew
sudo mv phpbrew /usr/bin/phpbrew
echo "[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc" >> ~/.zshrc
source ~/.zshrc
phpbrew self-update
phpbrew update
# xcode-select --install
source ~/.zshrc
phpbrew install 7.0 +default

# Download and install `gvm` with latest version of Go Lang
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source ~/.gvm/scripts/gvm
latestgo=$(gvm listall | grep -v r | grep -v b | tail -n 2 | xargs)
gvm install go1.4 --binary # --binary is temporary to fix gvm bug PR is in proccess https://github.com/moovweb/gvm/issues/217
gvm use go1.4
gvm install $latestgo
gvm use $latestgo

# Download and install dotfiles see repo README for more info
cd ~
git clone https://github.com/tylerbuchea/.dotfiles
echo '' > ~/.dotfiles/.credentials
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

# Just in Case
source ~/.zshrc
