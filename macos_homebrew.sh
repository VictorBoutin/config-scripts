#!/usr/bin/env bash

# 1. install Xcode:
# From this url : (uncomment the following line)
# open http://itunes.apple.com/us/app/xcode/id497799835?mt=12
# install Xcode on the Mac App Store by clicking on “View in Mac App Store”.
# or simply use the following line:
# xcode-select --install

# 2. install HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

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
brew install git

git config --global core.fileMode false
# sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed #--with-default-names
# running `chsh`.
chsh -s /bin/zsh
brew uninstall zsh
brew install zsh-completions
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew install romkatv/powerlevel10k/powerlevel10k
brew install thefuck
brew install htop

# Install `wget` with IRI support.
brew install wget #--with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
#brew install ringojs
#brew install narwhal
brew install  hardlink

# Install more recent versions of some macOS tools.
brew install vim #--with-override-system-vi --without-python --with-python3  --override-system-vi
# brew uninstall homebrew/dupes/grep
# brew uninstall homebrew/dupes/openssh
# brew uninstall homebrew/dupes/screen
brew install tmux
brew install reattach-to-user-namespace
# brew install homebrew/php/php55 --with-gmp
brew install opus
brew install opus-tools


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
brew install diff-pdf

# Install other useful binaries.
#brew install ack
#brew install exiv2
brew install git
brew install imagemagick #--with-ghostscript --with-webp
brew install lua
#brew install lynx
#brew install p7zip
#brew install pigz
#brew install pv
#brew install rename
#brew install rhino
# brew install speedtest_cli
brew install ssh-copy-id
# brew install testssl
brew install tree
#brew install webkit2png
#brew install zopfli


# 3. install common utilities
# Install native apps
brew tap homebrew/cask
brew install brew-cask
brew install homebrew/completions/brew-cask-completion
# brew install openssh --with-keychain-support
# brew install pkg-config
# brew install make
# brew install hub

# brew install Caskroom/cask/osxfuse
brew cask install osxfuse
brew install homebrew/fuse/sshfs
brew install homebrew/fuse/encfs

#sudo /bin/cp -RfX /usr/local/opt/osxfuse/Library/Filesystems/osxfusefs.fs /Library/Filesystems
#sudo chmod +s /Library/Filesystems/osxfusefs.fs/Support/load_osxfusefs
# brew install clinfo
# brew cask uninstall todotxt

# brew install mpg123
# brew install vorbis-tools #--with-flac
brew install fdupes
brew install cmus # a nice command-line utility to play music files

# brew install lftp
# brew uninstall mercurial

brew install rtmpdump
brew install libav
brew install youtube-dl #--with-rtmpdump

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
# brew install node
# npm install -g npm
# npm install -g grunt-cli

brew cask install atom
apm install atom-ide-ui
apm install ide-python
apm install linter-python
apm install python-autopep8
apm install latex
apm install latex-plus
apm install todo-show

# brew cask install tcl

# academic website
brew install hugo

#! /usr/bin/env zsh
brew install brew-cask-completion
# Install native apps
brew tap homebrew/cask-fonts

#brew cask install qfinder-pro
brew cask uninstall --force pycharm-ce qfinder-pro evernote macvim openoffice cakebrew google-chrome owncloud  todotxt tunnelblick  adobe-acrobat-reader clamxav  dropbox thunderbird  unison pineapple arduino flash-player clementine wireshark unetbootin gitkraken virtualbox kitematic sourcetree docker-toolbox garmin-basecamp deepl near-lock java iina

for i in mattermost signal jupyter-notebook-ql atom libreoffice libreoffice-language-pack chromium github psychopy flash-npapi firefox caskroom/fonts/font-symbola caskroom/fonts/font-inconsolata seashore skype the-unarchiver vlc spectacle xquartz qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv webpquicklook suspicious-package meld balenaetcher inkscape zotero signal mendeley scratch
do
  echo '📸  Installing ' $i
  # brew cask uninstall --force $i
  brew cask install $i
done

case $(hostname -s) in
  ada*) brew cask install iterm2-legacy ;; # older macOS
  *) brew cask install iterm2 ;;
esac


# upgrade
brew update; brew cask reinstall `brew outdated --cask --quiet`; brew cleanup


# Remove outdated versions from the cellar
brew cleanup
