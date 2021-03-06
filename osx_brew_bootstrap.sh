#!/usr/bin/env bash

# 1. install Xcode:
# From this url : (uncomment the following line)
# open http://itunes.apple.com/us/app/xcode/id497799835?mt=12
# install Xcode on the Mac App Store by clicking on “View in Mac App Store”.
# or simply use the following line:
# xcode-select --install

# 2. install HomeBrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# to reinstall, do:
# rm -rf /usr/local/Cellar /usr/local/.git && brew cleanup

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
brew install rsync

# sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
# brew install bash
# brew install bash-completion
brew install zsh
brew install zsh-completions
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh
brew install thefuck

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
#brew install ringojs
#brew install narwhal
brew install  hardlink

# Install more recent versions of some macOS tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
# brew install homebrew/php/php55 --with-gmp

# Install font tools.
#brew tap bramstein/webfonttools
#brew install sfnt2woff
#brew install sfnt2woff-zopfli
#brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
#brew install bfg
#brew install binutils
#brew install binwalk
#brew install cifer
#brew install dex2jar
#brew install dns2tcp
#brew install fcrackzip
#brew install foremost
#brew install hashpump
#brew install hydra
#brew install john
#brew install knock
#brew install nmap
#brew install pngcheck
#brew install socat
#brew install sqlmap
#brew install tcpflow
#brew install tcpreplay
#brew install tcptrace
#brew install ucspi-tcp # `tcpserver` etc.
brew uninstall xpdf
#brew install xz

# Install other useful binaries.
#brew install ack
#brew install exiv2
brew install git
brew install imagemagick --with-webp
brew install lua
#brew install lynx
#brew install p7zip
#brew install pigz
#brew install pv
#brew install rename
#brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
#brew install webkit2png
#brew install zopfli


# 3. install common utilities
# Install native apps
brew tap caskroom/cask
brew install brew-cask
# brew install openssh --with-keychain-support
brew install pkg-config
brew install make
brew install hub

# brew install Caskroom/cask/osxfuse
brew cask install osxfuse
brew install homebrew/fuse/sshfs
brew install homebrew/fuse/encfs

#sudo /bin/cp -RfX /usr/local/opt/osxfuse/Library/Filesystems/osxfusefs.fs /Library/Filesystems
#sudo chmod +s /Library/Filesystems/osxfusefs.fs/Support/load_osxfusefs
brew uninstall mackup
brew uninstall todo-txt
brew cask uninstall todotxt

brew install mpg123
brew install vorbis-tools --with-flac
brew install fdupes
brew install cmus # a nice command-line utility to play music files

brew install lftp
brew install mercurial

brew install rtmpdump
brew install libav
brew install youtube-dl --with-rtmpdump

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install node
npm install -g grunt-cli

brew cask install atom

brew cask install tcl

# https://github.com/caskroom/homebrew-cask/blob/master/CONTRIBUTING.md
brew install vitorgalvao/tiny-scripts/cask-repair
# cask-repair --help

#mkdir -p ~/Applications
brew linkapps
# Remove outdated versions from the cellar
brew cleanup

