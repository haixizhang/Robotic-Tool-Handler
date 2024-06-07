# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include/eigen3;/usr/share/orocos_kdl/cmake/../../../include".split(';') if "${prefix}/include;/usr/include/eigen3;/usr/share/orocos_kdl/cmake/../../../include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;std_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lsns_ik;-lorocos-kdl".split(';') if "-lsns_ik;-lorocos-kdl" != "" else []
PROJECT_NAME = "sns_ik_lib"
PROJECT_SPACE_DIR = "/home/enis/ros_ws/install"
PROJECT_VERSION = "0.2.3"
