#!/bin/bash


echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /home/jenkins/prod /tmp/.auth sanjeev@192.168.0.199:/tmp/.auth
scp -i /home/jenkins/prod ./jenkins/deploy/publish sanjeev@192.168.0.199:/tmp/publish

ssh -i /home/jenkins/prod sanjeev@192.168.0.199 "/tmp/publish"
