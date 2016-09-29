cmake_minimum_required(VERSION 2.8.3)
project(reapp_msgs)

find_package(catkin REQUIRED
             COMPONENTS
             actionlib_msgs
             geometry_msgs
             message_generation
             moveit_msgs
             sensor_msgs
             std_msgs
            )

add_message_files(DIRECTORY msg
                 FILES
                 RecognitionResult2D.msg
		 RfidTag.msg
		 RfidTags.msg)

add_service_files(DIRECTORY srv
                 FILES
                 DetectObjects.srv
                 ChangeReferenceObject.srv
                 GetCartesianTrajectory.srv
                 ReceivePoseStamped.srv
                 )
add_action_files(DIRECTORY action
                 FILES
                 Execute.action
                 Solder.action)


generate_messages(DEPENDENCIES actionlib_msgs geometry_msgs moveit_msgs sensor_msgs std_msgs)

catkin_package(CATKIN_DEPENDS actionlib_msgs geometry_msgs message_runtime moveit_msgs sensor_msgs std_msgs)
