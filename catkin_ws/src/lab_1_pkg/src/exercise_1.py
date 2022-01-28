#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import LaserScan #importing LaserScan from specified location
from geometry_msgs.msg import Twist


#globally declared variable
dist = 0


'''
callback function executed everytime
rospy.Subscriber() receives data
'''
def scan_callback(data):
    global dist 
    dist = data.ranges[0] #extracting only front laser-scan data
    print("Distance = ", dist)


'''
This function will:
1. publish velocity command to /cmd_vel topic
2. subscribe to /scan topic to receive laser-scan data
'''
def exe1_node():

    # Create a publisher object with Twist
    pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10) #topic name, msg type, buffer size
    rospy.Subscriber("/scan", LaserScan, scan_callback) #topic name, msg type, callback function
    # Declare the node, and register it with a unique name
    rospy.init_node('exe1_node', anonymous=True)

    rate = rospy.Rate(10) #executing at a rate of 10Hz

    vel_msg = Twist() #creating object

    while not rospy.is_shutdown():

        if (dist>0.2): #condition to check if near wall
            vel_msg.linear.x = 0.5*(dist-1)
        else:
            vel_msg.linear.x = 0 #halting turtlebot3
        vel_msg.linear.y = 0
        vel_msg.linear.z = 0
        vel_msg.angular.x = 0
        vel_msg.angular.y = 0
        vel_msg.angular.z = 0

        print("Velocity = ", vel_msg.linear.x)
        pub.publish(vel_msg)
        rate.sleep()
        


if __name__ == '__main__':
    try:
        exe1_node()
    except rospy.ROSInterruptException:
        pass