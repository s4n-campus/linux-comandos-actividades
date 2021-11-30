#!/bin/bash
NUM1=$((RANDOM%100))
NUM2=$((RANDOM%100))
TOTAL=`expr $NUM1 + $NUM2`
ES_NUMERO='^[0-9]+$'

echo "¿Cuanto es ${NUM1} + ${NUM2}?"; read INT

if ! [[ "$INT" =~ ^[0-9]+$ ]]; then
        echo "EL VALOR INTRODUCIDO NO ES NUMERICO"
else
    if [[ "$INT" = "$TOTAL" ]]; then
            echo "EXCELENTE"
    fi
    if ! [[ "$INT" =~ "$TOTAL" ]]; then
            echo "FALLASTE"
    fi
fi
