#!/bin/bash

echo "Pushing Image"

IMAGE="maven-project"

echo "** Loggin in ***"

docker login -u amsanjeevkumar -p $PASS

docker tag $IMAGE:$BUILD_TAG amsanjeevkumar/$IMAGE:$BUILD_TAG

echo "Pushing Image"

docker push amsanjeevkumar/$IMAGE:$BUILD_TAG
