#!/bin/bash


echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth sanjeev@192.168.0.199:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish sanjeev@192.168.0.199:/tmp/publish

ssh -i /opt/prod sanjeev@192.168.0.199 "/tmp/publish"
