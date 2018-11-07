#!/bin/sh
catkin_dir=/home/workspace/catkin_ws

#Launch turtlebot in the custom world
xterm  -e  " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$catkin_dir/src/Worlds/Vin_World.world" &
sleep 10

#Launch gmapping demo
xterm -e " roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$catkin_dir/src/Worlds/Vin_Map.yaml" &
sleep 3

#Launch rviz
xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch"
