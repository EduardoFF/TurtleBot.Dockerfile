all: base binary source

base:
	docker build -t eduardofeo/turtlebot:base base

binary: base
	docker build -t eduardofeo/turtlebot:binary binary

source: base
	docker build -t eduardofeo/turtlebot:source source

push: base binary source
	docker push eduardofeo/ros-turtlebot-kinetic

.PHONY: base binary source
