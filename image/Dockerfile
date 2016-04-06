FROM chpio/gosu:jessie

RUN { \
	set -ex; \

	# add user & group
	groupadd --system --gid 1000 commafeed; \
	useradd --system --uid 1000 --gid 1000 commafeed; \

	# install runtime deps
	apt-get update; \
	apt-get install --no-install-recommends -y openjdk-7-jre-headless ca-certificates; \
	rm -rf /var/lib/apt/lists/*; \
}

ADD https://github.com/Athou/commafeed/releases/download/2.3.0/commafeed.jar /opt/commafeed.jar

VOLUME /data/commafeed

COPY commafeed.yaml /etc/

COPY start-commfeed /usr/bin
CMD ["start-commafeed"]
