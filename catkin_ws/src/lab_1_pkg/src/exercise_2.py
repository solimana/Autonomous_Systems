#!/usr/bin/env python3

import rospy
from gazebo_msgs.srv import SpawnModel, DeleteModel, SetModelState
from gazebo_msgs.msg import ModelState


'''
This node does the following: 
1. publishes to /set_model_state topic via ModelState msg
2. initializes a client that send service requests through:
        a. SpwanModel srv
        b. DeleteModel srv
        c. SetModelState srv
'''
def position_node():

        pub_model = rospy.Publisher('gazebo/set_model_state', ModelState, queue_size=1)

        rospy.init_node('model_service_node', anonymous=True)

        rate = rospy.Rate(10)

        state_msg = ModelState()
        state_msg.model_name = 'turtlebot3_burger'
        state_msg.pose.position.x = 0

        while not rospy.is_shutdown():
                rospy.wait_for_service('/gazebo/set_model_state')
                while (state_msg.pose.position.x<=1):
                        state_msg.pose.position.x += 0.05
                        state_msg.pose.position.y = 0
                        try:
                                set_state = rospy.ServiceProxy('/gazebo/set_model_state', SetModelState)
                                resp = set_state(state_msg)
                        except rospy.ServiceException:
                                print("Service call failed: ")
                                rate.sleep()


if __name__ == '__main__':
        try:
                position_node()
        except rospy.ROSInterruptException:
                pass
