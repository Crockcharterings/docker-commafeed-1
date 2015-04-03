FROM ubuntu

ADD ./start.sh /opt

RUN groupadd -r commafeed \
  && useradd -r -g commafeed commafeed \
  && mkdir -p /opt/commafeed \
  && chown -R commafeed:commafeed /opt

RUN apt-get update && apt-get upgrade -y \
	&& apt-get install -y git-core openjdk-7-jdk maven

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

CMD /opt/start.sh
