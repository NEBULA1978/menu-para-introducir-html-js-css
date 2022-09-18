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
    echo "2. Mostrar calendario"
    echo "3. Introducir por consola texto para añadir a archivo texto.txt,Elimina texto que hay anterior e introduce el nuevo "
    echo "5. Mostrar archivo.txt texto introducido"
    echo "6. Añadir por consola texto para añadir a archivo texto.txt,ejecutamos otra vez y vuelve a añadir texto"
    echo "7. Crear archivo texto para añadir a archivo texto2.txt "
    echo "8. Añadir texto a archivo2.txt texto"
    echo "9. Mostrar archivo2.txt texto introducido"
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
        echo "Mostrando calendario"
        cal
        read foo
        ;;
    3)
        echo "Introducir por consola texto para añadira a archivo texto.txt"
        echo "Elimina texto que hay anterior e introduce el nuevo"
        cat > archivo.txt
        read foo
        ;;
    5)
        echo "Mostrar archivo.txt texto introducido"
        cat  archivo.txt
        read foo
        ;;
    6)
        echo "Añadir texto a archivo.txt texto"
        cat >> archivo.txt
        read foo
        ;;
    7)
        echo "Crear archivo texto para añadir a archivo texto2.txt"
        touch archivo2.txt
        read foo
        ;;
    8)
        echo "Añadiendo texto a archivo2.txt texto:"
        cat >> archivo2.txt
        read foo
        ;;
    9)
        echo "Mostrar texto introducido archivo2.txt:"
        cat  archivo2.txt
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
