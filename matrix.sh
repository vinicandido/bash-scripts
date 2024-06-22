#!/bin/bash
matrix=(
    1 2
    3 4
)

# Função para imprimir a matriz
print_matrix() {
    local rows=$1
    local cols=$2
    for ((i=0; i<rows; i++)); do
        for ((j=0; j<cols; j++)); do
            # Calcular o índice do elemento
            index=$((i * cols + j))
            echo -n "${matrix[$index]} "
        done
        echo
    done
}

print_matrix 2 2