
# Setting up my iMac

This is just a quick note of what I changed to compile the emulator on my iMac using MacPorts.

```shell
    sudo port search sdl2
    sudo port install libsdl2
```

Not sure I needed them but I also installed

```shell
    sudo port install libsdl2_image
    sudo port install libsdl2_mixer
    sudo port install libsdl2_net
    sudo port install libsdl2_ttf
```

Ran make and only saw single error.  Ran _risc_ emu with disc image and launched fine, was able
to create a Hello World text file and save it back to the disc image mounted. - 2017-08-28 RSD


