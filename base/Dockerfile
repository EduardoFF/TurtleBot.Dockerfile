# Based on christimperley/turtlebot:base
FROM ros:kinetic-robot
MAINTAINER Eduardo Feo "eduardofeo@gmail.com"

# Fix inability to launch avahi-daemon correctly
# Modified instructions from https://github.com/dockerimages/docker-systemd
RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
RUN apt-get update && \
    apt-get install -y  wget \
                        libnss-mdns \
                        netatalk \
                        systemd \
                        ros-kinetic-openni-launch \
                        ros-kinetic-image-view && \
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /var/run/dbus
RUN cd /lib/systemd/system/sysinit.target.wants/; ls | grep -v systemd-tmpfiles-setup | xargs rm -f $1 \
    rm -f /lib/systemd/system/multi-user.target.wants/*;\
    rm -f /etc/systemd/system/*.wants/*;\
    rm -f /lib/systemd/system/local-fs.target.wants/*; \
    rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
    rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
    rm -f /lib/systemd/system/basic.target.wants/*;\
    rm -f /lib/systemd/system/anaconda.target.wants/*; \
    rm -f /lib/systemd/system/plymouth*; \
    rm -f /lib/systemd/system/systemd-update-utmp*
ENV init /lib/systemd/systemd
VOLUME ["/sys/fs/cgroup"]

# register astra
ENV TURTLEBOT_3D_SENSOR astra


# Add entrypoint
ADD turtlebot_entrypoint.sh /turtlebot_entrypoint.sh
ENTRYPOINT ["/turtlebot_entrypoint.sh"]
CMD []
