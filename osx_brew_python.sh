#!/bin/bash
# 1. install Xcode:
# From this url : http://itunes.apple.com/us/app/xcode/id497799835?mt=12 install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install HomeBrew
# It is recommend to run the bootstrap_brew.sh script to obtain core packages
# sh osx_brew_bootstrap.sh

# 3. install python3 and friends
# https://github.com/mxcl/homebrew/wiki/Homebrew-and-Python
# tip: CFLAGS=-I$(brew --prefix)/include LDFLAGS=-L$(brew --prefix)/lib pip install <package>
#
# https://stackoverflow.com/questions/51125013/how-can-i-install-a-previous-version-of-python-3-in-macos-using-homebrew/51125014#51125014
brew install python
# brew unlink python
# brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/f2a764ef944b1080be64bd88dca9a1d80130c558/Formula/python.rb
# brew switch python 3.6.5_1
# brew link python
# echo 'export PATH="/usr/local/opt/python@3.8/bin:$PATH"' >> ~/.path
rm /usr/local/bin/python
rm /usr/local/bin/python3
#ln -s /usr/local/bin/python3 /usr/local/bin/python
ln -s  /usr/local/opt/python@3.8/bin/python3 /usr/local/bin/python
ln -s  /usr/local/opt/python@3.8/bin/python3 /usr/local/bin/python3

brew uninstall python@2
brew uninstall --ignore-dependencies python@2

python3 -m ensurepip --upgrade # https://docs.python.org/3.7/library/ensurepip.html
python3 -m pip install -U pip wheel
python3 -m pip install -U setuptools setuptools-scm
python3 -m pip install -U twine

# testing
python3 -m pip install -U coverage
python3 -m pip install -U pytest
python3 -m pip install -U nose

# numpy
# sudo chown -R $(whoami):admin /usr/local
brew untap homebrew/science
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
# python3 -m pip install -U numpy #--with-openblas
python3 -m pip install -U numexpr
#python3 -m pip install -U numpy
python3 -m pip install -U lazyarray
python3 -m pip install -U sqlalchemy python-dateutil tqdm requests cached_property
python3 -m pip install -U cython
# ipython -c "import numpy; numpy.test() "
python3 -m pip install -U tables
python3 -m pip install -U h5py
python3 -m pip install -U pillow
python3 -m pip install -U quantities
python3 -m pip install -U pandas
python3 -m pip install -U seaborn
brew uninstall hdf5
python3 -m pip install -U lmfit
python3 -m pip install -U easydict

# editing
# brew install vim --override-system-vi # --with-python3
# brew install macvim --env-std --override-system-vim --with-python3
# scipy et al
# python3 -m pip install -U scipy # --without-python@2
brew install scipy # --without-python@2
# python -c "import scipy; scipy.test() "
python3 -m pip install -U statsmodels
python3 -m pip install -U jedi
python3 -m pip install -U nengo

python3 -m pip install -U jedi

python3 -m pip install -U psutil
# pip install -U powerline-status
# sh ../libs/powerline-fonts/install.sh
# mac stuff
python3 -m pip install -U webassets
python3 -m pip install -U markdown
python3 -m pip install -U lxml
python3 -m pip install -U ghp-import2
nikola plugin -i rest_html5
nikola plugin -i tx3_tag_cloud
python3 -m pip install -U "Nikola[extras]"
python3 -m pip install -U  rst2html5
# pylab
python3 -m pip install -U pyparsing
python3 -m pip install -U python-dateutil
# pip install git+git://github.com/matplotlib/matplotlib.git
python3 -m pip install -U matplotlib
# python -c "import pylab; pylab.test() "
python3 -m pip install -U imagen
python3 -m pip install -U dask
python3 -m pip install -U holoviews
python3 -m pip install -U bokeh
python3 -m pip install -U datashader

# editing environment
brew install zmq
python3 -m pip install -U pyzmq
python3 -m pip install -U pygments
python3 -m pip install -U tornado
python3 -m pip install -U jsonschema
python3 -m pip install -U terminado
# to use nbconvert with the ipython notebook, you need to install pandoc
brew cask install nteract
python3 -m pip install ipykernel
python3 -m ipykernel install --user
brew install pandoc
brew install pandoc-citeproc
brew install pandoc-crossref
python3 -m pip install -U jinja2

# JUPYTER

python3 -m pip install -U jupyter
python3 -m pip install -U ipywidgets
jupyter nbextension install --user --py widgetsnbextension
jupyter nbextension enable --py  widgetsnbextension
python3 -m pip install -U jupyterlab

python3 -m pip install -U ipython[all]
python3 -m pip install -U version-information watermark
python3 -m pip install -U jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
python3 -m pip install -U jupyter_nbextensions_configurator
jupyter nbextensions_configurator enable --user

python3 -m pip install -U nbdime
nbdime extensions --enable
jupyter nbextension enable nbdime --py

python3 -m pip install -U tqdm
python3 -m pip install -U autopep8
jupyter labextension uninstall  @ryantam626/jupyterlab_black
jupyter labextension install @jupyterlab/shortcutui
#jupyter nbextension install https://github.com/kenkoooo/jupyter-autopep8/archive/master.zip --user
#jupyter nbextension enable jupyter-autopep8-master/jupyter-autopep8
jupyter nbextension uninstall @jupyter-autopep8-master/jupyter-autopep8
# https://github.com/ryantam626/jupyterlab_code_formatter
python3 -m pip install jupyterlab_code_formatter

# https://github.com/jupyterlab/jupyterlab-git
python3 -m pip install jupyterlab-git
jupyter labextension install @jupyterlab/git
jupyter serverextension enable --py jupyterlab_git

jupyter labextension install @jupyterlab/toc
jupyter labextension install @jupyterlab/latex


# https://github.com/jupyterlab/jupyterlab-latex
python3 -m pip install jupyterlab_latex
python3 -m pip install -U plotly
python3 -m pip install git+https://github.com/mkrphys/ipython-tikzmagic

jupyter labextension update --all
jupyter lab build

# HACKS
# brew uninstall pyqt
# brew uninstall qt
# brew uninstall qt@5.7

#
brew install sip # --without-python@2
# brew install pyqt --without-python@2
python3 -m pip install -U sphinx
python3 -m pip install -U sphinx_rtd_theme
# pygame
# brew install --HEAD smpeg
#brew uninstall sdl2 sdl2_image sdl2_mixer sdl2_ttf  sdl2_gfx sdl2_net
#brew install sdl sdl_image sdl_mixer sdl_ttf  sdl_gfx sdl_net

# pyglet
python3 -m pip install -U pyglet
python3 -m pip install -U pygame
python3 -m pip install -U pyOpenGL
python3 -m pip install -U gloo

# 1. install HomeBrew + python
# sh osx_brew_python.sh

# install scientific packages
brew install libyaml
python3 -m pip install -U pybtex
#brew install --with-openblas --with-valgrind r
#sudo ln -s "/usr/local/opt/r/R.framework" /Library/Frameworks
#pip install -U rpy2

# video utilities
python3 -m pip install -U svgwrite
brew install x264
brew install ffmpeg # --with-libvorbis --with-libvpx
python3 -m pip install -U decorators
python3 -m pip install -U imageio
python3 -m pip install -U imageio-ffmpeg
python3 -m pip install -U tqdm
#python3 -m pip install -U git+https://github.com/meduz/moviepy@moviepy3
python3 -m pip install -U gizeh
# python3 -m pip install -U moviepy
# python3 -m pip install -U https://github.com/Zulko/moviepy
python3 -m pip install -U moviepy
brew install povray
python3 -m pip install -U vapory
# python3 -m pip install -U git+https://github.com/vispy/vispy.git
python3 -m pip install -U vispy
python3 -m pip install -U napari
python3 -m pip install -U pyprind
python3 -m pip install -U pdfrw
python3 -m pip uninstall  itk

# science
# brew tap homebrew/science
brew install mkl-dnn
python3 -m pip install -U mkl-devel
python3 -m pip install -U onnx
python3 -m pip install -U pyyaml
brew install protobuf # --without-python@2 --with-python
# brew install tbb
# mathematics
python3 -m pip install -U sympy
#machine learning
python3 -m pip install -U joblib
# python3 -m pip install -U git+https://github.com/meduz/scikit-learn@sparsenet
python3 -m pip install -U scikit-learn
# python3 -m pip install -U git+https://github.com/scikit-learn/scikit-learn
python3 -m pip install -U scikit-image
# BICV
# python3 -m pip install -U git+https://github.com/bicv/SLIP
# python3 -m pip install -U git+https://github.com/bicv/LogGabor
# python3 -m pip install -U git+https://github.com/bicv/SparseEdges
# python3 -m pip install -U SparseEdges
# deep learning
# python3 -m pip install -U tensorflow
python3 -m pip install tensorflow==1.14.0
python3 -m pip install tensorflow-estimator==1.14.0
python3 -m pip install tensorboard==1.14.0
python3 -m pip install torch==1.1.0
python3 -m pip install torchvision==0.2.1
python3 -m pip install -U dlib
# python3 -m pip install -U torchvision-enhance
#python3 -m pip install -U

#python3 -m pip install -U python-pygaze
#python3 -m pip install git+https://github.com/esdalmaijer/PyGazeAnalyser

# neuralensemble
brew install gsl
python3 -m pip install -U neo
python3 -m pip install -U interval
python3 -m pip install -U NeuroTools
python3 -m pip install -U brian2
python3 -m pip install -U brian2genn
python3 -m pip install -U pynn

# latex, bibliography and friends
# sh osx_install_tex_live.sh
brew install bib-tool
python3 -m pip install -U bibtexparser
# brew install python
# pyenv global homebrew
# pyenv rehash

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
# python3 -m pip install -U git+https://github.com/psychopy/psychopy
# python3 -m pip install -U psychopy

python3 -m pip install -U pypng
python3 -m pip install -U pyqrcode


# brew tap brewsci/science
# brew tap brewsci/bio

brew uninstall --ignore-dependencies python@2
# Remove outdated versions from the cellar
brew cleanup
