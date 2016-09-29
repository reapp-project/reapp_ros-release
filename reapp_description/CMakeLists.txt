cmake_minimum_required(VERSION 2.8.3)
project(reapp_description)

find_package(catkin REQUIRED
            )
catkin_package()

install(DIRECTORY urdf srdf
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
       )
