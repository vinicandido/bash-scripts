#!/bin/bash

# Definindo o array de números aleatórios
array=(10 5 3 8 2 9 1 4 7 6)

# Função para imprimir o array
print_array() {
  for i in "${array[@]}"; do
    echo -n "$i "
  done
  echo
}

echo "Array original:"
print_array

# Implementando o Bubble Sort
n=${#array[@]}
for ((i = 0; i < n-1; i++)); do
  for ((j = 0; j < n-i-1; j++)); do
    if ((array[j] > array[j+1])); then
      # Troca os elementos
      temp=${array[j]}
      array[j]=${array[j+1]}
      array[j+1]=$temp
    fi
  done
done

echo "Array ordenado:"
print_array