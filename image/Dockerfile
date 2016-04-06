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

RUN { \
	set -ex; \

	BUILD_DEPS="git maven"; \
	apt-get update; \
	apt-get install --no-install-recommends -y $BUILD_DEPS; \

	# install commafeed
	git clone https://github.com/Athou/commafeed.git --depth 1 --branch 2.1.0 /tmp/commafeed; \
	cd /tmp/commafeed; \
	git checkout 68f9852790211575f91cab6815445acd3e96cffd; \
	mvn package; \
	mv target/commafeed.jar /opt; \

	# clean up
	apt-get remove -y $BUILD_DEPS; \
	apt-get autoremove -y; \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*; \
}

VOLUME /data/commafeed

COPY commafeed.yaml /etc/

COPY start-commfeed /usr/bin
CMD ["start-commafeed"]
