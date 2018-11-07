#!/bin/sh
catkin_dir=/home/workspace/catkin_ws

#Launch turtlebot in the custom world
xterm  -e  " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$catkin_dir/src/Worlds/Vin_World.world" &
sleep 10

#Launch gmapping demo
xterm -e " roslaunch turtlebot_gazebo gmapping_demo.launch custom_gmapping_launch_file:=$catkin_dir/src/turtlebot_simulator/turtlebot_gazebo/launch/gmapping.launch.xml" &
sleep 3

#Launch wall_follower node
xterm -e " source $catkin_dir/devel.setup.bash; rosrun wall_follower wall_follower_node" &
sleep 3

#Launch rviz
xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch"
