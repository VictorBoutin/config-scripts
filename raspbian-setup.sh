# use bash -c "$(curl -fsSL https://raw.githubusercontent.com/laurentperrinet/config-scripts/master/raspbian-setup.sh)"

echo "-------------------------------------------------------"
echo "updating and upgrading"
echo "-------------------------------------------------------"
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install apt-transport-https

echo "-------------------------------------------------------"
echo "installing utilities"
echo "-------------------------------------------------------"
sudo apt-get install -y git wget curl zip rsync vim aptitude
# sudo apt-get install -y avahi-daemon mc zsh file-roller screen tmux dialog cifs-utils usbmount tightvncserver nodejs hfsplus

#echo "-------------------------------------------------------"
#echo "starting vncserver"
#echo "-------------------------------------------------------"
# vncserver :1

# Tested on a Raspberry Pi 3 running Raspbian Jessie Lite (2016-05-27,, kernel 4.4)
# – http://computers.tutsplus.com/tutorials/using-a-raspberry-pi-as-an-airplay-receiver--mac-54316

# install dependencies
#sudo apt-get install build-essential libssl-dev libcrypt-openssl-rsa-perl libio-socket-inet6-perl libwww-perl libmodule-build-perl libasound2-dev libao-dev pulseaudio libpulse-dev avahi-utils libavahi-client-dev

# configure and build
#git clone https://github.com/abrasive/shairport.git
#cd shairport
#./configure
#make

# launch
#./shairport -a "Raspberry Pi"

# connect from your mac (system preferences > audio > output)

# set up network connection (e.g. using wpa_cli)
# wpa_cli

echo "-------------------------------------------------------"
echo " python 3"
echo "-------------------------------------------------------"
#------------------------------------------------------
sudo apt-get install -y build-essential libncursesw5-dev
sudo apt-get install -y libgdbm-dev libc6-dev
sudo apt-get install -y zlib1g-dev libsqlite3-dev tk-dev
sudo apt-get install -y libssl-dev openssl
sudo apt-get install -y libreadline-dev libbz2-dev
#------------------------------------------------------

sudo apt-get -y install python3-dev python3-tk
#sudo apt-get -y install python3-imaging-tk ## the packet has been renamed or removed
sudo apt-get -y install ipython3 ipython3-notebook ipython3-qtconsole


sudo apt-get -y install python3-pip
# sudo easy_install3 -U pip

sudo pip3 install  ipykernel

# ipython3 kernelspec install-self
# ipython3 kernel install
# python3 -m pip install ipykernel
# python3 -m ipykernel install --user
#ipython profile create nbserver
jupyter notebook --generate-config
ipython3 -c'from notebook.auth import passwd; passwd()'
mv jupyter_notebook_config.py /home/pi/.jupyter/jupyter_notebook_config.py

sudo pip3 install jupyter

#------------------------------------------------------
sudo apt-get -y install libncurses5-dev
sudo apt-get -y install python-dev
#------------------------------------------------------

sudo pip3 install readline
sudo pip3 install ipyparallel


sudo pip3 install jupyterlab
sudo jupyter serverextension enable --py jupyterlab --sys-prefix

# remove mathematica
#sudo apt-get remove wolfram-engine
#sudo rm /usr/share/raspi-ui-overrides/applications/wolfram-language.desktop /usr/share/raspi-ui-overrides/applications/wolfram-mathematica.desktop


sudo apt-get -y install libblas-dev liblapack-dev
sudo apt-get -y install libatlas-base-dev gfortran

sudo apt-get -y install python3-matplotlib python3-scipy \
  python3-pandas python3-nose python3-numpy-dev python3-seaborn python3-simpy

echo "-------------------------------------------------------"
echo "Installation of openretina dependencies"
echo "-------------------------------------------------------"
sudo apt-get install -y install python3-zmq

sudo apt-get install -y python3-picamera
sudo pip3 install moviepy
#
echo "-------------------------------------------------------"
echo " LaTeX "
echo "-------------------------------------------------------"

sudo apt-get install -y texlive
sudo apt-get install -y texlive-latex-extra
sudo apt-get install -y dvipng pandoc
sudo apt-get install -y texlive-xetex


echo "-------------------------------------------------------"
echo " git repositories "
echo "-------------------------------------------------------"

sudo pip3 install -U git+https://github.com/NeuralEnsemble/NeuroTools.git
sudo pip3 install -U git+https://github.com/bicv/SLIP.git
cd
git clone https://github.com/laurentperrinet/openRetina
cd openRetina
pip3 install --user -e .
cd ..

echo "-------------------------------------------------------"
echo "reboot when ready"
echo "-------------------------------------------------------"
