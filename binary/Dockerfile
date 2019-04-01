FROM christimperley/turtlebot:base
MAINTAINER Chris Timperley "christimperley@googlemail.com"

RUN apt-get update &&\
    apt-get install -y  ros-kinetic-turtlebot\
                        ros-kinetic-turtlebot-apps\
                        ros-kinetic-turtlebot-interactions\
                        ros-kinetic-turtlebot-simulator\
                        ros-kinetic-kobuki* \
			ros-kinetic-astra* \
#                        ros-kinetic-rocon-remocon\
                        ros-kinetic-ar-track-alvar-msgs &&\
#                        ros-kinetic-rocon-qt-library &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
