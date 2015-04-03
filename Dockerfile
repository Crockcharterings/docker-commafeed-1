from ubuntu

run apt-get update && apt-get upgrade -y \
	&& apt-get install -y git-core openjdk-7-jdk maven

workdir /opt/commafeed

run \
	git clone \
	https://github.com/Athou/commafeed.git \
	--depth 1 \
	--branch 2.1.0 \
	. \
	&& git checkout 68f9852790211575f91cab6815445acd3e96cffd

run \
	mvn clean package \
	&& mkdir /data

add image /

cmd /opt/start.sh
