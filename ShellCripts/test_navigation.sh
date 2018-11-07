#!/bin/sh

#Launch turtlebot in the custom world
xterm  -e  " roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 10

#Launch gmapping demo
xterm -e " roslaunch turtlebot_gazebo amcl_demo.launch" &
sleep 3

#Launch rviz
xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch"
