cd ~

mkdir -p ~/catkin_ws/src

cd ~/catkin_ws/

catkin_make

echo "source $HOME/catkin_ws/devel/setup.bash" >> ~/.bashrc


cd ~

mkdir repos
cd repos

git clone -b aero git@github.com:kurtgeebelen/IWD_ros.git
git clone -b dev git@github.com:kurtgeebelen/inwaredrones.git 


echo "export PYTHONPATH=$PYTHONPATH:$HOME/repos/inwaredrones" >> ~/.bashrc

cd inwaredrones/oase


python -m pip install --upgrade pip
python -m pip install --upgrade pip
python -m pip install -r requirements.txt


cd ~/catkin_ws/src/

ln -s $HOME/repos/IWD_ros/algorithms/sensor_fusion
ln -s $HOME/repos/IWD_ros/controllers/drone_control
ln -s $HOME/repos/IWD_ros/sensors/uwb/decawave
ln -s $HOME/repos/IWD_ros/demos

cd ..

catkin_make



