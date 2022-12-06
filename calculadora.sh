#!/bin/bash

echo "Escolha uma numero:"
echo "1 - subtraçao "
echo "2 - adiçao "
echo "3 - divisao"
echo "4 - multiplicaçao"
echo "5 - raiz quadrada"
echo "6 - potencia "

read equacao
echo "digite um numero"
  read num1
echo "digite outro numero"
  read num2

function somar(){
resultado=$(($num1+$num2))
echo $resultado
}

function subtrair(){
resultado=$(($num1-$num2))
echo $resultado
}

function multiplicar(){
resultado=$(($num1*$num2))
echo $resultado
}

function dividir(){
resultado=$(($num1/$num2))
echo $resultado
}

function raiz(){
resultado=$((sqrt$num1))
echo $resultado
}

function potencia(){
resultado=$(($num1**num2))
echo $resultado
}

if [ $equacao -eq 1 ]; then
  #resultado=$[num1+num2]
  resultado=$( subtrair num1 num2 )
elif [ $equacao -eq 2 ]; then
  resultado=$( somar num1 num2 )
elif [ $equacao -eq 3 ]; then
  resultado=$( dividir num1 num2 )
elif [ $equacao -eq 4 ]; then
  resultado=$( multiplicar num1 num2 )
elif [ $equacao -eq 5 ]; then
  resultado=$( echo "sqrt( $num1 )" | bc)
elif [ $equacao -eq 6 ]; then
    resultado=$(potencia num1 num2)

else
  echo "Opção inválida."
fi
echo "O resultado é: $resultado"

