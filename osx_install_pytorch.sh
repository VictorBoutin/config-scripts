# python3 -m pip install torch torchvision
python3 -m pip uninstall -y torch
python3 -m pip uninstall -y torchvision
python3 -m pip install pyyaml libuv #  pkg-config

#brew install torchvision

mkdir -p /tmp/torch_install
cd /tmp/torch_install

# [ ! -d "mkl-dnn" ] && git clone https://github.com/intel/mkl-dnn.git
# cd mkl-dnn
# git pull
# # cd scripts && ./prepare_mkl.sh && cd ..
# make
# make install
# cd ..


[ ! -d "pytorch" ] && git clone --recursive https://github.com/pytorch/pytorch
cd pytorch
#
git clean -f -d
git pull origin master
git submodule update --force --recursive --remote
git submodule update --recursive --remote
git pull origin master

# NO_CUDA=True CC=clang CXX=clang++ python3 setup.py install
# NO_MKLDNN=True
#MACOSX_DEPLOYMENT_TARGET=10.9
# NO_MKLDNN=True
# git checkout v1.1.0
# MKL_INCLUDE_DIR=/usr/local/Cellar/mkl-dnn/0.19/
# USE_OPENCL=True
MACOSX_DEPLOYMENT_TARGET=10.9 NO_CUDA=True CC=clang CXX=clang++ CC=clang CXX=clang++ MAX_JOBS=8 BLAS="OpenBLAS" USE_MKLDNN=0 PYTHON_EXECUTABLE=/usr/local/opt/python/libexec/bin/python /usr/local/opt/python/libexec/bin/python setup.py install
python3 setup.py clean
cd ..

[ ! -d "vision" ] && git clone https://github.com/pytorch/vision.git
cd vision
python3 setup.py install
cd ..

# python3 -m pip install --upgrade https://storage.googleapis.com/tensorflow/mac/cpu/tensorflow-1.12.0-py3-none-any.whl

# git clone https://github.com/lanpa/tensorboardX && cd tensorboardX && python setup.py install
# cd ..

# cd ..
#rm -fr tmp

cd ~/quantic/libraries/config-scripts
