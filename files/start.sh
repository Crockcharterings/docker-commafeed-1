#!/bin/bash

if [ ! -f /data/config.yml ]; then
	cp /opt/config.yml /data/config.yml
fi

cd /opt/commafeed
java -jar target/commafeed.jar server /data/config.yml
