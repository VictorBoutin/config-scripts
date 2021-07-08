#!/bin/bash

PIP="python3 -m pip install -U"
UNPIP="python3 -m pip uninstall -y"

# 1. install Xcode:
# From this url : http://itunes.apple.com/us/app/xcode/id497799835?mt=12 install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install HomeBrew
# It is recommend to run the bootstrap_brew.sh script to obtain core packages
# sh osx_brew_bootstrap.sh

# 3. install python3 and friends
# https://github.com/mxcl/homebrew/wiki/Homebrew-and-Python
# tip: CFLAGS=-I$(brew --prefix)/include LDFLAGS=-L$(brew --prefix)/lib pip install <package>
#
brew install python
# rm /usr/local/bin/python /usr/local/bin/python3
#ln -s /usr/local/bin/python3 /usr/local/bin/python
ln -s /usr/local/bin/python3 /usr/local/bin/python
#ln -s /usr/local/opt/python@3.9/libexec/bin/python3 /usr/local/bin/python
#ln -s /usr/local/opt/python@3.9/libexec/bin/python3 /usr/local/bin/python3
brew uninstall python@2
brew uninstall --ignore-dependencies python@2

# python3 -m ensurepip --upgrade # https://docs.python.org/3.7/library/ensurepip.html
$PIP pip wheel
$PIP setuptools setuptools-scm
$PIP twine

# testing
$PIP coverage
$PIP pytest
$PIP nose

# numpy
# sudo chown -R $(whoami):admin /usr/local
#brew untap homebrew/science
# https://github.com/pytorch/glow
brew install opencv
brew install cmake graphviz libpng ninja protobuf wget
# brew install llvm@7

brew install suite-sparse
brew install gcc
brew install cmake
brew install fftw
brew install libtool
brew install numpy # --without-python@2
# $PIP numpy #--with-openblas
$PIP numexpr
#$PIP numpy
$PIP lazyarray
$PIP sqlalchemy python-dateutil tqdm requests cached_property
brew install cython
# ipython -c "import numpy; numpy.test() "
$UNPIP tables
$UNPIP h5py
$PIP pillow
$PIP quantities
$PIP pandas
# https://shapely.readthedocs.io/en/latest/manual.html
$PIP fiona geopandas shapely fitparse
$PIP seaborn
brew uninstall hdf5
$PIP lmfit
$PIP easydict

# editing
# brew install vim --override-system-vi # --with-python3
# brew install macvim --env-std --override-system-vim --with-python3
# scipy et al
# $PIP scipy # --without-python@2
brew install scipy # --without-python@2
# python -c "import scipy; scipy.test() "
$PIP statsmodels
$PIP jedi
$UNPIP nengo

$PIP jedi

$PIP psutil
# pip install -U powerline-status
# sh ../libs/powerline-fonts/install.sh
# mac stuff
$PIP webassets
$PIP markdown
$PIP lxml
$PIP ghp-import2
$PIP nikola
nikola plugin -i rest_html5
nikola plugin -i tx3_tag_cloud
$PIP "Nikola[extras]"
$PIP  rst2html5
$PIP academic
# pylab
$PIP pyparsing
$PIP python-dateutil
# pip install git+git://github.com/matplotlib/matplotlib.git
$PIP matplotlib
# python -c "import pylab; pylab.test() "
$PIP imagen
$PIP dask
$PIP holoviews
$PIP bokeh
$PIP datashader

# editing environment
brew install zmq
$PIP pyzmq
$PIP pygments
$PIP tornado
$PIP jsonschema
$PIP terminado
# to use nbconvert with the ipython notebook, you need to install pandoc
brew cask install nteract
# https://github.com/nteract/commuter
# COMMUTER_LOCAL_STORAGE_BASEDIRECTORY=quantic/science commuter
# http://localhost:4000
npm install @nteract/commuter -g

$PIP ipykernel
python3 -m ipykernel install --user
brew install pandoc
brew install pandoc-citeproc
brew install pandoc-crossref
$PIP jinja2

# JUPYTER
$PIP typing-extensions  Pillow babel nbconvert prometheus_client jupyter-contrib-nbextensions jupyter-server
$PIP jupyter
$PIP ipywidgets
jupyter nbextension install --user --py widgetsnbextension
jupyter nbextension enable --py  widgetsnbextension
$PIP jupyterlab # --pre
$PIP voila

$PIP ipython[all]
$PIP version-information watermark
$PIP jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
$PIP jupyter_nbextensions_configurator
jupyter nbextensions_configurator enable --user

$PIP nbdime
nbdime extensions --enable
jupyter nbextension enable nbdime --py

$PIP tqdm
$PIP autopep8
# jupyter labextension uninstall  @ryantam626/jupyterlab_black
# jupyter labextension install @jupyterlab/shortcutui
#jupyter nbextension install https://github.com/kenkoooo/jupyter-autopep8/archive/master.zip --user
#jupyter nbextension enable jupyter-autopep8-master/jupyter-autopep8
# jupyter nbextension uninstall @jupyter-autopep8-master/jupyter-autopep8
# https://github.com/ryantam626/jupyterlab_code_formatter
# $UNPIP jupyterlab_code_formatter jupyterlab_black

$PIP 'python-language-server[all]'

# https://github.com/jupyterlab/jupyterlab-git
$PIP jupyterlab-git
# jupyter labextension install @jupyterlab/git
# jupyter serverextension enable --py jupyterlab_git
# jupyter labextension install @jupyterlab/toc
# jupyter labextension install @jupyter-voila/jupyterlab-preview
# https://github.com/jupyterlab/jupyterlab-latex
$PIP jupyterlab_latex
# jupyter labextension install @jupyterlab/latex
$PIP plotly
# python3 -m pip install git+https://github.com/mkrphys/ipython-tikzmagic

jupyter labextension update --all
jupyter lab build

# HACKS
# brew uninstall pyqt
# brew uninstall qt
# brew uninstall qt@5.7

#
brew install sip # --without-python@2
# brew install pyqt --without-python@2
$PIP sphinx
$PIP sphinx_rtd_theme
# pygame
# brew install --HEAD smpeg
#brew uninstall sdl2 sdl2_image sdl2_mixer sdl2_ttf  sdl2_gfx sdl2_net
#brew install sdl sdl_image sdl_mixer sdl_ttf  sdl_gfx sdl_net

# pyglet
$PIP pyglet
$PIP pygame
$PIP pyOpenGL
$PIP gloo

# 1. install HomeBrew + python
# sh osx_brew_python.sh

# install scientific packages
brew install libyaml
$PIP pybtex
#brew install --with-openblas --with-valgrind r
#sudo ln -s "/usr/local/opt/r/R.framework" /Library/Frameworks
#pip install -U rpy2

# video utilities
$PIP svgwrite
brew install x264
brew install ffmpeg # --with-libvorbis --with-libvpx
$PIP decorators
$PIP imageio
$PIP imageio-ffmpeg
$PIP tqdm
#$PIP git+https://github.com/meduz/moviepy@moviepy3
$PIP gizeh
# $PIP moviepy
# $PIP https://github.com/Zulko/moviepy
$PIP moviepy pygifsicle
brew install povray
$PIP vapory
# $PIP git+https://github.com/vispy/vispy.git
$PIP vispy
$PIP napari
$PIP pyprind
$PIP pdfrw
python3 -m pip uninstall  itk

# science
$PIP MotionClouds
# brew tap homebrew/science
brew install mkl-dnn
$PIP mkl-devel
$PIP onnx
$PIP pyyaml
brew install protobuf # --without-python@2 --with-python
# brew install tbb
# mathematics
$PIP sympy
#machine learning
$PIP joblib
# $PIP git+https://github.com/meduz/scikit-learn@sparsenet
$PIP scikit-learn

# neuromorphic
brew uninstall rust
brew install rustup-init
$PIP parameterized loris tonic
# $PIP git+https://github.com/scikit-learn/scikit-learn
$PIP scikit-image
# BICV
# $PIP git+https://github.com/bicv/SLIP
# $PIP git+https://github.com/bicv/LogGabor
# $PIP git+https://github.com/bicv/SparseEdges
# $PIP SparseEdges
# deep learning
# $PIP tensorflow
# python3 -m pip install tensorflow==1.14.0
# python3 -m pip install tensorflow-estimator==1.14.0
# python3 -m pip install tensorboard==1.14.0

#wget https://download.pytorch.org/whl/cpu/torch-1.7.0-cp38-none-macosx_10_9_x86_64.whl -0 /tmp/torch-1.7.0-cp39-none-macosx_10_9_x86_64.whl
#python3 -m pip install /tmp/torch-1.7.0-cp39-none-macosx_10_9_x86_64.whl # torch==1.1.0
#python3 -m pip install torchvision #==0.2.1
brew uninstall libtorch torchvision
$PIP torch torchvision pytorch_msssim
$PIP dlib
# $PIP torchvision-enhance
#python3 -m pip install -U

#$PIP python-pygaze
#python3 -m pip install git+https://github.com/esdalmaijer/PyGazeAnalyser

# neuralensemble
brew install gsl
$PIP neo
$PIP interval
$PIP NeuroTools
$UNPIP brian2 brian2genn
$PIP csa
brew install nest
$PIP pynn

# latex, bibliography and friends
# sh osx_install_tex_live.sh
brew install bib-tool
$PIP bibtexparser
# brew install python
# pyenv global homebrew
# pyenv rehash

# PAPIS https://papis.readthedocs.io/en/latest/install.html
# $PIP papis
# $PIP papis-zotero

# pip2 install -U pip setuptools
# python2 -m pip install ipykernel
# python2 -m ipykernel install --user
# pip2 install beets
# pip2 install flask
# pip2 install pylast
# pip2 install discogs_client
# brew install chromaprint
# pip2 install  pyacoustid
# brew install wxpython
# pip2 install -U configobj
# $PIP git+https://github.com/psychopy/psychopy
# $PIP psychopy

$PIP pypng
$PIP pyqrcode


# brew tap brewsci/science
# brew tap brewsci/bio

brew uninstall --ignore-dependencies python@2
# Remove outdated versions from the cellar
# brew cleanup
