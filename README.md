## Developer Environment

**Current Versions of Stuff**
* OSX - 10.11.05
* Python - Python 2.7.10 - /usr/bin/python
* Ruby - ruby 2.0.0p648 (2015-12-16 revision 53162) [universal.x86_64-darwin15] - /usr/bin/ruby
* Git - git version 2.7.4 (Apple Git-66) - /usr/bin/git
* Node

**Bash Script**

```language-bash
# Manually install Xcode from Appstore
# Manually install Android Studio from website
# Manually install Git from website
# Additional manual steps required for iTerm Cobalt2 theme https://github.com/wesbos/Cobalt2-iterm

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

# Make sure iTerm2 is installed first

# Install Zshell
cd ~
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

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
```

## GUI Applications

**Core**

* Xcode
* Chrome
* Atom
* MAMP
* FileZilla
* SequelPro

**Misc**

* Alfred
* Spectacle
* Caffeine
