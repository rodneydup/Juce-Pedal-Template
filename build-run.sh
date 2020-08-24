#! /bin/sh

cmake --build ./build -j 5
# this will be weird if there is more than one binary...but that shouldn't usually happen?
./bin/*
