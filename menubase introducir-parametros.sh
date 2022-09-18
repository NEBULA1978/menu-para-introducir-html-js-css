#!/bin/bash
#todoreal.com
while :; do
    #Menu
    # Pagina buenos apuntes: https://vinuesa.github.io/intro2linux/index.html
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar directorio"
    echo "2. Introducir comandos linux"
    echo "3. Entrada de datos "
    echo "5. Leer varias variables con read "
    echo "6. Paso de argumentos "
    echo "7. Paso de argumentos. Orden shift "
    echo "8. Crear carpetas con index.html dentro"

    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo "Mostrando directorio"
        ls
        read foo
        ;;
    2)
        echo "Introducir comando linux"
        #Ejemplo 6: uso de salidas de comandos en una expresión

        echo Por favor, introduzca la ruta
        read ruta
        echo "Ruta actual: $($ruta)"

        exit 0

        read foo
        ;;
    3)
        echo "Entrada de datos"

        #Ejemplo 7: Entrada de datos

        echo Por favor, introduzca su nombre
        read nombre
        echo "¡Hola $nombre!"
        exit 0

        read foo
        ;;
    5)
        echo "Leer varias variables con read"

        #Ejemplo 7: Entrada de datos

        echo Por favor, introduzca su nombre y apellidos
        read nombre apellidos
        echo "¡Hola $apellidos, $nombre!"
        exit 0

        read foo
        ;;
    6)
        echo "Paso de argumentos"

        #Ejemplo 7: Entrada de datos

        #Ejemplo 9: Paso de argumentos

        echo "Nombre del script: $0"
        echo -n "Valor de los argumentos: "
        echo "$1 $2 $3 $4 $5 $6 $7 $8 $9"
        echo "Número de argumentos: $#"
        echo "Todos los argumentos: $*"
        echo "Todos los argumentos: $@"
        exit 0

        read foo
        ;;
    7)
        echo "Paso de argumentos. Orden shift"

        #Ejemplo 10: Paso de argumentos. Orden shift

        n=1
        echo "Nombre del script: $0"
        while [ $# -gt 0 ]; do #ojo! dejar espacios
            echo "Valor argumento $n: $1"
            let "n=n+1"
            shift
        done
        exit 0

        read foo
        ;;
    8)
        echo "Crear carpetas con index.html dentro"

        function read createFolders() {
            for i in {0..10}; do
                mkdir "carpeta $1"
                cd "carpeta $i"
                touch 'index.html'
                cd ..
            done

        }
        createFolders

        read foo
        ;;

    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
