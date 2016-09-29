# Header
std_msgs/Header header

# decision on object recognition result, 0 for object not found, 1 for object found
float32 decision

# score of recognition
float32 score

# scale of recognition, zero means no scale calculation
float32 scale

# detected object poses
geometry_msgs/Pose2D[] poses
