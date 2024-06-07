#!/usr/bin/env python3
import rospy
from motor_control.msg import MotorCommands, MotorCommand

def motor_commands_publisher():
    # Initialize the ROS Node
    rospy.init_node('motor_commands_publisher', anonymous=True)
    
    # Create a publisher object
    pub = rospy.Publisher('motor_commands', MotorCommands, queue_size=10)
    
    # Set the loop rate (in Hz)
    rate = rospy.Rate(1) # 1 Hz
    angle = 0.0

    while not rospy.is_shutdown():
        # Create a MotorCommands message
        motor_commands_msg = MotorCommands()
        
        # Example: command to set motor on channel 0 to 0 radians, channel 1 to 1.57 radians
        
        if angle==0.0:
            angle = 3.0
            motor_command1 = MotorCommand(channel=0, angle=angle)
            motor_command2 = MotorCommand(channel=1, angle=angle)
        else:
            angle = 0.0
            motor_command1 = MotorCommand(channel=0, angle=angle)
            motor_command2 = MotorCommand(channel=1, angle=angle)
        # Add commands to the message
        motor_commands_msg.motorcommands = [motor_command1, motor_command2]
        
        # Publish the message
        rospy.loginfo("Publishing motor commands")
        pub.publish(motor_commands_msg)
        
        # Sleep for the remainder of the loop rate
        rate.sleep()

if __name__ == '__main__':
    try:
        motor_commands_publisher()
    except rospy.ROSInterruptException:
        pass

