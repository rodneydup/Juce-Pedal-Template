# JUCE-Pedal-Template

A template repo for JUCE/Pedal projects. Taken from Aaron Anderson, who did all the tedious CMake work to make this compile painlessly.

NOTE: after generating a new git repo from this template, submodules aren't brought in for some reason, so you'll have to run:
```
git submodule add https://github.com/aaronaanderson/pedal.git
git submodule add https://github.com/juce-framework/JUCE.git
```

## Building

Works with cmake/make on Ubuntu, both cmake and make *should* work on mac too. It uses Juce 6 and pedal, both are submodules.

NOTE: it seems that Cmake 3.15 or newer is needed.

To clone the kitchen sinc repository, open terminal:

```terminal
git clone --recursive -j4 https://github.com/aaronaanderson/KitchenSinc.git
```

The --recursive flag tells git to grab pedal and juce from their respective repositories at the same time. If you cloned and forgot the --recursive flag, you can grab the repositories updating the submodules. 

```terminal
cd KitchenSinc
git submodule update --init --recursive
```

Now you should have all the pieces to the puzzle. Make a build folder to store all the garbage cmake spews out 

```terminal
mkdir build
cd build
```

Now you can run cmake. Cmake should default to make as a generator....I think this applies to mac as well...

```terminal
cmake ..
```

If this suceeds, you should have a make file. Run it like this

```terminal
make
```

Pedal and JUCE should build. If you want this to happen faster, you should have typed

```terminal
make -j4
```

replacing 4 with how ever many threads your CPU can execute simultaneously (if you don't know guess low)

If by some mircale you have made it this far you should be able to execute the program.

```terminal
./KitchSinc_artefacts/Kitchen-Sinc
```

This should provide you a window with a sine wave. A humble beginning.
