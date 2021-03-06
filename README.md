# JUCE-Pedal-Template

A template repo for JUCE/Pedal projects. Taken from Aaron Anderson, who did all the tedious CMake work to make this compile painlessly.

NOTE: If you generate a new git repo from this template, submodules aren't brought in for some reason (github is apparently working on that issue), so you'll have to run:
```
git submodule add https://github.com/aaronaanderson/pedal.git
git submodule add https://github.com/juce-framework/JUCE.git
```

## Simple Building
All of the hard stuff is done for you by the 3 included scripts.

run `./configure.sh` to init and update the submodules and create the build and bin directories. You only need to run this the first time you set up the repo or whenever you run `clean.sh`

run `./build-run.sh` to build and run your application. This puts the binary in the bin directory by default. You can use this to quickly build and run your app any time you make a change. 

*Note: the flag -j 5 is included in the cmake call in this script by default, which tells cmake to use all 4 processors on my machine. If you have a different number of cores/threads, change this number to your number of CPU threads plus 1.*

run `./clean.sh` to clear binaries and build stuff (you have to run configure.sh again after this).


## Requirements
Tested on Linux, probably works on Mac also.

It seems that Cmake 3.15 or newer is needed.