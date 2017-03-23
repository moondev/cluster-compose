#!/bin/bash

cd /app

./gradlew war

mv /app/build/libs/app.war /pod-vol/app.war

sleep infinity