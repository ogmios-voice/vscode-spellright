#!/bin/bash

# requires node-gyp (npm install -g node-gyp) plus CLI developper tools

node-gyp rebuild --target=13.1.7 --arch=ia32 --dist-url=https://atom.io/download/electron
cp build/Release/spellchecker.node ../spellchecker-deb-13.1.7-ia32.node

node-gyp rebuild --target=13.1.7 --arch=x64 --dist-url=https://atom.io/download/electron
cp build/Release/spellchecker.node ../spellchecker-deb-13.1.7-x64.node

node-gyp rebuild --target=17.2.0 --arch=ia32 --dist-url=https://atom.io/download/electron
cp build/Release/spellchecker.node ../spellchecker-deb-17.2.0-ia32.node

node-gyp rebuild --target=17.2.0 --arch=x64 --dist-url=https://atom.io/download/electron
cp build/Release/spellchecker.node ../spellchecker-deb-17.2.0-x64.node
