
python3 -m pip install --user torchvision

python3 -m pip uninstall -y torch
python3 -m pip uninstall -y --user torch

python3 -m pip install --user pyyaml

cd ../..
rm -fr pytorch
git clone --recursive https://github.com/pytorch/pytorch

cd pytorch

# MKL_INCLUDE_DIR=/usr/local/Cellar/mkl-dnn/0.14/
# NO_MKLDNN=True
# NO_CUDA=True CC=clang CXX=clang++ PYTHON_EXECUTABLE=/usr/local/bin/python3 python3 setup.py install
#python3 setup.py clean
python3 -m pip install --user  .

cd ..
rm -fr pytorch
cd config/config-scripts
