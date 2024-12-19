# dependencies on nixos : qmk, gcc-arm-embedded, dfu-util
init:
    qmk setup
build:
    make "planck/rev6:mmaiArsenik"
flash:
    sudo make "planck/rev6:mmaiArsenik:flash"
