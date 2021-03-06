#!/bin/sh
catkin_dir=/home/workspace/catkin_ws

#Launch turtlebot in the custom world
xterm  -e  " roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 10

#Launch amcl demo
xterm -e " roslaunch turtlebot_gazebo amcl_demo.launch" &

sleep 3

#Launch navigation pick_objects node
xterm -e " source $catkin_dir/devel/setup.bash; rosrun pick_objects pick_objects_node" &
sleep 3

#Launch rviz
xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch"
