#!/bin/bash
#script principal para png, rodar redirecionando o output para algum arquivo de saida
#deve ter como parametros de entrada as imagens

quality=50
#quality=100
echo "**********************************************"
echo "Compressao para arquivos png"
echo "**********************************************"
./compresspng.sh "$quality" "$@"
echo
echo "Fim da compressao"

echo "**********************************************"
echo "Descompressao de arquivos png"
echo "**********************************************"
./uncomppng.sh "$@"
echo
echo "ze and off decompression"
