FROM maven:3-jdk-8

RUN \
	apt-get update \
	&& apt-get install -y git-core \
	&& rm -rf /var/lib/apt/lists/*

RUN \
	groupadd --system commafeed --gid 50000 \
	&& useradd --system --create-home --gid commafeed --uid 50000 commafeed \
	&& mkdir /opt/commafeed \
  && chown -R commafeed:commafeed /opt

WORKDIR /opt/commafeed
USER commafeed

RUN \
	git clone \
	https://github.com/Athou/commafeed.git \
	--depth 1 \
	--branch 2.1.0 \
	. \
	&& git checkout 68f9852790211575f91cab6815445acd3e96cffd

RUN mvn clean package

VOLUME /data

CMD java -jar target/commafeed.jar server /data/config.yml
