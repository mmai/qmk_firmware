# dependencies on nixos : qmk, gcc-arm-embedded, dfu-util
init:
    qmk setup
buildPlank:
    make "planck/rev6:mmaiArsenik"
flashPlank:
    sudo make "planck/rev6:mmaiArsenik:flash"
buildErgodox:
    make "ergodox_ez:mmaiArsenik"
flashErgodox:
    sudo make "ergodox_ez:mmaiArsenik:flash"
