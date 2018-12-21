#!/usr/bin/env bash

echo Plugin build begin...


echo "include ':spring-demo', ':basic'"> settings.gradle
echo "include ':buildSrc'">> settings.gradle

./gradlew clean build :buildSrc:bintrayUpload
./gradlew --stop

echo "include ':spring-demo', ':basic'"> settings.gradle
echo "//include ':buildSrc'">> settings.gradle


echo Plugin build success...