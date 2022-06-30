#!/bin/bash

cd $TEST_FOLDER
docker build --build-arg CHROMEDRIVER_VERSION=$CHROMEDRIVER_VERSION \
    --build-arg GECKODRIVER_VERSION=$GECKODRIVER_VERSION \
    --build-arg GRID_VERSION=$GRID_VERSION \
    -t chrome-firefox:local .
cd ..
cd test
docker build --build-arg JAVA_VERSION=$JAVA_TEST_VERSION --build-arg GECKODRIVER_VERSION=$GECKODRIVER_VERSION --build-arg CHROMEDRIVER_VERSION=$CHROMEDRIVER_VERSION -t test:local .   
