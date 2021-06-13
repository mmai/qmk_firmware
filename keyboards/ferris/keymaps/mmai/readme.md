A keymap based on the default for the Ferris keyboard
=====================================================

See [here](../default/readme.md) for the original description of the default layout.


Dev workflow with nix
---------------------

add theses dependencies in shell.nix :

```nix
{ pkgs ? import <nixpkgs> { } }:
with pkgs;
mkShell {
  buildInputs = [
    python38Packages.pip
    python38Packages.hidapi
    hidapi
    busybox
    gcc-arm-embedded
    dfu-util
  ];
}
```

Then init a python virtualenv to be able to install python dependencies :

```sh
python3 -m venv .venv
source .venv/bin/activate
```

Setup qmk with this repository :

```sh
pip3 install qmk
qmk setup -H <path to this qmk_firmware clone>
```

Some commands :
```
new:
	qmk new-keymap -kb ferris/0_2
edit:
	vim /home/henri/qmk_firmware/keyboards/ferris/keymaps/mmai/keymap.json
compile:
	qmk compile -kb ferris/0_2 -km mmai
flash:
	qmk flash -kb ferris/0_2 -km mmai
```
