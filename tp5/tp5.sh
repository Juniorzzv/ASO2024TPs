#! /bin/bash
echo "Calculadora"
echo "Ingrese un numero entero"
read num1
echo "Ingrese otro numero entero"
read num2
echo "Ingrese el tipo calculo que desee (+,-,*,/)"
read operador

case $operador in
"+")
echo "la suma de '$num1' y '$num2' es: " $(expr $num1 + $num2 )
    ;;
"-")
echo "la resta de '$num1' y '$num2' es: " $(expr $num1 - $num2 )
    ;;
"*")
echo "la multiplicacion de '$num1' y '$num2' es: " $(expr $num1 \* $num2 )
   ;;
"/")
echo "la division de '$num1' y '$num2' es: " $(expr $num1 / $num2 )
   ;;
*) 
echo "El operador es incorrecto"
;;
esac 
