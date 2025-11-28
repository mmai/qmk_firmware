# dependencies on nixos : qmk, gcc-arm-embedded, dfu-util
init:
    qmk setup
buildPlank:
    make "planck/rev6:lafayette"
flashPlank:
    sudo make "planck/rev6:lafayette:flash"
buildErgodox:
    make "ergodox_ez:mmaiArsenik"
flashErgodox:
    sudo make "ergodox_ez:mmaiArsenik:flash"
