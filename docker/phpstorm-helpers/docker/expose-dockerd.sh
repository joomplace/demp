#!/bin/bash

mkdir -p /etc/systemd/system/docker.service.d
cat ./expose-dockerd.conf > /etc/systemd/system/docker.service.d/startup_options.conf
systemctl daemon-reload
systemctl restart docker.service
