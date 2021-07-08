#!/bin/bash
# 1. install Xcode:
# From this url : http://itunes.apple.com/us/app/xcode/id497799835?mt=12 install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install Home# brew
# It is recommend to run the bootstrap_# brew.sh script to obtain core packages
# sh osx_# brew_bootstrap.sh

# 3. install /usr/local/opt/python@3.8/bin/python3 and friends
# https://github.com/mxcl/home# brew/wiki/Home# brew-and-Python
# tip: CFLAGS=-I$(# brew --prefix)/include LDFLAGS=-L$(# brew --prefix)/lib pip install <package>
#
# brew install python
# rm /usr/local/bin/python /usr/local/bin/python3
#ln -s /usr/local/bin//usr/local/opt/python@3.8/bin/python3 /usr/local/bin/python
#ln -s /usr/local/opt/python@3.9/libexec/bin//usr/local/opt/python@3.8/bin/python3 /usr/local/bin/python
#ln -s /usr/local/opt/python@3.9/libexec/bin//usr/local/opt/python@3.8/bin/python3 /usr/local/bin/python3

# brew uninstall python@2
# brew uninstall --ignore-dependencies python@2

/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y twine

# testing
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y coverage
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y pytest
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y nose

# numpy
# sudo chown -R $(whoami):admin /usr/local
## brew untap home# brew/science
# https://github.com/pytorch/glow
brew uninstall opencv
brew uninstall cmake graphviz libpng ninja protobuf wget
# brew uninstall llvm@7

brew uninstall suite-sparse
brew uninstall gcc
brew uninstall cmake
brew uninstall fftw
brew uninstall libtool
brew uninstall numpy # --without-python@2
# /usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y numpy #--with-openblas
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y numexpr
#/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y numpy
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y lazyarray
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y sqlalchemy python-dateutil tqdm requests cached_property
brew uninstall cython
# ipython -c "import numpy; numpy.test() "
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y tables
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y h5py
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y pillow
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y quantities
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y pandas
# https://shapely.readthedocs.io/en/latest/manual.html
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y fiona geopandas shapely fitparse
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y seaborn
# brew uninstall hdf5
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y lmfit
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y easydict

# editing
# brew uninstall vim --override-system-vi # --with-python3
# brew uninstall macvim --env-std --override-system-vim --with-python3
# scipy et al
# /usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y scipy # --without-python@2
brew uninstall scipy # --without-python@2
# python -c "import scipy; scipy.test() "
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y statsmodels
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y jedi
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y nengo

/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y jedi

/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y psutil
# pip install -U powerline-status
# sh ../libs/powerline-fonts/install.sh
# mac stuff
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y webassets
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y markdown
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y lxml
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y ghp-import2
#     nikola plugin -i rest_html5
# nikola plugin -i tx3_tag_cloud
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y "Nikola[extras]"
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y  rst2html5
# pylab
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y pyparsing
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y python-dateutil
# pip install git+git://github.com/matplotlib/matplotlib.git
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y matplotlib
# python -c "import pylab; pylab.test() "
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y imagen
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y dask
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y holoviews
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y bokeh
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y datashader

# editing environment
brew uninstall zmq
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y pyzmq
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y pygments
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y tornado
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y jsonschema
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y terminado
# to use nbconvert with the ipython notebook, you need to install pandoc
# brew cask install nteract
/usr/local/opt/python@3.8/bin/python3 -m pip install ipykernel
/usr/local/opt/python@3.8/bin/python3 -m ipykernel install --user
brew uninstall pandoc
brew uninstall pandoc-citeproc
brew uninstall pandoc-crossref
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y jinja2

# # jupyter

/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y # jupyter
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y ipywidgets
# jupyter nbextension install --user --py widgetsnbextension
# jupyter nbextension enable --py  widgetsnbextension
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y # jupyterlab # --pre
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y voila

/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y ipython[all]
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y version-information watermark
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y # jupyter_contrib_nbextensions
# jupyter contrib nbextension install --user
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y # jupyter_nbextensions_configurator
# jupyter nbextensions_configurator enable --user

/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y nbdime
nbdime extensions --enable
# jupyter nbextension enable nbdime --py

/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y tqdm
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y autopep8
# jupyter labextension uninstall  @ryantam626/# jupyterlab_black
# jupyter labextension install @# jupyterlab/shortcutui
## jupyter nbextension install https://github.com/kenkoooo/# jupyter-autopep8/archive/master.zip --user
## jupyter nbextension enable # jupyter-autopep8-master/# jupyter-autopep8
# jupyter nbextension uninstall @# jupyter-autopep8-master/# jupyter-autopep8
# https://github.com/ryantam626/# jupyterlab_code_formatter
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y # jupyterlab_code_formatter # jupyterlab_black


/usr/local/opt/python@3.8/bin/python3 -m pip install 'python-language-server[all]'

# https://github.com/# jupyterlab/# jupyterlab-git
/usr/local/opt/python@3.8/bin/python3 -m pip install # jupyterlab-git
# jupyter labextension install @# jupyterlab/git
# jupyter serverextension enable --py # jupyterlab_git
# jupyter labextension install @# jupyterlab/toc
# jupyter labextension install @# jupyterlab/latex

# jupyter labextension install @# jupyter-voila/# jupyterlab-preview

# https://github.com/# jupyterlab/# jupyterlab-latex
/usr/local/opt/python@3.8/bin/python3 -m pip install # jupyterlab_latex
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y plotly
/usr/local/opt/python@3.8/bin/python3 -m pip install git+https://github.com/mkrphys/ipython-tikzmagic

# jupyter labextension update --all
# jupyter lab build

# HACKS
# # brew uninstall pyqt
# # brew uninstall qt
# # brew uninstall qt@5.7

#
brew uninstall sip # --without-python@2
# brew uninstall pyqt --without-python@2
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y sphinx
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y sphinx_rtd_theme
# pygame
# brew uninstall --HEAD smpeg
## brew uninstall sdl2 sdl2_image sdl2_mixer sdl2_ttf  sdl2_gfx sdl2_net
#brew uninstall sdl sdl_image sdl_mixer sdl_ttf  sdl_gfx sdl_net

# pyglet
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y pyglet
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y pygame
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y pyOpenGL
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y gloo

# 1. install Home# brew + python
# sh osx_# brew_python.sh

# install scientific packages
brew uninstall libyaml
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y pybtex
#brew uninstall --with-openblas --with-valgrind r
#sudo ln -s "/usr/local/opt/r/R.framework" /Library/Frameworks
#pip install -U rpy2

# video utilities
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y svgwrite
brew uninstall x264
brew uninstall ffmpeg # --with-libvorbis --with-libvpx
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y decorators
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y imageio
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y imageio-ffmpeg
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y tqdm
#/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y git+https://github.com/meduz/moviepy@moviepy3
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y gizeh
# /usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y moviepy
# /usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y https://github.com/Zulko/moviepy
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y moviepy pygifsicle
brew uninstall povray
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y vapory
# /usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y git+https://github.com/vispy/vispy.git
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y vispy
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y napari
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y pyprind
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y pdfrw
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall  itk

# science
# # brew tap home# brew/science
brew uninstall mkl-dnn
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y mkl-devel
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y onnx
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y pyyaml
brew uninstall protobuf # --without-python@2 --with-python
# brew uninstall tbb
# mathematics
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y sympy
#machine learning
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y joblib
# /usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y git+https://github.com/meduz/scikit-learn@sparsenet
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y scikit-learn
# /usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y git+https://github.com/scikit-learn/scikit-learn
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y scikit-image
# BICV
# /usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y git+https://github.com/bicv/SLIP
# /usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y git+https://github.com/bicv/LogGabor
# /usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y git+https://github.com/bicv/SparseEdges
# /usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y SparseEdges
# deep learning
# /usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y tensorflow
/usr/local/opt/python@3.8/bin/python3 -m pip install tensorflow==1.14.0
/usr/local/opt/python@3.8/bin/python3 -m pip install tensorflow-estimator==1.14.0
/usr/local/opt/python@3.8/bin/python3 -m pip install tensorboard==1.14.0

#wget https://download.pytorch.org/whl/cpu/torch-1.7.0-cp38-none-macosx_10_9_x86_64.whl -0 /tmp/torch-1.7.0-cp39-none-macosx_10_9_x86_64.whl
#/usr/local/opt/python@3.8/bin/python3 -m pip install /tmp/torch-1.7.0-cp39-none-macosx_10_9_x86_64.whl # torch==1.1.0
#/usr/local/opt/python@3.8/bin/python3 -m pip install torchvision #==0.2.1
brew uninstall libtorch torchvision

/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y dlib
# /usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y torchvision-enhance
#/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y

#/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y python-pygaze
#/usr/local/opt/python@3.8/bin/python3 -m pip install git+https://github.com/esdalmaijer/PyGazeAnalyser

# neuralensemble
brew uninstall gsl
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y neo
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y interval
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y NeuroTools
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y brian2
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y brian2genn
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y csa
brew uninstall nest
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y pynn

# latex, bibliography and friends
# sh osx_install_tex_live.sh
brew uninstall bib-tool
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y bibtexparser
# brew uninstall python
# pyenv global home# brew
# pyenv rehash

# PAPIS https://papis.readthedocs.io/en/latest/install.html
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y papis
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y papis-zotero

# pip2 install -U pip setuptools
# python2 -m pip install ipykernel
# python2 -m ipykernel install --user
# pip2 install beets
# pip2 install flask
# pip2 install pylast
# pip2 install discogs_client
# brew uninstall chromaprint
# pip2 install  pyacoustid
# brew uninstall wxpython
# pip2 install -U configobj
# /usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y git+https://github.com/psychopy/psychopy
# /usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y psychopy

/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y pypng
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y pyqrcode

/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y pip wheel

/usr/local/opt/python@3.8/bin/python3 -m ensurepip --upgrade # https://docs.python.org/3.7/library/ensurepip.html
/usr/local/opt/python@3.8/bin/python3 -m pip uninstall -y setuptools setuptools-scm

# # brew tap # brewsci/science
# # brew tap # brewsci/bio

# brew uninstall --ignore-dependencies python@2
# Remove outdated versions from the cellar
# brew cleanup


# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"
