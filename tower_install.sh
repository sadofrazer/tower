#!/bin/bash
git clone https://github.com/sadofrazer/tower.git
cd cursus-devops/tower/
tar -xzvf awx.tar.gz -C ~/
cd ~/.awx/awxcompose/
docker-compose up -d
