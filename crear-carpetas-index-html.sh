#!/bin/bash
echo "Crear carpetas con index.html dentro"

function createFolders() {
    for i in {0..10}
     do
        mkdir "carpeta $1"
        cd "carpeta $i"
        touch 'index.html'
        cd ..
    done

}
createFolders
