# 1. install Xcode:
# From this url : (uncomment the following line)
# open http://itunes.apple.com/us/app/xcode/id497799835?mt=12
# install Xcode on the Mac App Store by clicking on “View in Mac App Store”.
# or simply use the following line:
xcode-select --install

# 2. install HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# to reinstall, do:
# rm -rf /usr/local/Cellar /usr/local/.git && brew cleanup

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# 3. fetch and install texlive

# homebrew style cask install
# Install native apps
brew tap caskroom/cask
brew install brew-cask
brew cask uninstall basictex
brew cask install mactex
brew cask install bibdesk
brew cask install skim
brew cask install texshop
brew cask install mendeley-desktop
brew cask install tex-live-utility
brew install gnupg

sudo chown -R $USER  /usr/local/texlive
# sudo tlmgr option location http://ctan.mines-albi.fr/systems/texlive/tlnet
#sudo tlmgr option location  http://ftp.math.utah.edu/pub/texlive/tlpretest/
#sudo tlmgr option location http://mirrors.ircam.fr/pub/CTAN/systems/texlive/tlnet/

# update
tlmgr update --self
tlmgr update --all

# tlmgr install adjustbox
# tlmgr install collectbox
# tlmgr install ucs
# tlmgr install collection-fontsrecommended
# tlmgr install collection-latexrecommended

# setting some preferences in TexShop
#defaults write TeXShop NSUserKeyEquivalents -dict-add "Typeset" "@\U21a9"
defaults write TeXShop NSUserKeyEquivalents -dict-add "Typeset" "@t"
defaults write TeXShop "BibTeXengine" -string "biber"
defaults write TeXShop "Encoding"  -string  "UTF-8"

# setting some preferences in BibDesk (see http://invibe.net/LaurentPerrinet/SciBlog/2013-03-06):
defaults write bibdesk "Cite Key Format" -string "%p1%y%u0"
defaults write bibdesk BDSKLocalFileFormatKey -string "%f{Cite Key}%n0%e"
# defaults write bibdesk "Path to the papers folder" -string "Biblio"
defaults write bibdesk "Cite String" -string "citep"
defaults write bibdesk "Cite Key Autogenerate" -int 1
defaults write bibdesk "Cite Key Format Preset" -int 0
defaults write bibdesk "Cite Prepend Tilde" -int 1
defaults write bibdesk "Startup Behavior" -int 4
