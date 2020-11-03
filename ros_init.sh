cd ~

mkdir -p ~/catkin_ws/src

cd ~/catkin_ws/

catkin_make

echo "source $HOME/catkin_ws/devel/setup.bash" >> ~/.bashrc
